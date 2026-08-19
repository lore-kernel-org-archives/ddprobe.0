Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555AD4CA267
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787167834; cv=none; b=S1nKRJQx+f5aN0dXx1WSOv743Cjv6RayEVMJsfUwrK2y+TAPbssbPeLxJMX9vRGVVmmpjVcL/RJpKIKPOHlzNTvZofdshBaz5cibxwM+gMJjQsxnCdQa/6yaT9vXiqAd1+s2m23urJIF8qm4x0V3jyGZUbNje5ttwHWSz75fNJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787167834; c=relaxed/simple;
	bh=dxpj6Ugn5rL1Ac+ArVVLgFdd4m3g+Ii0OoZhyT9q7D0=;
	h=To:Subject:From:Message-Id:Date; b=iTujD+q3TaI0PuPp5JCScZDQ4V0YBB3jPXFKWbJXjZ2yRwTpvWZQ2jzmuF3fPD115WoK1BaUV/Y6dbS0sPfnL8keSLZQesW5cfcltfOewsODaVB9WGNF/c46GSm/WE228apG3e4kUvqJBUBOLGLeh/5tIYhRq/e224z17Mf2sck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eu42EtIT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eu42EtIT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D243CC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787167833;
	bh=dxpj6Ugn5rL1Ac+ArVVLgFdd4m3g+Ii0OoZhyT9q7D0=;
	h=To:Subject:From:Date:From;
	b=eu42EtITC9GNO5EK3gw6QHyHiU9Rwb/GM7ODCRVXhPbDWemDgkdSf7+OuuqolmGxN
	 VeUTVTHNfuW2QN4XybBrEu30m6xi3ag/z+3GKQogdMiz02Bk0p5fLz8zcrWvjcrU6u
	 6RtgSvaXXLVF/g6PWAWPiQZexalC2kwAufR7REDdIBcbEdXShu0ItgRkrvhjIwUVSB
	 NfsgmYL6cJAqmYtgNPYKWgJh1+zSHlJWd1V22w4syR2aZ2K6HPvbXXakA/Tqmqx5dH
	 edE9pNmPGiusauOSdZrskemOQEw2lF5NP8kIvrv37qbedtHGCrLAb1RkZkaUxQi9WT
	 waohMMCzEImnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA910C5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178716783369.15359.370785574438056999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dc387f09795787c114c12433d045e218527ac2171756d1847dac9ef8292d8f6
Date: Wed, 19 Aug 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787167833
