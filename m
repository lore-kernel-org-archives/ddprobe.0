Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290E14A00
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757204394; cv=none; b=foD3RpdniGkoEV9fnctCIDLRjVfAZ+26nEpETx5rTmJU48B2ztFGCWSCiiut5ZGXOi5Zm2S81C/kAkDCmrLCj8DopVFU7Vt7qeKAVghFc3ZpH3DFnIeCtoXllXscdTYnfxvQhrNwwf2n4Dac9JF/vFTB0ogrerM6yFycz65kqr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757204394; c=relaxed/simple;
	bh=qR4UAKJlgmOjD6Nzg5yugEAE2LZXu/Wkt+NEw47amQU=;
	h=To:Subject:From:Message-Id:Date; b=Fx3rq9YSH8NL42XoFSBjDiLd0pRPA8O2MMNXyO51ALC6B8nZ8ROBLvy7fRUWNfF+3k4DZ9JVMnXzYu/1EAzWqoqTelgUp6n7gRFWsiqDsF2uLA6Ur8ibOZhVAjaDT6uQABhdkxSYKAXLLMWFGoHr7tCZ0qdJ90rU+8nNGsqjqSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I8xiRmFd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I8xiRmFd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A572FC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757204393;
	bh=qR4UAKJlgmOjD6Nzg5yugEAE2LZXu/Wkt+NEw47amQU=;
	h=To:Subject:From:Date:From;
	b=I8xiRmFdu0qTSBG0rKUj17NpM2m8kvXSJv6clbNvxrHH/iU0llc3g8SFmdQmvgMwf
	 TRlLUep8bjFMa6txAkq7iX5uSI/x9uGPqbCNSS5PdauE72ymazr5Ic2leQ9qQjdHbQ
	 JpebKlqm5KoIOGwfDnjt/fYCcsbINASGAILLBRcPD2UWv+CGGoY+LtDiDIUZmGnN2A
	 sudoRCdsRXbuHL/rbvzndlAv5+rUNuZZfxOv5ZQW7l71dK4iIFN6BRp6hnENU325Zv
	 b5Du0ex86Np52yTBpcX+Qg40Y80ZCmla7OBRnh4fRHqXTSaIg3RcDcUGRU6XlMOwtX
	 eFX5oKdzFCjyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A9CCA1002
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175720439357.27674.1482916297913409614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 611be91057e1fca122420c035445b390f0cef205f802b9df43dd0e9adc0f6a13
Date: Sun, 07 Sep 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757204393
