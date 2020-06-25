FROM composer:1.10

LABEL version="1.0.0"
LABEL repository="https://github.com/szymonbdeligo/action-phpunit"
LABEL maintainer="Szymon Borowski <szymonb@deligo.pl>"

RUN composer global require --no-progress phpunit/phpunit ^8
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]