Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D0C323E
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754347794; cv=none; b=frorMxfTSy23sS5xfXDzItHMNl58z9sRov3cwZmY3DXrlnXCeVrpt4OYHvQzuoasSl2UhuFCjteGoop4mRcGmXLsjtBphyYobghvSp/i0gCe4kyZ6Y44YrgqBRBABIk6cHquMd6mToaYgCim2I9ltjdTiIphE61RMjV2cIUb/9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754347794; c=relaxed/simple;
	bh=hBKJrLgSzMs2rjPcXIyeaD/gKe5K7BjyMyPWjgpez+0=;
	h=To:Subject:From:Message-Id:Date; b=XqcaUf10MnVxAkn6iVwUf77X0gS0+TeOMA3bfV/d5Bdsm41Gawh6QNbYmUaffKoh9nqZq2GxH52idt4mkauFBakK2tcYDTgSEl6zqvepNA3bp+nVK6+eReuggICIVunDodrfY9NcKHRlXQdqC5FPx4uKhV5hVKLAnEVOUbnlqyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fSWPmX+e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fSWPmX+e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8143C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754347793;
	bh=hBKJrLgSzMs2rjPcXIyeaD/gKe5K7BjyMyPWjgpez+0=;
	h=To:Subject:From:Date:From;
	b=fSWPmX+entmRJ7q0pdsS3qtUrNBJzPO2v7oujPq++zw2Lq+AnZlesEBU5Fn5sXGKq
	 yju5QAqAyhu3/mqH+dwOG8TpMf0OpvfkO/tPO3WUKgEmrrzYa4VEqrGiBW+/THb90F
	 sWwl4JvvGGGm/2bNOPFWVfUYMmnMoWOlHB2/MkDBsf3fBdgYDF4Cmvsqgcn1qzN54J
	 dDL+6Ta5YaYFTODl3q/cApuRyah1Nz4preepjqIlsa6AfC5SRSTBA4SUbQ/zkkxeAT
	 iu570ChbaRTCS340V8pP382Wd0ruiiqzJLGmWb6mkv4viqE24M8IaYHC6R4sr1qdVJ
	 IYfbshjYPesCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990C8C87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175434779359.21201.2589747673394998159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71d81feef2295a5a74f515f98df0b1c51b5a9c0fe58edd083c77e3e4f6bfe042
Date: Mon, 04 Aug 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754347793
