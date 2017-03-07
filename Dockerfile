FROM ruby:2.3
MAINTAINER Liam Galvin <liam.galvin@switchconcepts.com>

RUN apt-get update \
	&& apt-get install -y python-setuptools rpm cpio \
	&& rm -rf /var/lib/apt/lists/*

RUN gem install fpm
