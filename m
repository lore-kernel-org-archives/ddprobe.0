Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE121553A3
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756054794; cv=none; b=erhNKlU14+b+pmuMd1ntgNzVOz776MMKBBLAIOj2lfRC3+K4jhXLPPV2GJ6rn70rTNaLK/BBijpKkRR8k/phiwv/AB43BqHT53pArd+YCql+gjcjAaL9Hg37CIRz+XzXsPLFB2BDyyB5l3qll2+UD47CYnayrwsM85Px8+RoNfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756054794; c=relaxed/simple;
	bh=E5YORWn6atkcYcxnlnQwA1Zq7nb4CHFjAt4fTNnKV4w=;
	h=To:Subject:From:Message-Id:Date; b=ID3/gtXO99pPQLgOFclGMhwbO5Jq15LBu170w2mKBaMqIMjUfDZXgNHVJDPYiUJU/rQftOhnLR1cwHHHDQAko08OKC1kkpg0aDoIo6QjkYB6wXlB1M8kRJMZOKbiWcsM8sxIUAMVT2oLVmPKdieqtfC6FvWudsVIS4y9SegYeCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GVPWMO9h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GVPWMO9h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95E8C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756054793;
	bh=E5YORWn6atkcYcxnlnQwA1Zq7nb4CHFjAt4fTNnKV4w=;
	h=To:Subject:From:Date:From;
	b=GVPWMO9hvfTkjImC2SxoDoys45E8EP9JGcg93KiGdH3TQyR4K7iufaFqDFyI60fYm
	 FEw2dNu/F8uEo3LiWHSKowLu4/ulE6u/xg6eKxGhr7Q+jRKwvMHU05KDWfojVtlPnr
	 otsmmb+JT2Ni3C5NzGSl9Uit3ZDReTY9vP4P0RaApkL9SQuYsHnpHH3bql2curZPI0
	 QJRf5m6+rCdZ5t8BuqQoi4iSOityC2fVmeqgVsRNbolrz8HoBOnTxLGalL66sAf2az
	 Cq0oG8CnT5OCnsv44ZheBh1JOesB0GOSodW90TGlhNK5r3b7r69UQMct09mzAGmNem
	 ZnkpFSH0IlsDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94065CA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175605479358.24322.4128565125771651178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8d1ea50325568e508861f14d28c08fbd704ec6c010b0e8258364428b58db409
Date: Sun, 24 Aug 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756054793
