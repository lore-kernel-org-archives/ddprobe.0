Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3540C3815EF
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 08:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780215874; cv=none; b=SCCDQMdh/xxbNtsspw55YA+CNPLvRssbGhAcLl/+rXUujrBfVezfo46LWphhj1DxtxNXhJyXbTkCTljLKTgywukeS5GThL/BzCyxjgUPSghaweaBgRsJo8VyhI3ZIpqj6uIPvVp64ImaRHNydbQCGZhPK8kiMOLPOvE4VYdails=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780215874; c=relaxed/simple;
	bh=OQNc5/JojQWBefXci0dpYdBoXoRUz/yqwFWTAduqS0k=;
	h=To:Subject:From:Message-Id:Date; b=FNjDNlJ7iSeAX4s1LneqCifrtf9g+ZGvXjTbSaBYwe6lCB2p7jnWxlbOekOm+qdV1gxLlaWxAJKHn0FikL94ROLUwnhlXqT+G0gxYEXKMqwfDxGTMnfSsaZWw5z0yl9+ELUxUERiLLZoNfyUku3q8aYoCYu4Dxdf/DaXF5GpNyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KDihRdev; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KDihRdev"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6B25C2BCC4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 08:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780215873;
	bh=OQNc5/JojQWBefXci0dpYdBoXoRUz/yqwFWTAduqS0k=;
	h=To:Subject:From:Date:From;
	b=KDihRdevHteStAcJVLD0fonAKPwlNLJvWCNgIECOkOHwXzdh/Pn1GNG6P6CknUu91
	 V8oqj0FB2UWBf9mWyKosmARmu4v5ephkDscGid/Q2o0+HoZg20COfQ61bnraed8sij
	 /2kQO9ZpXegcRw5g17bKwtW/QgZvl5kYTMJGkBbpqE/K5cDjmh9oQzQ9I7QjzF8Agg
	 PoGe3iw2TTAE8iemC/aJATcXQBwRpIw/RmSneY+DoCEHaD2gicMjfqbV/EnfNBVIzE
	 cP+ZAqS1nRItsPR87iHeAQjtOhYmyBifGwwlm7PeKtoGMk1uPnFAhnKPzm+tAPMF0s
	 cRkIblPrG0NdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB108CD5BD1
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 08:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178021587367.17208.892556594938284169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c349f263e475c4c43f5a89bf99fb1df0598cec6803f7203eee8eed73b055a47b
Date: Sun, 31 May 2026 08:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780215873
