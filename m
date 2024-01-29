Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECEBE5FB89
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706530097; cv=none; b=CSVbX5EtxW52FAa3/tSfRh98iL39ysBPlGKwuYD0vxQXreoXecr5eEHDl855Vt+G08ET+7I1u3gh2rxM7pJ7PhfvexmwzzDMw9U1TBheLQBfkfqeOGLik4ep09THa4UA7kit92Hw4Ntb/B+cH4ocB1Rlb+PNlstoJd6OH086B0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706530097; c=relaxed/simple;
	bh=VsqAfOlVyw+K9dapilSQF2DJLLL1k4YsOOpdjRUMtT4=;
	h=To:Subject:From:Message-Id:Date; b=rpVbeWG3zi7zzb5ItXnpv2ozls1WVH9wEdiNA7rCJ24YNDNS+aDxHHJqm6LpLGnBQUGjkPuiK/e0QnACZw1yjXh8nT6UytnbSbNk+F6Fa/HIhJeoiBjOc8xqXuRsegQMcy9u2fyEcJGX76r8nYkuDLgBRI3Eub7zxgxrvDQL6ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=up/YJWUQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="up/YJWUQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D13EC43394
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706530096;
	bh=VsqAfOlVyw+K9dapilSQF2DJLLL1k4YsOOpdjRUMtT4=;
	h=To:Subject:From:Date:From;
	b=up/YJWUQBvIaWBYqoYk4qbb/LX4iLnGXlHtgvwiCSV2FY0YHXfva9a54ag3qEr3BJ
	 ma1CLqej3yUlI4oNiA9axChIen7EF5kEnuYdRnqBJus5PfRHAANtYFUln0yTvWaalU
	 4RXYLpuzCbjXEpsrhVpbAxlsW8CpmNydqhpvSiHq4ViknSeJu1SyO8Lfsibo70OKmx
	 6Jbe4zZJ8RkNpPFMe/+FVx//JYjVQrHG0Me6EaIjvBz9DRg/3ycDA1URNiqBqy/N8E
	 b8hCeyAEoNfgiNzXK7FCYkDlvY4sys2/u9+G2EAwDXTEyPc+yYidgWzHhl3RF4Xybu
	 /EwFMZrBEU2RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F36DC47422
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 12:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170653009638.32136.4974438535207017763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddc6325e2c025f369ebd085984a6ced376749b2df723c416acf7a1e5210e2f52
Date: Mon, 29 Jan 2024 12:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706530096
