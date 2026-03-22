Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D32F19992C
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774194894; cv=none; b=UvoAgaD015DViJOs8KtQLoAY+1VFfqIT7GRx83mLpJGa+wGoQfxFA2M75BDeJPBTirJfNkwLjDctEL51nFwN9//HpUrO76EJzmUkqghoVCQbK3I8h2qXBNPS2qWzo/hoYWwQsdzfXg/JHktTvbfpVEuKZjn2o+OU5xagqb2vZes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774194894; c=relaxed/simple;
	bh=qunUUeDktz9gFGeB+Ld0eEMLxWeigd/k+jbAdo6NXfk=;
	h=To:Subject:From:Message-Id:Date; b=q+2Q+4E5YTjduA7E/uMCnzN9RS0lVXG0kkdQ/o3ybPxqLZl8dWlvRRJHDLPv2oxYILah++uDRtH4nFQiaMtWY3dGXosdzzzA1Iz6AU6sYS7EVevyclsgTxWXC81tSymTkgO5MqTvfuMHKf9CC0F7ksz/s5c1TBeFM1YlM/0CBb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rJ/IfDA2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJ/IfDA2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3CBC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774194893;
	bh=qunUUeDktz9gFGeB+Ld0eEMLxWeigd/k+jbAdo6NXfk=;
	h=To:Subject:From:Date:From;
	b=rJ/IfDA252jwH2WKsX6Qdkv4rNs1x+EplgTgcPne0QF91soCjyqh0l6tM6/jBrneB
	 Zwox1P/InFg0Bvdgf/nTGS7jVXsd90OW6khG0cioW2epV/sz/WyEVbWEOhHXOe7Uws
	 WvIt4UjLJeKuBIV+6qF9DfrqxHRJxLxbiZK/H55mUNov3CvqA4WChK7myeV5Lbmd/w
	 KnRirkROJZ6hs2EN9L18axxJ77HlXlvAdhaMEuCfIhcBkdwEM2F/hY04WEsDHGq6lv
	 BF8CIkOUj51DbEKzVAcjxEQggs4x+RsMEDpqz6FXiaKR6IMrCpk22RE81dQ+AQ4d6Q
	 acz13q+MT50Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F99FC72A9
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177419489359.8459.5259949840073026802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d33b81ee63b79a742f0b1cbf7e7936fa5f76c539e003537ad4d941142ad171c
Date: Sun, 22 Mar 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774194893
