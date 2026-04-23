Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E4F28C2A1
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 01:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776906454; cv=none; b=NjMIPpS1MRAja5uY/3DOGINtpNdSbxBWe1v/38JPRzcF5XdAMebEdTMkEswpeurKGKgIC66hBIESL/1PwHLWxasvFcDmaKnP9/SBx9zSZhG73VDg13d+zyg7nyteHpfc1TxaWd/RK9dotuDEGjyvOtC2zVHYgP1AydMf0FiV+tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776906454; c=relaxed/simple;
	bh=193F6jlCZTBt8NpUajR418uebfT/qv619HcLJZr9Lcc=;
	h=To:Subject:From:Message-Id:Date; b=Va8dVsyjG9JvXzVlaVQrebXyh0LMyWAk8y7TUeLSwilF+RjeCI1ub2hgqrURFKwkZTkZyfKyGw0wFeyRcjafKfYK4J1BOMbK6KcCfaz4WrOdFOUFtGuBGkoSmpPcDUofWv1Leap0T2bXDY1UCNFROvwwkNPZoqkGcoBRdWe6u5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zbyh7sWL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zbyh7sWL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE25DC19425
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 01:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776906453;
	bh=193F6jlCZTBt8NpUajR418uebfT/qv619HcLJZr9Lcc=;
	h=To:Subject:From:Date:From;
	b=Zbyh7sWLR9OONnzT9hVCPTmXIswHOu8SW4VHprXLTAY1NkUQx+gvhFz4aB/aIoGV3
	 Wf3sxS1MynhwJprd0flJ4RYwZirKiZAfnvTsk/4NB65CmSasbVRCwH2vFlFFAuoyO4
	 WNX03jXJnvKXTOX+8djUw4PloKIAWT/f5fNnTJw4IZC/5cCnc1Q1PNI/HIJnty9xcg
	 Xdinr3pcFNeVYvVbZLeaU7R/aW6XfO1HE8WGtnuPMIOgVBC1R0336d5cAS/To4wKts
	 emgrJHB6UBPYge8MChfEt0PGylWGwzrrrpelDScfyTS5sU9hho1GJUk4pYHd2sQTjh
	 yTOX5LclN1RvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3E9FAD3E1
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 01:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177690645368.20810.2107091641863249241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6cbe5052d8205bb1412193ddd9ed59b4469594c85938f0fbf7317c3b2f53f43
Date: Thu, 23 Apr 2026 01:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776906453
