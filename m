Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B75D145B27
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 09:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720173323; cv=none; b=iO15K6UNTLDASg3f8Uh1f2ubB1Zxp8RYGlYHAsW/4GwMyV4H6a9JCuLQX8aZGBNPt/DZ4iHgHIQuyUZtz1uvQgAK8ggryLAgumjZqFpRe/Yb3lFnWi43Qq4Ywdj6Z+pQ+t8/12RPDTEOga4cA/eF5xEdBaJwgjuJliyzmUxWDHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720173323; c=relaxed/simple;
	bh=X1PEjVlJbv4NSTF7oseOyoIgHYsu6Uq2G6IWTXLMKxE=;
	h=To:Subject:From:Message-Id:Date; b=nx5XynMezEte1nfn9QAi3xWOsAntB6DwXnY7CP8q4WZG80HEiJS04TZneKU8/0soYj6T6XekNUAaGevgxteF5kzyoQra6i9gSWTREu9uGqTN1W38xZdgjB7iTLtCqq5OE32HCk1GfiW6+QWVNWyK76joKT0GAARKQOxhG6p0wiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYrev6U0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYrev6U0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0C3AC32781
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 09:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720173322;
	bh=X1PEjVlJbv4NSTF7oseOyoIgHYsu6Uq2G6IWTXLMKxE=;
	h=To:Subject:From:Date:From;
	b=AYrev6U054RjDWWaWYOKznoZNQPMETcdq8tlqzwtJYVUCLzzOmPx+NUxSZZX5UzJZ
	 1A+DKcUNdUixNiTLQcgdY5M3hYwP9MnmwR3k5nyqhvWpsxZxxbrCQT/BzG5WpEPT0+
	 kmuOH1tPV6MHYZjzwBNEhGic5U3EJZuoHa48BAZhBYOF3FvVXs5ZC8XvZgttkSguoP
	 LLJJibe9HsT6bwtMXxT2tq5IaOshjJ0CVoX/Zu7D6keh+u36BOJjltQiTayBa1FfvK
	 TbFJVvPGj6HAmUqhKbEmCR2xKqJ4V8b8z4hEdypqG+kvgewGHLViFMf8ewGXeyQY1b
	 P6b/nrldnsrng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0438C3271F
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 09:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172017332283.22293.4367858648258145037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c20094de1e28dcaf83398975ec984d76c8c823a4fc3f5c4aaaa836c612a4603c
Date: Fri, 05 Jul 2024 09:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720173322
