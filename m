Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A344A2C
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724562354; cv=none; b=GMLQsu84oM/RtYElNeFuKiQ3dXxdxhlj2yrgb5A7GSRbA7Ta26ga3Lqw0nRsdwsQ6pGxT6G+oVCrrAEYSXr07ivfhiJtTMLqqLJaAZ97aBuZZil/hG/41wvRlkfma5eYOhubHwwMh+BUw4MgekqpuMK/8BgEt/Hlrwa5rIQnieM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724562354; c=relaxed/simple;
	bh=1ab8S/Tq/D3K9AjVVodsJAmlOFDaxaAXShyP2/5EivY=;
	h=To:Subject:From:Message-Id:Date; b=UIA//BFyeAd1XFmZBiDDTBbnaTap8tPbLOFA5lKIP4vUWrYUipGhYtynH3Ln2etHLNYeR6mvuZN28CaRaUVVz/SUS0TitP2yrjoOxBgX780zNGFTIKLtuoU17Nt+zjqoXy0f/aE8VZZN6teeMK2ofbZAxHjPk+vaWxDlzTP01wQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BV5/RLSX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BV5/RLSX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0940C32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724562353;
	bh=1ab8S/Tq/D3K9AjVVodsJAmlOFDaxaAXShyP2/5EivY=;
	h=To:Subject:From:Date:From;
	b=BV5/RLSXTsNaPhIX+CdZSzSgMkmKKQuaY8fGojHsrM95jQd1pyMOH3gLUittlvDSr
	 nF8Rtuc5g1+8fqzcADqVEwIzIqV9d7gqfv3D8jBPPnmvahL8knC38c4YlLu/FYMJEJ
	 rYxh9nPEFgoO4nEov3l7kI6BFvP/r5KqMRBvnj3rSmrLF7+TVybHw9rMVqeltVlJqG
	 ENt8wavzeiBoc9hotkbkhYN8ruTbo0o/b+Lmot79iYueLB0+eSrmJFDKLbHT9qntjb
	 wIsjErVOisD7Ev0P+wVI4VUw6N1/1bqCxW8bsH5r2l0MMmWJTEeES2AzEZV6nYwA9L
	 3XikmFWG2G4+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B4E7C5320E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172456235360.4596.16823057306382662475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cee65cbf685aa865ef29d7a8f0c0df12c7492166f30422dce6a48feb52f232c0
Date: Sun, 25 Aug 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724562353
