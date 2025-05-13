Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8E342A80
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747169994; cv=none; b=aUFj+BR8LbrCx5O4oGawm8Amd0beBCoxjFjBNR/uBws/z3wwehfuFetcV7wDycM8N45+ZvMkqDlTgx1M0QZBBAjSZldHhklKACLVvJP+Ipu60isZmD94QUOJOfUo2fAcZ6ZmnB0Uxah0QG2g6hw1X6e16f7lXFino2sLEeTXIZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747169994; c=relaxed/simple;
	bh=R2xFv3JiSZzHCAn7T2cKejyDiIPpebTyTyoQrX194sw=;
	h=To:Subject:From:Message-Id:Date; b=kZ68rcpT6yrtL/xtlAALK40xL8ytkGhWoXsaRIqwuuO6WnjwxFQGQuQufJpnnjokFfxLLGBl+FDSE3LDpSgmTTPyJ5lSUeuWxrpvAmS/O1uS/YTds9NTUEhiop4llRu3o0Uky8wJPPknTmfRrzcZgjzNpq9C71gfMF4pGbtQbK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZfRXRC6q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZfRXRC6q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04DCC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747169993;
	bh=R2xFv3JiSZzHCAn7T2cKejyDiIPpebTyTyoQrX194sw=;
	h=To:Subject:From:Date:From;
	b=ZfRXRC6qZLc0sn/7smMPj9fsjbg/obo98X1zwX3PF4zCKIurYDlQf5O6vjoZFTMQm
	 yk9ucozYdEXDl1djxT8eML3PlfOU1O6+rG4Wo/3u9CUg8d0wjzs1CE/wj6yLJRLWSD
	 Vy+uO91JtEkQxuKagv/7HWLsCmboqL36L8QoGSs6ztTS2q8laIP4DxLvJtxWLiUAmP
	 R4oD11UnfkAHSXs2N8maPSi52tHeZy4lCgQ8wwX9O1lU26Tofk7WV9QzPquZgFQf6z
	 LwPqLUvqiVp9cjFngczb+bFSm7k5MnWT7HF1xegq+MOMIDZka8Cp1oCyW5480g5LKg
	 zP7kpkr3r2oZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4F7C3ABC9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174716999357.29267.5940231761075539462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13d3b1c5b63439003a8670e6894d8dca8b7e5886aa22dcc4298d4767f2d467ec
Date: Tue, 13 May 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747169993
