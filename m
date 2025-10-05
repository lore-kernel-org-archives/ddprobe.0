Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321281D90DF
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759701595; cv=none; b=M8nNeYKQrkG5vXDYr+wzZ/HJOU8k22tDvFZw+AD90rZxTXEEESalHvkqomLI5hDhMsb8MV7j5DxzBeEZiuQCQxZ/zqjLxxDVo2CL9FMxX+TPFITgeCGPTB8gt2uKtGdRPcKqrcizTU3a5qvEWLdZqV6lS7xElJzqotnerdJs3wY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759701595; c=relaxed/simple;
	bh=Wl6vOF37dXKt7v9lUxh3wwLlxxLAdI0okgPLG9gnY9Q=;
	h=To:Subject:From:Message-Id:Date; b=b3IPahfDomoUlzGrBqKC5L6PEaAx1sNh90c1aP1//HyM9jgV2jBq5Y+uvvDiV1QvY0u3so2gYzBQBTbnpYWDq1fBwrg+Auf3eYBaKjfhcqGxv+az1OQF3xueorizzoyvEP1BKD3Zcecp6T8kBHpwaCB0jQsLO+H+ys0tThHJJ2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r91/kDOK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r91/kDOK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C35C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759701593;
	bh=Wl6vOF37dXKt7v9lUxh3wwLlxxLAdI0okgPLG9gnY9Q=;
	h=To:Subject:From:Date:From;
	b=r91/kDOK+dFDOZOkq3akcLFVkwLHXVbyBSgbFJ7DQD+XV34uVqDPu7XVO9SGfb63i
	 dXSjA4JGyqs3CnkA6gB/GoR/xsz6+YSvz8yinGusnQ+2j2kH/pJoLPqFxQEpwiEQ+j
	 LfhUsLEwfz+morH7wikgAFAShgypa9DfY6B7nLNoF4s+XJ+JdcNBIOhzt97ObzIjVI
	 OeYg5KmfB1F3o3GqhWMTwovb2SR2EGJ74QTuVnuMW19nB7Ndd+HUahofxpcU2zPXwQ
	 UkToGTtQj1al9VVU/6NAyvsGN8ftTzmq2LZcUcb6BMksH4nONc1ovJqMusHSKT27iq
	 rJJsAj/AVzBKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D91CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175970159357.4708.7730123417584874235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 007e96634de8bf9b2e2157b3379faa7c533267dedfcde08eb1865039c51b2c7e
Date: Sun, 05 Oct 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759701593
