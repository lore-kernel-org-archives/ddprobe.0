Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5A77FD
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737296154; cv=none; b=QBSmq44/y5iVbATBlPgcr0qQ3iLkuarmJkGxwgqZ2sTd49s0aP/VZDGIXckSwOeGFeEvdLtVLCsveqXll7lZJPi84BSI3lG/JozLkWAQJdE4frT9NMTa4waV7600cFbS3y9m38u86Sszv4K33foa8GBdLMljSaYdcjO+JR0TUA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737296154; c=relaxed/simple;
	bh=Bp8snlzx8T2PiYT/89G5WgUc7vk2P1hnklv7QQ00KWc=;
	h=To:Subject:From:Message-Id:Date; b=mTKu3z1MjWBcZbAhLgCjo07a1nfrWagDKpHgcgtslrYr/PIejVCLMWpOI/Ezjn5YSrcY0WCJbWaDSN9JJsGVZwb6mK4XOZ2ILVpbxPZ0NP75qauFZgVUUEdU4HqOEIj0dxsYO6PHUR/PUzM5EqfQBgdu9GyQgXtUHp6C0nR9/fQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XIf46HEY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XIf46HEY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC02C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737296153;
	bh=Bp8snlzx8T2PiYT/89G5WgUc7vk2P1hnklv7QQ00KWc=;
	h=To:Subject:From:Date:From;
	b=XIf46HEYcwVWqcWpsOqKDs9hct0kyYD+VXX/gJLDuMahZkv0B1pftEJxY6kpEmo8R
	 Jo5fgHWlQ7bNRQUGaGpIWnma5F1RDb53oGnZjFfbZjmTS+PFZx9GlrpzYSzA/SWiz/
	 LTTTrL47sF42rZgvqVCw5rxkOAwHuoMAjVvkd0I/+NWMTUxQ7D/70JD1Mf2/G/XUZD
	 OWt4Tt9d0KMUkU7Jn2BQKxF6enU3Jtmt6RUIcp/NbqOT2bs0uoUxJeT3oVwNgBrVqH
	 RojShtB8znH3CQEXRw8KrunBeZCuH2Hx+6oCGp0rm7Gs9161qrzCOUAfCPKwARbagF
	 S4hq9jnAoAdqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A5F4C02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173729615358.21935.3426274569236047069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d6167aff53e54ac0fff8debffc3761616f84571cb299e28e4ee865e5dfc4eea
Date: Sun, 19 Jan 2025 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737296153
