Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8A0268690
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 21:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780262674; cv=none; b=Wgq8TDBfxGlnsCxtnkXAv/HeZrYj+SEKizj+26bUdo5PweJidZl0qawM9wjlEqeK8BlYJftTh2Jz4lL5SA4MikaDg4qRTl08wXvowy6crud5GpiXuwVWTQ/oz8Xlh+6y8Z/t0qwEalpJK6K0W9y2E4qNvhbxdoo1oa9Tnt/HwE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780262674; c=relaxed/simple;
	bh=MTuzImhG2wEy9ntZjuukUoB3MbFozPsE7S1VNfnqGTc=;
	h=To:Subject:From:Message-Id:Date; b=nGGanC2S4Skl+FHEqJUzLst3I+j5OGMF9CDZRogsOhGp52Fc94rlvZn6Sx1HLLsqwZSrBSQVlqlFWkJWy/QhrnWrBX4XFmCkd+RDbW9223JHML9hedQtyyaLy+aSZCgILJz2Hh57tSzDl63cN1NCMgSOqNRKhR76nGulusu9JU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oj57yLSy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oj57yLSy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9194C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 21:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780262673;
	bh=MTuzImhG2wEy9ntZjuukUoB3MbFozPsE7S1VNfnqGTc=;
	h=To:Subject:From:Date:From;
	b=Oj57yLSy+oin3L9k9r4kX+FFCJsUojvalaX4SOp2xuG5BkahWEZBM5Y1MalyTAn7Q
	 xE1U2J6rRv+GqCruLrUU/XhRuFy5WPEy1vGeUgHWQJngZz8QR+zYqaGuXczXLKblIv
	 KTpe4FwxAXtzLLunY/oUJsYsnyemNwXmF123bPaiig+7R5UiQhX25ZyfyBgn0VrgCA
	 0uAID9qHcmJ45l7B/PYMDriJuRumFhTCF66lbczBriKjWucE7obTdag+hDQeEby/fR
	 XxC3Kx2pziGKkYDEyBO8C8FKFnxtvul7Md3rq+gNTSGaMHr5zFoXfbsHsBJ/L69K+C
	 3StSurROx5EzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF23BCD6E57
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 21:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178026267370.1678.12374862251684937337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e4ba7008f9087f316c3c6e33f5df0658b2d6b4900926450dc8d18ded330c29e
Date: Sun, 31 May 2026 21:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780262673
