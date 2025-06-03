Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA831798F
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748919594; cv=none; b=IZ7dg+cAstogBnlL2jm3dUpnX7Nbwp2M0URreuhzyw4vkUvf38RBfbmXMZ7KxjwOTKY0e8vRgzEG9RMdagKZulcDdTM823X/QX9GOqHrRGYeI8ikX+kM+fKpW0yhwkpnA5GPxLGVj18iTHFCw0Emu25q77ok+tCMOQdYCwPt/QM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748919594; c=relaxed/simple;
	bh=AJ0y4MAfFMpgLPAgPM5o8LHZKgBzFGcMuoVsuVGZarY=;
	h=To:Subject:From:Message-Id:Date; b=YeJvrXx03r41NQjXaNVpP0U7hXO2RSqPmr77pGgkdR+/Tcnn77pO+mCnQck4/pPo0bZmFKzCl7RZSB8ynR33TH1h0Ljd3iJroR6rHVQEqcIs5bksO4JTzoJaL0ldAqIV2+Y0Gf3t89hK/7ZMTokh9AA04CCBG/QTkoUDAeHCVlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tbjQKB4X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tbjQKB4X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A172EC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748919593;
	bh=AJ0y4MAfFMpgLPAgPM5o8LHZKgBzFGcMuoVsuVGZarY=;
	h=To:Subject:From:Date:From;
	b=tbjQKB4X079Oo7xyLKaABoMr0rzCr0DJVEGxcbOk1eNkSWdQRocLTaI2UHi6vw097
	 G0TiIz0Ak6wqWTy17f0V44iSnYjcT+ypcAogHRxGQmK6xsEZNnQGYL4xVz8RCYY46d
	 YlkM0urpEAKAx3m/tQsCOg6yX4BL0cCh4lJeMJUvpNDwKSKcPIUU3NUVvwuFW/AJaW
	 Zw6FDFWhPcN7yNHXCQwKFm4xCA+HjjO8l2/3HPfsJiIBpAZw38rqq6E9YCTwBpT7sI
	 l1HqwmWT0m6kLHYoG0LblyFEjLc0eqk0Urpm1hKkO9T454ZyPy3s24llAqOK0UKPB4
	 BXcPXdQJy7vYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90218C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174891959358.23430.6968071506329983916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c17bddad0961ed207cc4deefce2bb55891f384bf589392f6dae399f9f389c7e7
Date: Tue, 03 Jun 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748919593
