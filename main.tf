provider "aws" {
  region = "ap-southeast-1"
}

terraform {
  required_version = ">= 1.0"

  backend "s3" {
    bucket = "sctp-ce10-tfstate"
    key    = "torwei-3-6-snyk-scan.tfstate"
    region = "ap-southeast-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

    archive = {
      source  = "hashicorp/archive"
      version = "~> 2.0"
    }
  }
}