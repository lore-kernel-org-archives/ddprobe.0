Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2104D7E110
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 15:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765638174; cv=none; b=shu8jKuR/M/RBS0ULNgBbR8Wf0K7jaEYgvA1b5zH5KjK6x54gFcNpP7GNDLvio2lGrq6BLKkt0IFbHSlZZe3TBhzaVNqaUIjC+xzsQJ7L+csj+Tee6XhuoXLFn7uNHUhgqlltut/1cKFoSwHwCu4mjB13LegNRmshwkiBoi5L0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765638174; c=relaxed/simple;
	bh=YKGf1PzTXKtkD2eX5M4ESLWGH6+2pAta8xMU0Loh+Os=;
	h=To:Subject:From:Message-Id:Date; b=mYP20xXLFmw9RDCn/O6/z6s8SYFq45CbVLEEEOxdRSbD2/IHs9MoqeA0PIX5v0Njt63p/1yuMyPHh170GBjIXLBidRmKGB+F4oR208jZalSGotfZPMgyHiEK8xA4/Ysd2s8oBnbDidybQkCbR9UBnIhaCGXmh60aDiMhiIW3Ags=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NbwHJeyD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NbwHJeyD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4D0C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 15:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765638173;
	bh=YKGf1PzTXKtkD2eX5M4ESLWGH6+2pAta8xMU0Loh+Os=;
	h=To:Subject:From:Date:From;
	b=NbwHJeyD/of+Q47yKNeqPoljKDeYv+j5UzGDtK8ZLytjBg1sbfz6qSARsUGw7j7x6
	 k+Vj/pRSszuHkDSjvfDw4+IDRgUlEUex0p+NzqnTtlLd4DrI5pb6rQ0l8x4/hPSzO7
	 JGM+UKB6CaKuBNuR3GwTN3VquyF0UEYFzFL+Pa6Rf1QdADl2I3GReE40z53Yk6nO/L
	 V7zSZLUz36J9LYZMtJujzYmHY2bgbm059vgiSJ03f1Ll4a2ZuQt76/7vQYbzscOP+4
	 SkrfzkhgMYlfx36Vb8oWfA3i9EM2ndaQX8DE17sJGKk/tDVPofc+R3gagUoackju32
	 VomqFAk4IG/gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EBED5B154
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 15:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176563817358.11632.10238324147916677219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3955ac3111b3266c3f1d579934ef4e9e72adfea7178581b3024fcd02dcec7500
Date: Sat, 13 Dec 2025 15:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765638173
