resource "aws_s3_bucket" "bucket" {
  bucket = "gohl-test-bucket"
  acl    = "public-read"
  policy = file("policy.json")

  website {
    index_document = "index.html"
    error_document = "error.html"
  }
}
