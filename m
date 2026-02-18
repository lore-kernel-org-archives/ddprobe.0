Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3042A28641F
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771451694; cv=none; b=QRPCzX0DZKh2RrAtnkn3oRdEmEZykaf3bhqpLcgrNCzsGH5L+wgPwGsaJVuQFSxFJ5EViuqEUd0n1KHBP48axnqxc2RTpT3TA24HvPoOXpkOn7dxoeUo9fFpSIzVGz/G2zq7GUZ+W6gXvp3klggut2Z6k5rKvN0C8Em/+I0qgOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771451694; c=relaxed/simple;
	bh=hJTiAwEYKW9Z757COCJgOuOonPtXptcSBqoXsThJFEM=;
	h=To:Subject:From:Message-Id:Date; b=g56NPgt1NHYXDJ21X+P1cn5WRqklcubYuV2nREw8tPgThBgIEzwgGs29MHLJu9N/CFXCePRBkoKHv8pn/GvGSw5Xkmc7hiWm0+tWJeTv+ZO9sdzT2R3m0bvHFKEIkhKD+o5fqE/SCvHGW/mLjQ4gRO2zqwo/HzL710KZZJ1E/kE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WLEwha71; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WLEwha71"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE30C116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771451693;
	bh=hJTiAwEYKW9Z757COCJgOuOonPtXptcSBqoXsThJFEM=;
	h=To:Subject:From:Date:From;
	b=WLEwha71uHfBEw5ux4t51OiV55oR4YzRJ7VsX+oPV8lfPbCewjRHOU/pABFGQ/HVx
	 VrVW+s05LjM5JNDsYlrJ3SgIsvl3xn2/1IUHGidRlBsT8gaX5vb0T3KcUZ6KaKWQRE
	 0LBB4zp+JhQECvomiPfwia6bE1nMKgzYDzbUmcZ/0m7BOcc6RT022M3ZSGr0uCk0rM
	 JKK26BTnbWJyDH3lHOvcWp17TandX7ywfrvMcZxPEN7dnSvsYV4wgbXkk+UH/bDi2r
	 M+ZxYuwRPtPgdaLUW0ubVIyTIQ4ArkisJdWLOPf/Kf86HGR4im8ZO8T+Ask5nVjBMk
	 h7e4z+02SVscA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E485E9A049
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177145169363.12404.4153483335970119938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b14079b67b999f1e8ec266c5aa5cf3645c26379067a33636b4fe1d9db14069b
Date: Wed, 18 Feb 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771451693
