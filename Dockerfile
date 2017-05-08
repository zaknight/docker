FROM php:7.1-fpm

MAINTAINER "ZAKnight" <za@zatoday.com>

# Update OS
RUN apt-get update && apt-get install -y \
            libssl-dev

# Update Pecl
RUN pecl channel-update pecl.php.net

# Install Exts
RUN pecl install mongodb \
    && docker-php-ext-enable mongodb
RUN pecl install redis \
    && docker-php-ext-enable redis
RUN pecl install xdebug \
    && docker-php-ext-enable xdebug
