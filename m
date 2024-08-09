Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE54179BF
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723172154; cv=none; b=DMjpGbFWBecFIQLzAWx4rE6uyOHGkCWEe8cWBb1pu2YW08NpvptxQi5MZ4AqKYMNlS3c2jXFm4hHACu1p5Hk7sLR8vqH/ndx/uGUv+Ow6C1972zdzXVqoCERAbxVHubKSz161l5nAg9s2+szcT032GCcyaEgG+IloJcaYVAuZLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723172154; c=relaxed/simple;
	bh=RBTh06oW/2EUT2f1sSF6IkQc2B/Mk17T3IUF2EqokeA=;
	h=To:Subject:From:Message-Id:Date; b=jm3kr8fT108C2Y4j6Wfw3io+CQ8Ls4YfWzyMxrgJ8SVez0dfpOAJD4x9ybyTyo/S0+gIi5zV5Qv+u8CK+oSvLeZJjN/I8dOES4ymFtbj6v6vZ92781ofPP7RTrcyT/jfguTpsxviwDUzFjAKYgaCu8rro8quDcUKFL3Jyz0/X/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JyCitTrj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JyCitTrj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4EC7C32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723172153;
	bh=RBTh06oW/2EUT2f1sSF6IkQc2B/Mk17T3IUF2EqokeA=;
	h=To:Subject:From:Date:From;
	b=JyCitTrjJCYDsR0svsTZNLSlttwQkICAt4e0Os8EJk+2mb1CYXe64gFBhNG8tQNvt
	 dQZwqltMCi1E7TNJZ38rSf1JEjhKY+ZFUB1jXNSxLtxkFvxo7DmY3K2pntZBoQA6YG
	 Qa22KZM+4IxgMFS9gzgtcs6whAjpFXndBB5a3E26/1Xh5EhpKToxDPRSzuT9aLOBj9
	 RCUIoSSmm16J9C4r2+fQUyDzPL6GgyA5X2bce6CQ0S7W17g0QpnPs4Gj+z5QoOg1uD
	 PRah2Nm4t/nLhSAl1YutL0lZROvkPYuUQH4ziKKc4qM1FR85M2F5q5wgR82jE+gNCa
	 WG4XVq0CUvmhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9D3C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172317215360.30129.15235174627085557672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 427846da46f955ea9584fd48aa30722cff885a916cc3467946d6ed23491b9734
Date: Fri, 09 Aug 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723172153
