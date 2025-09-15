Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2F62566
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757978394; cv=none; b=tTsCSJ4Dkd2T0LT3ABtj3a0nCtLXB18k9ndSOTzZg2j2lH86FfXdt0xvE+hG/kxedtT9ThuWn/YuvCyu44Tq/9z0aFNFKGMjjOAFYXorpkwNLhsRyKxj+/bfNq7InNks9WfbxHHVLcGmWRgwHP7LP6Ab8lvVXql8lrOfPxYdre4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757978394; c=relaxed/simple;
	bh=e3hi7l5ENE0/LsjZvXKk5ehajAYwlAx/vZzjCDnVWU0=;
	h=To:Subject:From:Message-Id:Date; b=PbI6j2vYkOjsoTf8/o7dIWsDbzLIuL1ZToV6bMhZkA8TQQSSao+57pdsYmuW++I/LEC2rKlTOLDODMC3ikaqNMV1FlcOz5o5GQnoVHrvQoQfkDy6Yf1XUtHX0KUyH/gnr+2AP4B0IVaJdi8NxOJMyYZSa/yy0Z6zWoHFFgtPMLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/6Q3rHD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/6Q3rHD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02FCC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757978393;
	bh=e3hi7l5ENE0/LsjZvXKk5ehajAYwlAx/vZzjCDnVWU0=;
	h=To:Subject:From:Date:From;
	b=t/6Q3rHDdoXdfLaSk3mWbJDd8naiZvlfh1PjwX7gRlronnpSL7FTsGCpOUw4d+6+D
	 Zu9Gsg6aCdJNcZNNEIMSPJfRjQ6shpsFt38RAl6ShuF/QniTsNkemYJnFokGNZa607
	 RmqMZ3UND1egF48UjM6kWSwtxqrl5DwRLiAIfjjwNlIxXUtwneeJyfk6ArYiwdApzM
	 PErpwGkiyBHC8/QGAou5uB3VV7T0gtJmaJxhfQo6qz3hHu0ewysdTO3HuBw5KDGppF
	 TW+HhpWp8s7Xlgjl8JWnzy6knfAOMMFHKazV6YjioxMZqSLu21DRKQDW6HWdY/Gyz/
	 EV40ZWJWlQYhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9009CCAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175797839358.17880.10901153293751130232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5ebc5a3350dc69de98df58a0eb83b8b279d304c0c2f0c7440ac00cf9187295e
Date: Mon, 15 Sep 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757978393
