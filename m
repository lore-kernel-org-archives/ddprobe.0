Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 627EC6125
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 13:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717854443; cv=none; b=siW+xEwoV4S6SjqHDbVrPYm1bDHX2w4Z5YHMEazmatfTF4CqxIApctEESK0c4nd31x9GOYIfwMoZED0EAwgt4BGxKmR3UaPEF1N7RwBdFGeoURE/CJJf0+kKN933pkgY1shBjDouwnR4cfH3izL4Vsk753UMNWqjY6YvFoihoEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717854443; c=relaxed/simple;
	bh=egZcairgnqw9Gn2z/N8tRLxPD5I1p9NB1uVTAEBpa5I=;
	h=To:Subject:From:Message-Id:Date; b=o3+kdZpehMZ2g5SllYrRPexR8HnboAs8r09gPb9vpnv08d9Br94IDZkS3/zhG2NCCH/PMDG7SEf8AYLDcAbzJ8xJBOb+Nk+URghmxRgQdIGWzO+H5xY16nQdX4xns1TPWt6cBF0ljo93TFBPs+anz2FPP2tNjkSvFNL2EE6rERQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJci4luC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJci4luC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECFB1C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 13:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717854443;
	bh=egZcairgnqw9Gn2z/N8tRLxPD5I1p9NB1uVTAEBpa5I=;
	h=To:Subject:From:Date:From;
	b=SJci4luCI2HV0H2eFbYHiwQZVtwuEXomr9LZ6T0cI+uH5DwdeKIQdzIOvNlJoOQoU
	 mV1qJl/Rdz4a9EooArzGL9RJlV5qUDLfXojx9zehDNELlEkpCTP4bT9zzOyahK/hHJ
	 9YOyeEHd+oKYy6R0H56NLYsjXDj2OJWClnfI8YlfSvhCdO7XyHH+lZS9vf3IGDw1yq
	 UDXSLz9gr8vnNzvC62ld/Z6m/1ZlGDERpJZSNTGrr/gfafvuGAnOon/ZE5E8z1/XMd
	 3bxnPZ1wC9cwREpZwxdyziJp3GfBcpPhlNIdh7KYNTEI9hbM/UcAXB6t9c/Y95l2aX
	 k7/Z49WDFduYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5E7DC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 13:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171785444280.32311.7351562501962499205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec8c598a7bf0eabbc46c8183dd31cc7db87ac69e6968972c4a46c27b70c30e02
Date: Sat, 08 Jun 2024 13:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717854442
