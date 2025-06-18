Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED572192F9
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750286395; cv=none; b=UJN3KN7rbLgpuk9wV4RqMJ0H5x4BDo2Q308eiSpKN9+1ENPRnX7bgXmdLedN0F/ZipeF+fpPMiZvfkIgXkdRz95ZMNU/ZkF3yQ9fl/Ixqv1tuBnxnE1PpC1OELMY4fv6s5TL6zK4E5F+WXF7xahcv8KQ3KcuIu+ZRLH+Hm6OPkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750286395; c=relaxed/simple;
	bh=LAkCwpcTtILdxFCEIDRPLPzxQ7EQhw8Y/WeLWMoHyn8=;
	h=To:Subject:From:Message-Id:Date; b=WuxvmXJxUn16whKgbwoBw6GmXQtpD3N2VECqfQ2T9+XXBELr1TuD+pSC8ljT4HiZ9gCWgVXUMXM1cWTaCX1QzKUGTSIMHCXZ7g6kNrelNxHI/JMxjWm30RHNjtJZVkKZpnjksZODbvzzZCmNamDPxWAg2lGKx2rnQErqFjLZyvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XssQrsyC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XssQrsyC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E4FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750286393;
	bh=LAkCwpcTtILdxFCEIDRPLPzxQ7EQhw8Y/WeLWMoHyn8=;
	h=To:Subject:From:Date:From;
	b=XssQrsyCC6cngr2INbK/imqCuwseTiCEbO6TvKI/IMKXkBOvfD9ASK3UFr0CsFgTM
	 hTNPmV1bIn7g2tMNQMpCPiMYwg6SgKmxE58Ot4cqPhoPbomb37RkK34UJUZUk25CJ2
	 7DX0hQlIwOPh06L61pd+CHFL/xEUlrTvF7PJJHEXNiqYi4GEa2FrMqbKAooa5IrOrE
	 EtSU6/xcE0KCiOlW2U79l4vyAVA6fU83Qz6va6W3Avx3bdCAlFkLY0+onqqqiW8LWh
	 8G6p8WG5HUooPF6vdpx68LHJW4hlWNXhJ25EMHxI5zBAdCJu4jF/xPrdjnDQOSaTFU
	 OifLX2xPYbFsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90312C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175028639358.15705.207777616415741136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d6531c3cd5dbe475e6c3b568937bb64bc65ccc595836ffe2a422ff5fa5b8a16
Date: Wed, 18 Jun 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750286393
