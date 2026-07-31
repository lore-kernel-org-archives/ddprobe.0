Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2ED4A23
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785471634; cv=none; b=fEpfcXImcEjow+HoNAnJQr1lcq6SVTeyukEYYONNYVaCG22cMiRERbzbtkOcJyGhWewT398fMhS23xcyROyjOYRLqEtAxoKqurvYIEjq4ukT+vgrf2l7PtbL+V0asVvl7MtjidQTqTgbB51aZW72fUjGM7muNRo8bhHI8EbCftA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785471634; c=relaxed/simple;
	bh=Q/yKHQuoVg25plfB7YiX3IUM+ie9laxVZRQZ3EbDWBE=;
	h=To:Subject:From:Message-Id:Date; b=SXNnEB7GREK3UUv231Lx5eJXyemTj+fwC/w6calXedEW3Bk34zCIj8jrC9rbg4m9c5OWTqidQiDTEoBj6gE3BYoMXfkf4jql/rK0Y7oDTLcuope6tKM99kt6COmiwycXhEr3/4bn5rsXbjmAH81B8VpiF8N7LaqLqnh9AM1wIak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gCo+5S0A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gCo+5S0A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F5CC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785471633;
	bh=Q/yKHQuoVg25plfB7YiX3IUM+ie9laxVZRQZ3EbDWBE=;
	h=To:Subject:From:Date:From;
	b=gCo+5S0Ar6w5I1FPGyKMscXpBRh5mnXQUDrCIVnPmu0xIk4LgCwmZtMJ95Po9Ooy8
	 dKNAwrBPYHdenYVSpd+FAENWLYI9QBC+TRsDqH/SQVPMgXu9CQ6Gz2LjNcR2p/FJAx
	 GFd73eHDuZ64/iK1/9BPR6R02jxP00dba/FDDvgxBTh2nCXr9fKSm3NEro294BNSVD
	 ghUlP7XQGvvHCmvAlxenNzR6NXsqQhTacGhoTMq7q8rMiRypj8fkETCuMYQGRgZ068
	 tJshAfCBBfBynBEetXDDFEdP0xyLkEGN3qV3c1Zl4UHPkPXFQ/mCPWGyByGoS9Ddif
	 0iPAFbqrJsMnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10A9C54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178547163369.10237.4889445353876064907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0e528b83425ceea258268173b95251f09d1d992bb5941e8cc458fce91578f58
Date: Fri, 31 Jul 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785471633
