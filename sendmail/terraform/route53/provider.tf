terraform {
  backend "s3" {
    region = "ap-northeast-1"
    profile = "tamakiii"
    bucket = "terraform.tamakiii.com"
    key = "orchestration/sendmail/route53/terraform.tfstate"
  }
}

provider "aws" {
  version = "~> 1.11"
  region = "${var.region}"
  profile = "${var.profile}"
}
