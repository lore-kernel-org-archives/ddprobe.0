Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19258305E0B
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755017394; cv=none; b=llNUnJi/FniWvmiiRlaIZnYMrcwJtHDvSW8jZPmB2JFxpPEK8XB6JhlvSDdWhvaJS8Y2Jn3IPGAnzyQ5XeBg5ZZEdlxiNVdc8hqF/1qaMnp+Ro3bcnI6jKRxFi+Kc9t3zyYsqHua6J6gi0CqM2D1+yj8DAyLYlYjjsru+TVRMc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755017394; c=relaxed/simple;
	bh=EUIQiPhaVBskZXPRa3gpKREqupanFF3il4O1mVlL0t4=;
	h=To:Subject:From:Message-Id:Date; b=rZ5KJYiSp5vBIy6XJAmodHU4OOQECqB1bD08tGVDwiQJ1XlGT4Bdu0xRwQQnlaq+LcQi+XdpIejRQjdYqKEHOp5SZZyN6jXdiOo0R0oCOPubs8bKCv158VdPlnhJD9uuFHCNEF58KIUqG3jSyQybJD5l4UUya/KJ2SC+z3u22bA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gvJbAj7s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gvJbAj7s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A228DC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755017393;
	bh=EUIQiPhaVBskZXPRa3gpKREqupanFF3il4O1mVlL0t4=;
	h=To:Subject:From:Date:From;
	b=gvJbAj7sIaiWKgiPuyruwN2erG/r14xX6uwrPns+Tw7XOUktYtaEuZaVp7tsXdEQ4
	 rhqiynql96Vyq33PS3tYJmy3AFFvLmpz+lx6Be0gFPf8I8XLHue8lYFCwr8QM9XGUU
	 FtXHkc2PU9PU4lJAX2nfMkzmbLhfQlgIe6lZk4DGlQox95rNEZR1mODOOMcNSwpMJ+
	 yVfLOB6+O08qSkrCmDL2ntZ4m6ZnaqIK8UsK4ELDBgJJU+lt5UAJ+J0O6QLU12+VpK
	 /3KenHz1ChTK2yTVqTdS77T6qghCPQmnnvUvFKU4Yau69ehBIxWO58iMf5D/2XCOY4
	 zZhGUVaFfORVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9005EC87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175501739358.11533.13318620639327360585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c4b996b28bf39de5c6af1b7d7650323dcdfb3e6ecc6b85ae8b39ea9b9707267
Date: Tue, 12 Aug 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755017393
