Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCA222DECDE
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762982393; cv=none; b=nHe6lMfoLsWOgqnaXpwOew38jnnyeZMxft/kOZrRtLJEd8p+J1Zqg4gs3wiihlZHdFHaUyIjEk0V4vrBMUq6ysXKGd+C/fo8WVGr7cC5MbwA9Ze1/ncInEtihfO5HpnQDAWN/hpQafPEg07SMkh7NEto7bcBhPN8RLVLjJnyqdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762982393; c=relaxed/simple;
	bh=ty9SUdBWGN0yd2DaLg7eeCjjSy6LC44tZfUJLgNe2Sk=;
	h=To:Subject:From:Message-Id:Date; b=ulCfMQZHjpUgWZcFCb9jSgIP7URFGG3/s9YeWICOO1Yl4L2D5Hmb5gDbQE6QxGnsRG/5l9l8s+YvT5l5gzQ1VopF1PcIjpyszt/spzEHy6o50YvzXmeFihAhhCQNSuzWr9tTo5BcSE+WUCygEdBjFZtpOumKiBkWuJN0xxlmOX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JmcKdBQK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JmcKdBQK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CFEC113D0
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762982393;
	bh=ty9SUdBWGN0yd2DaLg7eeCjjSy6LC44tZfUJLgNe2Sk=;
	h=To:Subject:From:Date:From;
	b=JmcKdBQKt7OVkdcQe18Y17jGGRHqZdiACq+IhZJkLI0wPZY7ApMskX+hdDjkV3t3Q
	 jcm+ID9xnSWU6zTOAEScoMLnKGqPs8kQWNCq2CIWy8Clp1JpLDtjm4ciTweMH0WYhs
	 3BdkZQ3ykozc/NiRBTw5VYyv4KoyWUwKy1sBzA4Urx7wl6E+e7t9JLnf3swxcKHoVk
	 E9A310vLgtKEYYoZxVM66DbqaUjIhITrnNtzOmRl6Sz+fNuVn126GQ5j7R1SNQhFOW
	 yslLkt2M4FS2CC7uBtwwtX9z+u7z5z7owE38AZzHsUIC/4H2G7hgz6G2B67PBoi8md
	 zm0H1RJFVOCAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C8DCD4847
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176298239359.17986.12126032527993611415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56031ffa81e7755bb71b5c7123def724f9dd31d56aed3b85205ce5e6a660dab6
Date: Wed, 12 Nov 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762982393
