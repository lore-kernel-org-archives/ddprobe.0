Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBC931326A
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 21:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781213794; cv=none; b=BJkeRLlSYhDctoOSGuRyWfjhrSr7ENv+znM/HUu0lc3p7BGtn0+WLhGFG3qO/Sp/hdaHK6mBcLITYfnCTAbSARLmksXhU4FSmANCe5GbGZYxCTIZGEpmlH1tfqf+TgPopoliGum/GX4v8ADj5QDSIu0ZRUcFVy8f+clzPMBA8+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781213794; c=relaxed/simple;
	bh=bwsdHqwtI3BYX17Hhv35sHdqQzyEKerEfmL+ac3duXM=;
	h=To:Subject:From:Message-Id:Date; b=Wv9aZMORKjZQ7IkmKMVA0FMmLOBnx70k/uKDxMP75Jf++qGChhHdtBGIdvVpiNeP4Ddeoei3mI+PKgyyMNdfubYnx0A36+LHW7BKIVOvegLh7ZnA/xv+LTdIL46fM67oFSGo/JTx2AmbK/WDIRZI1Jk6UbbG2qk5FDprpcWuV1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KGIKKYRl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KGIKKYRl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB01CC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 21:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781213793;
	bh=bwsdHqwtI3BYX17Hhv35sHdqQzyEKerEfmL+ac3duXM=;
	h=To:Subject:From:Date:From;
	b=KGIKKYRlaxW5cp25x/9DwXSBoPMVB7F0e96Lx+ck+AJBXdfyCDDyDM1+dSVLvBnHh
	 ooMNyqmbOuPMw3ZEBp7/Ko8s/Tl+pXhp/HRWNdxHBH3WkXxGTUXLP4gvlKBHNOcOI1
	 0yFU2657OeYF5jAS1IXskZhOIFJfT0wvyi2RfsfUd9oyPB/Mnq5nkisQ/QQ5nC5dZt
	 2InBNHiziGm2BltF/6zrS+9WGuwnIkHU9AY3927iDI6Y/ZaE2F/UIslIFvjmCd46L3
	 h5n28ya9IV1D+yVfZowt2wShORCzYs/OxBxbyXohyzehDCTBIy/KLOEBU5Lh9RQBRq
	 zauu68Q+605yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B15D5CD8C9D
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 21:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178121379369.27374.116172999617054877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1de6878457d2c4cc606bc9986604a07ef91c4cd9426858424c33fe3f9cd88402
Date: Thu, 11 Jun 2026 21:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781213793
