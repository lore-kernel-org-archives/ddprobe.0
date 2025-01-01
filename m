Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261A5BA33
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735699554; cv=none; b=jVujNz6Bn+MHXFrzdquGyky4lnz2A5uQEEGqcKz9T7bp+DIj2sisjQY3VxCV7eUiRLo7/B4UazFqTf+mEpYNtHY7pBfDF8XOW9v8p+0Y7nUAXrxt9/yLBuYlxSbfEmVAPzzDAZBbGLFx9Wqc7PSuoPNT9l2e3p6EpKyUb+syHdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735699554; c=relaxed/simple;
	bh=ym2aAPrBJMoaDO89lYFPwNLQ1IyuMrPoppkKCgIsA0A=;
	h=To:Subject:From:Message-Id:Date; b=ICDLVvlAj3QfbraTtYzw20QCn7wRmA2C1ox/cAIEAAmutag6lQ2jODcA9YXw3OcUiZyHgNM4BpyBezEwpyTGwDjCtFTYD8D3ZjWRFak+SBcL7Yy9FMihFmJ4g6FHpYavu5kxal8vqopVcZl2uasCzRfj66Bd1E63gZcdvnT0RaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJpDtaa7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJpDtaa7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACCB5C4CED2
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735699553;
	bh=ym2aAPrBJMoaDO89lYFPwNLQ1IyuMrPoppkKCgIsA0A=;
	h=To:Subject:From:Date:From;
	b=NJpDtaa7Yq8u7A3sgaStNZuFOmFa+SBGh+ir+eG0X/j7Sj8Q0q1lZGX448jaLmiyz
	 BYWgmEWHr5m3DEnl7jIjQDA2vZlbydDIW7Kec5DnVjdvaVzXCGvkNWxJcQ3eH5hRhI
	 ZUUiHFbCMW0sRfe1FqhsfqDahsYnY/meTTJE2RYR5jBv6SDMI6PL6SirZ02rYFCeUC
	 OMJ4SxBVpn6ajTOGxLXHpVPS59FKuw0vMBR7qnwvN/E/8O0tWAOdwKMPgvpwiWZuYT
	 //dlNXwSKhxsGXD8ZSk/P1AydTSrOkkpASmNqHh9+ZB8bupGska7vaTTjSiePin7Pk
	 nJklnKnRP7Vng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A26E77188
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173569955358.9990.1086157127314072244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0c49f905a86b14584a4a1c10086e00beda6d6f3b87f3d3e84ce185ee2567984
Date: Wed, 01 Jan 2025 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735699553
