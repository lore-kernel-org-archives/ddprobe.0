Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF602F8E88
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 20:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778444434; cv=none; b=q1o3IzoJZ8YeaXLG0GeifNkjwjJDxQ50ZR3Rhgug1oOCO92P0qKKutjhH8IH4aD4vBT1ZF5MRZ6oWF6DWeAZ3WgrniG1hsF5W7TEYWbUXR/E+SVnYBYvXfg5d38ay6RkHLwUhl0wr6l6FkIZ8o2H4H+xag+Oh+FX+ycN0WD3vDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778444434; c=relaxed/simple;
	bh=fc/VRq8MvymbQZugw2WYWXzic7CUVBeXph4v/VDEfkE=;
	h=To:Subject:From:Message-Id:Date; b=RMOmLx9ua9A/gqPKItR4HNdrtusGW6FXpNgxcsHeB2EpMm9fq78z5cumtRsxvje4V25/uWK05KZwSWCJWOZaj9YrdWycXbupMJbBFq0vN9oMkA6Aj/grv6dXGb08tjxb3LPp3T0ygGAcChmEdjvzWPep7Smv//7AZG/Te0MQQcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BuoxLdlZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BuoxLdlZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD097C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778444433;
	bh=fc/VRq8MvymbQZugw2WYWXzic7CUVBeXph4v/VDEfkE=;
	h=To:Subject:From:Date:From;
	b=BuoxLdlZ1h8kcpCbHLwxiP4rZtAbrfvt3E3GEkn/aYS7hWAGWhwqa3dPAgoQ3DG11
	 hQBE0zlw3B/aRRW5BB60S4WNavzwGZOgaA4Fe5O4tBDYDnPxXJYAmTbq7STutzU+V0
	 WTenKti38KR0Zzg7nC3STiUTVZLFV4pEKO9DyNNxSL/G/2GsId3/d1Tb6AN+ie64LZ
	 9VV4HGb+GL5GoE4RMog+U03b4duNAfqeyHdYoOsMqUDyQdTZiDmCKq6+ICEE2A/Em5
	 OmUfSE0kgOfXHJyg9c1EZdZQqTXQRidGzmsXWC6yjdkiZQ0fiOtkUGvTP2oyhtUd1Z
	 dslf1bsSVrU1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CD1CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177844443368.6151.13418096223284065421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b106a67b9241eace3b19af810142a389b2b92d22ede233d4f61ace679f0a123
Date: Sun, 10 May 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778444433
