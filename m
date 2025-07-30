Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA6E645
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753845594; cv=none; b=kqXuaj0pi2FzuHBkUFhHQASBRDcLUVkegSPYOxz+CJ/bIbZxHMGqFdXNWGeh51qv2D/VqTGpjkUPdWWiZDj1dPazXD8lVyEWdyhKgWaz7CNF4NBCtHnm0DI8dFu525uRZP5J2i0ahXjIKtSEt8fO+2EuXGlA7HTLGuhtECoF1yU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753845594; c=relaxed/simple;
	bh=4eKx+RUFLPxnuYCFdk1//VY0nFI+WU8kBkHU4WOry+I=;
	h=To:Subject:From:Message-Id:Date; b=WTRGHJoZzzXUraXYPk88Qnt6UMyjFaZ9KQTHQ654oujPYsWydqfz1j/tPftTOuTz/xxQ6fSGvVng6ydfr4KBcloX4efPObDXosUXCm/CFNUTN4LWJXwWy8yUNm2X8ynWIQVeUFYDVW4Ik7iAkr0YjecXESda/cJI7oeVGC/B6Tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+fpKbH8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+fpKbH8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF69AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753845593;
	bh=4eKx+RUFLPxnuYCFdk1//VY0nFI+WU8kBkHU4WOry+I=;
	h=To:Subject:From:Date:From;
	b=M+fpKbH8OBN6akVoD439sgIr5zj8YZ/rLSEafECEJPnVPmUg7OnAfw2hQStXbInUF
	 aIUxOAoe1gi5heP5EZud1NN9n3G+M1ZlAZKG9URNqgHjC0mUc66c7ENgbCr1+FK1+3
	 S3gs1U/zMsl+OJc58VpvrSTIfx+GIhv90olMhOxjQiPueiIwdNiBOL80iJ2KjFi9af
	 Hs2PWqSNQfvFlAOneUf/7l8+uwJpcKlxqf1GXAdPK0DEzvw2IUksGEUI+sIvnHcROd
	 1eBBf+zV6bM2v/neUf9Gk0UVpuBAEFdsWsRJ7KrKq/NTn/PXzT3FVJw1Q+fRztZH7r
	 wq9rOJhAVsH2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E41C87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175384559358.11708.13498330269789880145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b52e0c4a85a79b8f37bc0bdd51d60fa0bc39a07350dc38b57f147ab1d2ea865d
Date: Wed, 30 Jul 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753845593
