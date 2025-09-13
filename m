Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D42C71E8335
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757780393; cv=none; b=UhBU67cnFPDqhDEZTbDYot7xssi/Ne0REiOseSI59nPFqujo7XBy2b/pg9sEzhmyCDtHWnlMgKW9L+pUdmHcMUzxzz+kHbLEgHIdybUfnT3+jWvh5JgeXXJ2vdU6e/qBrNBQm2VO/afSlsTlMkzr2vjv6SRL2VIoudA27iPnALE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757780393; c=relaxed/simple;
	bh=XYn/kR6TOIdiw7CLv2dC2zMQq7Qaix7ahR2TPRr4rrI=;
	h=To:Subject:From:Message-Id:Date; b=eBCoo/HV7MJyVWsK0jP+51Jjg6/bsVRoAI89pE0TpcpVLKUxmoPkZ22PlHZnyiV9RRcRgA+S0RNMiqgibs/2amzcHt643izlPEFjFNJjPrVlqszbs/zNEbFe2aF5wXjfA6DRbIImnymZBrTUjyjG+UFYijp/0qp2NuXiG1n/boE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DssVHNPl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DssVHNPl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88D4C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757780393;
	bh=XYn/kR6TOIdiw7CLv2dC2zMQq7Qaix7ahR2TPRr4rrI=;
	h=To:Subject:From:Date:From;
	b=DssVHNPlHxu09iBwbD0jGeLdISWzx70Uxrw/F4B+BBw9iQIM4PpzFR2UzMgbVWeua
	 Sw3Hmp1rwbQahP0rbmUHx2Q5/vCSej4OgxZIOmPoXcHP2/J3AVZ7DG0q/sIbHWuo7F
	 JOMdqiUAUFi00vwXPBrZj51jO3RijcEHhw8TFpZZqclRgXWGinCEpvTbw5N9Gi6VVZ
	 pWgIMDNWgma+XWfRalR9Vv4skpZyy+x2Mg5qN+ikAf76mof7OOPopQm5E+4ZUs4WKo
	 KNxAzRtcub15buGqoMosjC3x2bEJBT1+q+zTFDrq1Mwd4IM/ihs/s/Jm9/02tZnqKK
	 K5mJmbZBv8TRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98840CAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175778039359.9519.9020152998312996926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fc3f7d8cf5b7340d27bddeb2350240dec2a335fd058a0ad5168b95a52d3ffce
Date: Sat, 13 Sep 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757780393
