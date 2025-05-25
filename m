Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 573EE46447
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748176194; cv=none; b=fpa3rCd5m6TCN9MSmAvh70Mr+VePIHqaHmGuTvzZpwPsVCMtC0SrikO6B96jQCS8qxx5ui4uqRK9aEDf6+hg0nZOrVndHsRt/MMX15m12wBdbNky9CLCmALoh6Y80awqPiAzRczCfUN0ScJ2b53Mv1eDJVvosFAhnfCpYdQ91eA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748176194; c=relaxed/simple;
	bh=whsfkt5Iaj9V1QH+iA7DQJTSapBrP2bFUi5GQb+Z+ik=;
	h=To:Subject:From:Message-Id:Date; b=hrGGyfoxeiGvr4oyaupNMCh7fN2XMyZXfjm4QVXL2uI1BB4zgut6xOeywbWFuqsjl7/L7qsf87P2Q62tmaVzPgbYOCOlgY0wNr5t6feSHKlHC9ODehP4otFMUCqqB0deA8E53tknf6tGVoBAAnafhrBceG6VgWxpE7Dsj+OeB0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QjhFhGu9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QjhFhGu9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB866C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748176193;
	bh=whsfkt5Iaj9V1QH+iA7DQJTSapBrP2bFUi5GQb+Z+ik=;
	h=To:Subject:From:Date:From;
	b=QjhFhGu9EN5X/6eFEwzscPobrjeEnE/WUZzM/BHmfJHFQWEgJIeUEg7CtVDpk2Itt
	 yZ5M0dAisC0U75aOJz5DNqtfFUbzxI+gMyQBc34IMigdBg5ws0RnXatqNkZddHDGuT
	 MtnucBF+7Ck8keB7tXl6hg5x9LD/iLLYFaR5p/bOmYRL/SgvlYC8PIqsCPrfdV6Uez
	 1k+EvfAVzY0FSNMFvvXFaDd4+SBSDA6z2nG+fv0uctv22P/7Bia86DKANDc+OiNwQA
	 R2rQVPpUvF3Tg2IUWIEFn4TpA7x5RpRMHweLSLt3zrMYL3IU0RlHlAT30CEYGcHzjg
	 TxJ+F9uzMMMqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EB0C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174817619358.14928.2510302183035412697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55825c4bab2f591da37d960e7253cb4f8ddc9b38df77b8616aa65f6952b3460f
Date: Sun, 25 May 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748176193
