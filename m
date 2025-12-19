Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B978F5B
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766115834; cv=none; b=Bx1PdrbVNAD/1rUnlw1HcNIncUXIbQ61zthEZGLfALVHzjXEh4zOgIIVM3ZbAUPZov6VVt2eb4U+ZvZ99+uv1YUnO+sP0kasmuwaDEcHNeqGUlBNd/LFNlu1SaNWubAZ9hWw5NLyUmyrvjcxoSSeQ+YVhdMTfNTDv/ncl+tsQUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766115834; c=relaxed/simple;
	bh=coAtaNJpmqGQ6H6dPQE+1wF1mTad5SEj18LnVnNoGyQ=;
	h=To:Subject:From:Message-Id:Date; b=KmM9v0f/egjVD8XYHWrl4xqySEPj30VnTTi2bLyO5o+vcrudunsuMtXCnzb2yLgVD/yr4Lf0vDO5JwoTQAtkp/E7C+/fJmQkSUXlqsc5LZitU14iyZu4F2Olx0KahKyyRRzw86EqaQOro+Hw6/lO1Ut6rKu8FLWFX4uQXf9yXwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G1JUfbyw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G1JUfbyw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A1FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766115833;
	bh=coAtaNJpmqGQ6H6dPQE+1wF1mTad5SEj18LnVnNoGyQ=;
	h=To:Subject:From:Date:From;
	b=G1JUfbywpcOYP3ng1UOQiYKApv05jQrSSKNZh7+9DWkf47HvzTq9APcGABm9+e6sd
	 5M5Sf57ej6eJLuQ6Ved5Ql88n3YnOcfPkehXg2U8qhnhEVeOrCovmndi1Sc0ma3WBW
	 3XLDY3/2XifR4Uuo7Ab4h5hoz/uYjd1U5QvHh0BJmT/OV0aLDoLDroCpqNY6CRiKdk
	 1Zrrq2Bp0ZOR0RCKItieFY5PymOp90oAKCHbSybqHJWh4lPcUs3LT7GCNXm79M3k8s
	 i8CJPc/2d6T8yaMlMh31GyzPfs4r0YzSaW+DIqAxgYk7odOf+AosKmh0MNcALNFaiq
	 0bZEePnT/bKSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91268D74955
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176611583358.12306.7752099597793474620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4612514bfa9fa5715a6750c7f8127244bbae370e936ebd5f33a06a117db62df
Date: Fri, 19 Dec 2025 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766115833
