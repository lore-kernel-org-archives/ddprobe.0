Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D992345731
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 05:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777010254; cv=none; b=etjYCHHqbBUgDoxueiYs+tZfV4rD++dt41/xjlq4UXCSgmr8HThU8SOahEMiX6H/PA471nui7pREH80rYiPm2h9sYtCHRq450hCAW1RaeRrO+L0uSw8FhTswegF5lz3A6qI1Z8drwHAmprWpDu45YUMx0F5W/ymFg7PPrhwI7EM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777010254; c=relaxed/simple;
	bh=xkyKelfeeOK9d+6Mic0Klx/lC6wtqo9RL3UUjYMhs+k=;
	h=To:Subject:From:Message-Id:Date; b=UroH6F+xR4ikrtNwWw/W7i45scmzt2JJcaA2G2qbhMK6/QZ2tH4X5u2ZK5y3kvgiVFPah+SosNoIDakTQZR0y/uMcDL+SR9+llEvHG47VyHfUD89KDDgdQ2JCh07xHueBr+pFiPANAFw8jvzpYIX0u5RAn5yRU1kpJKUwRgmCRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kqostUO8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kqostUO8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD84CC2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 05:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777010253;
	bh=xkyKelfeeOK9d+6Mic0Klx/lC6wtqo9RL3UUjYMhs+k=;
	h=To:Subject:From:Date:From;
	b=kqostUO8IhBQAk3e/cZgJUhr/SLZbcAQ2UhDizYMETHu0h1CoAXd8JkQ1OyBXhXzL
	 w/0kaXnLneBwdngjDVgvg8ognRS0+6GCGrOAuR0M488gguq0JOyNkvA67hPiPEA4mL
	 HHk5XELC1lbK4gKBEFqCkT0RyORtQflcGHdJ70VqMCYgqRBpI8aT3zQQizKwXVWr4b
	 i/BBd7yZc3d0834b6QaeTK8RkJownaW86HSscrUXMUhpgcivqCLkOROGIoddeGN4IJ
	 1Y0n1c+5YS7HfBVdw0VY18dLSlIeTUCkLCmGP86u6CDRfhtz4ON3gpqoAnjOdC31ij
	 E/QSyyLqOLTvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6AEFB44A6
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 05:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177701025368.10969.7791424250042989898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30379147aef05ba4338c7cf231c6d4af7a85ef7a89cce97cb3bdc6cbd27cee8b
Date: Fri, 24 Apr 2026 05:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777010253
