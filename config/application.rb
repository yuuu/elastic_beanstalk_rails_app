require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module ElasticBeanstalkRailsApp
  class Application < Rails::Application
    config.load_defaults 6.0
    config.i18n.default_locale = :ja
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
    config.i18n.available_locales = [:en, :ja]
    config.time_zone = "Tokyo"
  end
end
