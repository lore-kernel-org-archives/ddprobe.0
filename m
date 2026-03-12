Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 058CB3B7B6C
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773315894; cv=none; b=AWcStNmO9TWBxSA59OI26aomlZKVXC1urS9JEC9mZ/RrbOUTjvS7sIG1GL0GpIPsI/jbcAziuKtKsLgsVG34MOz6YrAgPS0c3786K5CLwqys9nvXDv9owwBP+vHdmgSNxhGN58r7GSZrRWL285NXk7YeS0Rf9v9NMFp8qS/g1nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773315894; c=relaxed/simple;
	bh=dk1HJvIHzZlu3jweyE1KssLX6COKUQPGjAxnXzaHztw=;
	h=To:Subject:From:Message-Id:Date; b=t+pNYGT2ZxMjX9MH0rmOPnUf15ORyytuuxGuF2sJj4MKBDXrW5tou6jBbz6L+07dei5JoGNzwXyzWLElWiA/lwgZSf5oW0QSyRjGtjxEe5gIhunRswoe9OymO6zMlqHPNe1lEgvtYcbs0hGRwpUw5iF5L9GXzXjREdiv3g/Ccz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GySKT36P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GySKT36P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D72DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773315893;
	bh=dk1HJvIHzZlu3jweyE1KssLX6COKUQPGjAxnXzaHztw=;
	h=To:Subject:From:Date:From;
	b=GySKT36PfAcV3wPleB8GbQiLX8rNxqGJ0LJGv4tcUNCAxbER19loIroSaXAbsdNSP
	 BNzkAAlzgMDhmgiYO0Qz85WwBGj/8tVpctqmRrtWNV2udymbPLM3VU2TrcRhszVqMe
	 qk8Ra9BhWR1MeG6voRt3+vBZYu3p4FqOwRSb55thatAQ2JC6uJZ2m/5dzvK+elZxyu
	 WkDaeQ/tk9k21T/G50jg9RZdLIcIU+iFDwh/XKdI82B+drCFS9LLw3HlcBUJVoGK/B
	 EDt+mFyrL04nxlaJZ7XTWFparMiBJ1OV11MWULWjj4j2RLiV8ho5D9xI71VEP/JrlS
	 gteOpTnSPEl/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F47F105A58E
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177331589357.17214.3176888181922231230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1deb49620c7833a99ac9703ec934f123bb44f98e01ffee8651d75801f16ea4af
Date: Thu, 12 Mar 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773315893
