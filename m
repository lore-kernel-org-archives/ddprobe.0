Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AE1248F72
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759285194; cv=none; b=ic+byt6XRDjryw+0O6CSOhauujRphympzpp0pNxT2LROhRx24DXDpRBJR2XnGxZmYNgYcVOmt3hJE4QONeSnVqn7Z1F7My9nAdBMktNyOSnKEBbbytKQUkuE8RhcObEXSJcwwPP1fbA0f/xwD5wpRj4m4UiWYEczHUj9kQWOIjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759285194; c=relaxed/simple;
	bh=l/NrMw1Jf3zMTB/oe8S95NxyhkzSmJsHs+3lZCfgJlU=;
	h=To:Subject:From:Message-Id:Date; b=Ab6nHnTW2FIiMgP+Y6Cvbwq2DOXu7gBYmxSxvPBRcbEzgKUJRJs/acimNjRVjdJtNl0Qd9QtpLVft2p45c0ZCZ9gWPtGW7VwaxX/mCwuLXbhyKc78Z5OiwqBfumj4nDvG155uubqrzAyHOAkWd/1N+MhNEPIuUDYxnkEnECgn7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0wRd5/h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0wRd5/h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4853C113D0
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759285193;
	bh=l/NrMw1Jf3zMTB/oe8S95NxyhkzSmJsHs+3lZCfgJlU=;
	h=To:Subject:From:Date:From;
	b=G0wRd5/hUCdpAABGp+9NC0RTPrKBsZHT7Z3mx9qYlPFoOKCe7s/Uaub9Av+oFDA7g
	 bL37/bTqkk32rjHKa0uKkuyiYbtNVlGOY2x4jClR3QJTtFK2imbsKWIEYz1ErRM5bJ
	 YzpWf8uD6RrvgGiA923QaqXemdpVbYGkH4Dm/XJi/E4j6Zj2Xkfc7QjIR7c39GMyU9
	 H/3acBCU1wDWg1kGv/mv8Ag4fb4sqBsnSGLnoBWD0Ey+ez8/6+z/KmlZFr1QEJFPZE
	 FvvavqG9T9+vafR1yWyOyVjybLoMqsA1QkNp9P1cl0AGL3wv5TLmX0X5/rljLynFfU
	 VIU0fqcIOpgyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924A5CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175928519359.26107.7845002839602930707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78ae1b7b4ff8be097633ab90f2c97f4b9875fe088cc1db1cfe5e967a544a35d4
Date: Wed, 01 Oct 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759285193
