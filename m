Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54FE947F79C
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788440434; cv=none; b=nNcHzNIVDxreBi856y1/5otujxtKkiU474pUU35P7FTeGgxCTvHWHhXZjLOAsDzoqL4f6+HfuSH6thoybecZ1CHdgykIJ5wRuIG2zAu46WMhYXqc8EpAWQKUHzXjlY2aouG+YkHxz3a1M5I1FcEylq8gBzjDI0/RBRumNKCCPTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788440434; c=relaxed/simple;
	bh=3NM3ZPrtOhyDJr00ZCZI6DIsfeyEtJp8e+s49J46xjM=;
	h=To:Subject:From:Message-Id:Date; b=WVjmoL2pxRJT1dJyXIzRUY1oIUaHGVZ3ZdDHoBqWvnfkg04yqUD9V23/fQuj2UlyGjXT/3ykYkI5Dreny/uCgohTpOVjejpv/mHq7akWICyiQp8Ku17t0RqK2QQrt4VxGxHcB9H3p6v7c/EtplOMRnVA8xiES9SPYD95ZUh7tX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xwsae1qn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xwsae1qn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0399C2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788440433;
	bh=3NM3ZPrtOhyDJr00ZCZI6DIsfeyEtJp8e+s49J46xjM=;
	h=To:Subject:From:Date:From;
	b=Xwsae1qn5YtWe8iRqvdo5H37x40jsf0dulcvx6i1Ghz+QjcxslCwwkXRyV29FCN8p
	 kizl+/WhY7tBvSDD4qHcUj4Fe6KlPAKQevXBs1xRkTyBDL99RH5S8Ne2FZkSc8fzeP
	 8BoYbGLR/ZMpZhmuTdsrF5S1xqnlVaeSpZKYm+dJxf0sSy5u/p/J8iZ5XlqiZsvfRn
	 qK/mn6YTdiH4IfJCU6OGKBUN4xL60DkBZrcV+JJAxQxRBNJAsK9NDzjNF5TvXKGhXd
	 dGIAOaMtECJSunh58OJkwrU/b0Un4Jt8zXO2pT5ctirG5U57CkZV/26yIjjHh6HPFu
	 9Osf8rjtH5uVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC748C61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178844043369.31333.11350298716242543117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4fc7ee6773e129e0f706e93f8eeb8350f57f17289bde3bc05daa8b918ee5e5e
Date: Thu, 03 Sep 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788440433
