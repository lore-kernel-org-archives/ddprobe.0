Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338A1189513
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749487794; cv=none; b=UguqMoKp7a3nMNvAsNvsfuSsgGiUTla2yjEIpXMctxq8kDIJq3x4SqkK86DvmeoG9k3kX6CrnMHplkYuC/R1WmPFzHEqcQiD3s1p0OhDEaiurBJe2BFCrA5GiPzDUndkHSL5ubTEzoEaSBuIVj+YuGh+QgqOvid8WHGFu4SAiD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749487794; c=relaxed/simple;
	bh=iNuv8JXpIrUWYyvZSmoCALp7gUnuZOuexAlVLbZXupg=;
	h=To:Subject:From:Message-Id:Date; b=NjLr+cNQgwCycR7zBl8ORw3eiKqM7c77n5IGtVLOWwb4XiKeoi7mUJFL/zDdlZvBHtHFnd0xrCqStThF5zrq8geBneWXrxwXXJplqD6dzY6SEI81iXJJPpC/FjEUg+T9o34qut5WWH2Ew+EBdty9Zk4hzC6izGDjpYVDFDSbjSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ONjhnTYM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ONjhnTYM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2988C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749487793;
	bh=iNuv8JXpIrUWYyvZSmoCALp7gUnuZOuexAlVLbZXupg=;
	h=To:Subject:From:Date:From;
	b=ONjhnTYMuUOk8WG+NQi8Ix/W3M99A4WOKEw2wBH94thLvWQMsqSBLrPV1DqIwVbjD
	 ZyRbgAgsxPb1DvwpLQuffBpdKjpkbmr8fWFgSfj3dcjZMP0AHgCKHHxTqjWFp504LO
	 vn12Vy3fu/mo4CxD3f+ZcFJoVlSGNEkP23dKCFglxG7wwNjvVdtYQQR15aZtabEOBe
	 JLwYbGRVL6sbAjwAholgeATYBs0/yYDTwpo8lyLnPN5+dKHtQXh9f9K5Q3kUodf/Tn
	 176Y9mNiilYAF9voYzR/0Tfnb8MUBFPcm9vNjmgZFR9VshQ2uPhylp0vhEflcrajal
	 Q3pPMDgXkMi8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF65C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174948779357.472.7202791907271858704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06a78602be87bcf6bae5c67d7d02c0e486c7bc6e41e96cebc1a4b1a6b3b0400d
Date: Mon, 09 Jun 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749487793
