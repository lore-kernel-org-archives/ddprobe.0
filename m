Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC8577113
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725502554; cv=none; b=YWqznqTHv3CeYBzhgOtoGEyCcz6w8t0Q0dLk5wynGDORRAFPwrQHHb6QsHkJHaVcRX1xetlCetLz9rjRNB6O37Mz43cP+Q+Zt6dkNeMAUnVTgnt4zkFM7QZv67v/eCHy9GRewoBMHC2nUkDY2Mg6b9ywd4HyfKVWKJo/7nmQE4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725502554; c=relaxed/simple;
	bh=sGtMw4BhmeqixfNUlRL3mUySmD/6kzKQwtPbAk1UVz0=;
	h=To:Subject:From:Message-Id:Date; b=gnYDiCMLi1mCPa4/xrJY2uy5tUkumYPCARtBuzXEDlqAWFY41eX698+RD6CjRF24j65HcSWrQYInYJ9pAsP0lXUZKAVCzCEqmtgpAH0XeFamI3skFR3K7TlmCaV8H0aeAb/pcn/8rg5ZkIxOT2RKkWGmwjAUa/9/ZKoq9k0IdoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pjaRPQgP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pjaRPQgP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3497C4CEC2
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725502553;
	bh=sGtMw4BhmeqixfNUlRL3mUySmD/6kzKQwtPbAk1UVz0=;
	h=To:Subject:From:Date:From;
	b=pjaRPQgPRcjnVL8KtY2S+AZ0jhvYnmRDN2t1XuUWOkxu+GbpZZwEnqDVbF06xYhKf
	 tY7IM7MN72QqThoKui1XhvMpeYmFK0voonbUAebULlnHEKFen2hDjqZ5mVz8x2QcUA
	 eZ0x3uJdC3AmnjeEpJE7pDVSp8lIvIHrqCGRvpqmTNVmWsoZr5kF6f1EWLFV7lgtv4
	 p1QVmtCr+2Z/pcKYM1wN2A96LRx2eeeRxDRHA35O0W8TNOrMyLNKicMU5N8qbLehkF
	 t37z//uACaLNVZMnfOzDh/NFpglCUIuAfE/9t7H9c/uz1MnHWizSUeCLKic/BwEUXY
	 lt4Cmez6iy57w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B368CD4F4E
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172550255360.7157.516847389136141754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb77585c82b1f30ae086e30ae9902ab014f8192d4126d1f864a3b5eea59fec3a
Date: Thu, 05 Sep 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725502553
