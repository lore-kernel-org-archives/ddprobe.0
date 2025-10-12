Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2696418B0F
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760239194; cv=none; b=IB7u566KbDEXlYkKohtWELa+xAiK5FFb8kgT6C6DO+EuTDhIAFdIqhE0AEZ4+C6x3daNr6Z0MYxJTK99q2u416jbCPEecMTVmx1kx09foO/QLIPM2EvNaofiZbmLRUFShWoM+q8VZfKWp9kiiXBLPn4/jVmpaHRUYLMBDGCcroE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760239194; c=relaxed/simple;
	bh=fqlQ9BBDHymS3qFabEno2sCCorGySS+XBY6OChps16o=;
	h=To:Subject:From:Message-Id:Date; b=UP5Xi2uq4G0iu24r7LU+fcaDDRV/oNgWijnsMCBrh+znNyKR658Gt1/vUbaEhNkyQABSCRp+QxumK2CDArVibu2nOkKiH0GuA9lcCFv2PzIFt7w/9/n9WhZm5lJ8gsQ5sqQT932Rav1OFNrvGuHA1rUWJqF9Feyy16MsqdOXVCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CHMuTL27; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHMuTL27"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6660C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760239193;
	bh=fqlQ9BBDHymS3qFabEno2sCCorGySS+XBY6OChps16o=;
	h=To:Subject:From:Date:From;
	b=CHMuTL27sJyleLXZTNGvsOH0FrJbb1LrTZe2ybD2SE6rVYYmIq2Ctxf2ysxEkZ8Bz
	 rz4ss0Of2vAa9ohhgqRN96ll/v5tXPjjMV8yTqg8FCjvAuHPWEh07gsuV3wrIdcEtN
	 LOzees+OIpFgUSyIsjXT3+N7RB7i+GT/YmIxH5WtcCzpGQNXYLMwNKc/ExPbO2xYaF
	 JtsAPMj9ft08Vgbm+ZbtGipa/nHv04P0khGdRpxh6BYsQqpYL5gGqefnEmWUXGRq4M
	 Qi7thzuD2PmRM+n9nojtX054EK3+kBsljMhI1R3SUP8XjV8NrduMjfl5gUHeic6PLF
	 9au+IRq7/6WDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9455ACCA476
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176023919357.15447.3194027424836581500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3baffbbdf081d4d55d4c3cc3df49c75d2e2bc94264ac318f13e3e70d21a7d226
Date: Sun, 12 Oct 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760239193
