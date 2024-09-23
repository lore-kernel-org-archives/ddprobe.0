Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE3F3558A5
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727135753; cv=none; b=AZe0s1g5avrNT0LYhWb4HOTT9rEkV6m0xeBepXrn49v7Kkc9OwjIHSjGf3ovy4ASXC+6d/Gv/5K9csERlBS/eBPQX7Ic0u0+aUm9BmFSvSk/apx3PtMWPalkYeVD+peKa94vZsyBspYORvn5M5Uf/8QwWnqEx32Pl6m6MPcS2B4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727135753; c=relaxed/simple;
	bh=lLz2S92hIcjogVWWthCjMbn9mZpSkfim5wylQPBKe+w=;
	h=To:Subject:From:Message-Id:Date; b=AzKKvSG0EpaKAQjDO8cNXCVxqgEM4ym9ruP4PVPFFmbr5kdgkPdhDLVd0uJQNZuAxbq/bCucRmyS77MLTM5aEFGrHDEqIIosrPMru6+mSkeHlnGs9Xe+4LS2YW75GQLWEOJl2l6cbq2uWKquVsvhhurjOV2j59V28bpMD/x6UzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a9oG4oeI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a9oG4oeI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A353EC4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727135753;
	bh=lLz2S92hIcjogVWWthCjMbn9mZpSkfim5wylQPBKe+w=;
	h=To:Subject:From:Date:From;
	b=a9oG4oeIvoTsULdd+143WI+zQN+HZZ3pWairz6c/tWZClNxrefuZKlCiAKkDYxC17
	 OSC+IwJ2/oOoAdgUxwB3uTCQCWcMD28DT8GDtS4Y4MvbsDxXegYFlhRDdZAI6VOuHB
	 XdEKHNbpFg4mj35MXg0BqEgPoGxZTuEHpmXTMtjQFC6Am1d4dmihqhtxMyIlm+GbWB
	 rlAaSh5ko0GDsDXFtFzVp7ivBnzwu7gQuNgCFGb/rRrPQjf8QNzCTw2ynvEIjR0DZ6
	 DFzzx391KOZQdLL9mEIDbCGR6mdLgRdkm8fLztQ3mrismLOGhFazSq3ZGktBZyN6ED
	 gNKd/+NvNQExg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93900CF9C73
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172713575358.30237.6208652776663789320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0f16fd965884d57d01cf76dc8a32e133a23f0dd1e580ca2d48f59fdcc8ec656
Date: Mon, 23 Sep 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727135753
