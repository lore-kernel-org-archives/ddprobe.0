Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BCC639891D
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786566634; cv=none; b=gT3wYCe20b+F62VDnrcw3bzCRLecldndNz83IiqiCK1+Dt5DN3zy/uUii76JiJxyWT1zlVFnl6G52DPvevD1Vz/RH7rRdIryPrCx3qr9/cCHksWxb15VRLifsTa7v43mNnqsA8RKKkwHRrC0qfuo5O3nizdZEcRnY3TaoM3cvuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786566634; c=relaxed/simple;
	bh=MLRo3JGIRAdXESyPMnChNlw3Jj9A6SE6F4yrrhg71lQ=;
	h=To:Subject:From:Message-Id:Date; b=rREdkTKPyLUx5T9+iXjHRqpwAtkjkKILrObLWenyiLma5+ksDNKnW2FmbADz2PA3bdtLtK5edUxjn/5MheGFvXiwuYzzN+jD1nGYRVg/I7PFmdqDsmWn73tkciZLduhGR/Tle0foRIh/ZYxtbu+Cm7lCf8+Pzd1SYUL2gtSR6ZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YhUAdbvK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YhUAdbvK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBF2C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786566633;
	bh=MLRo3JGIRAdXESyPMnChNlw3Jj9A6SE6F4yrrhg71lQ=;
	h=To:Subject:From:Date:From;
	b=YhUAdbvKrS2Vbr+hllNxn6uxdnB1peocSIsV3SZqa1MQDG+1dIIOj8AfYNmoCKUWa
	 wvs5C71AyhM/lZ5kluTkOZ4pBpTGCWa42bglQ+KRUZYBl/0Ye60qnH7yw9Q3OHaO6K
	 y5RTKBqxuTRlydcwEHKOKxFSHUT1CGE6CR4Ns+tVUBqYwCX7xX2GR7mMyVRHbk/rJS
	 7c/GYpC7xmjZsGGhJK6Fcc92GCCsRn9EMtTmfmeJKUI8ZVAFp2cIiPq9zM0Gol6SHa
	 kaEYCEYgppc0iNy5rf0eQS3GmXwqwepuV8HHvjjVVHq5Lcic4a4jOdBCRWzx4XNEDG
	 1I7fj85Cfh9tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC524C5AD5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178656663369.23909.9162367925891415200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0939e3f589ca7ea38b28da130f4b6bdbfe0a7c2ec86e8eee7317898525b9f93d
Date: Wed, 12 Aug 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786566633
