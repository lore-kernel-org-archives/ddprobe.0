Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1BF6FB0
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736713554; cv=none; b=iLEP/5iOW1nCVFHDdoF4gL4vepv7ZdwiqQFOQuL8z56UaocINJZpAM+RsWr4OVOk7g6PgzDvc5exumZ9zoqFMHG7FGh453qx5hoglG7rPrxlAKww/VrxOohtpAJm48+UJu/RcxQWOLAk5Q2anMZbVjNmE3e2G7HfVbjtHMDSGQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736713554; c=relaxed/simple;
	bh=lVFxhaq02kAs0SLZM5XXLW1B7rNkGSwJt20UVj7SQXI=;
	h=To:Subject:From:Message-Id:Date; b=Bvee2oMfQmrlZHTJ3/SGl2pavSVDkh+RXlDUzNn9eOat/qFeL3N3b5G5k0thxOFyQNPh6oCKexTMo3jnXKi1vKYo5t229k87crA4yKJL5RCDE5qfiAZ8IByy4wkocE8pCERUhBUks4Z9Rp/s6k45c9KaBQuQABND7A8hFnAVVgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b8toVsdn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b8toVsdn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9813C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736713553;
	bh=lVFxhaq02kAs0SLZM5XXLW1B7rNkGSwJt20UVj7SQXI=;
	h=To:Subject:From:Date:From;
	b=b8toVsdnc6xdJSYhRPQsrD7o0bIRhxsiFa6AbceY+VOD31MxXzkRvmEB6pvlVE9RV
	 Cf0f7zfO1cSYaXvXydFBq2DyYXnc/zQ9ix5t6PpqWwBQ4EJ484UzrvfoqcpzVpVG8m
	 WxgvKF9000iaX6CQAkHfkYVTz00d+bBRfliLFNATLEvFErh1eD/4qfWFxlYWCEeovD
	 VIkKS6HmHVd9dz3AwAzOFCQj5T9a4V6OGsuhHNy0ftQDwjVwS4FMXo3BtzuDhTpgyA
	 yGdgu53VgSPh6yCffeGGNIzpqoDVp7jD1aRSzBpIcXnln0NkaYglOaARtrVvfRovtf
	 GIY4vSozOW/mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EAFE77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173671355357.25193.5886154587668906985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3799952ff8b299bbabc3160649d406c31d0e2f85ac8f03476a0d059425565d8e
Date: Sun, 12 Jan 2025 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736713553
