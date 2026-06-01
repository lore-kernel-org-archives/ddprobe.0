Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FE4331A57
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 07:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780298074; cv=none; b=TF9A9eeXAsLIr97gvSdR9P+mm4SkvKCuEVEbftE8RiKqGWxdeeKFjRBD6z/V/Y/UvnuhahFrxiIBnryb7d32K+rxjMbMQ7YYFFthf5xl45rpv6KATrdydztKI3EAQaG9r3sO1BG5kThem2aJ/NP6jhT5E9LnlrH/BTpGvOI5+zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780298074; c=relaxed/simple;
	bh=+8aH4QeOqKSGFNQ55tbWUBD2qoZIdtVi6fEMmjls5cs=;
	h=To:Subject:From:Message-Id:Date; b=Z83jgoSCNBprTx2iEOPchyKQy/XQf2ItIyAPepxtWhBdmJOMMFj9Obff2LysSAE2cpLd6LI7cDU7eM4F7uKfZ5p7YFBa6BeEys221vxl/XeipuCJq8T6zT8P7SZLltXSEbOeaRRXvAZpse5GiTnYRFbNVSnH12YT9wgnVcuWBSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q/Dub0TS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q/Dub0TS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B04ECC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 07:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780298073;
	bh=+8aH4QeOqKSGFNQ55tbWUBD2qoZIdtVi6fEMmjls5cs=;
	h=To:Subject:From:Date:From;
	b=q/Dub0TS24JaDfjBZ5QIVDo9+Udz038eDbzNwT/xHR2J9FhZaCeIZ4WBTXO35npVD
	 7va+NuLDiRz4Bu7PSEoiW5t/uexJyJck/RPDNYYfQ+JeS2ODJM57ZeTrVIJoA9S+jT
	 5ypJGWF6soQShiL1Tb4K/cjl2aitywcyBqD0P3SXlAOStkkC8yer6uITwHCt0bBLue
	 beWrjC5PrEqk55EXAtvq20IELrQK92GizeV31N5SVl4KO7TcxbpzIg95JgBGsrCWVp
	 vQrBBjiyHpkgG2+bvV7yburOSQLlY33ZkftS0CMc9sv3zzuqFn1XtvLPnwRBthjdbU
	 o2DW95oZ1/kJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95D3CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 07:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178029807368.19440.13727732576483401095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6d974e505a81d382ae5750cfb03e59ba3cc6aa329cf0916564c3449052c1ab2
Date: Mon, 01 Jun 2026 07:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780298073
