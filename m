Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D92271464
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751017194; cv=none; b=axUzGWm0Q7Cnom30/P8AWe+fd4UrIAkBCTAT9F+BIl22qBxaNBQ+B0u2aY0n+ldKdkm6rdfAhm1ttFhX/fNlL4m9WkWaao9avZFTSHNcyvA0mZrmmInJhMRHdf0NlmKnxzOZp1+LpBwTRnztp2MugdaSKRyOzDLLH1HunTMtlO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751017194; c=relaxed/simple;
	bh=6ZKQHKOvdOi+WGZVNe9h1wsf2WcNMjk5/LcwYeb5rsk=;
	h=To:Subject:From:Message-Id:Date; b=CJpw+b+IlzakLhFr6bhLRpiukkQop3gbcS8qVavD5kZNCDGZJ16X5jJqltW+V98JyfygUkURkUG65UrvSTZ4bKiJpb6wtYoeYcCtupllBjXQBBgVEAmt7WR0NVjxxNfu2/aRpHrRizt33aXq8ytbKVGtub2oM+gnGWY+OCfuTuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALpBgxr1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALpBgxr1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62CCC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751017193;
	bh=6ZKQHKOvdOi+WGZVNe9h1wsf2WcNMjk5/LcwYeb5rsk=;
	h=To:Subject:From:Date:From;
	b=ALpBgxr1fC6GYBL9ppxgaOhrF43d2W80HJLJxNeZs1r7XQ6iS+4W7MWGNfpGyRy+4
	 RxoptnWzX4oBpMi7YNm8YHRUJBX12jeygp5RS+MNSezPqusNrA/+3Cdy4QQlbzUVaN
	 8MInwJaGPOSv6DFJDdUvKomH9R2WrRWxYA1OA7qFNKnHpyCfq2E0/jSKo+3tqiurHV
	 q61dafV3ZU2ZQIXCn9dPaPIQgJtzYNna5wEMu7RIEBLsjR4nEhKElMg7j6W8DbnJ1V
	 yyEH2nqHGzfpwMVzU7aFHYGVfbCP8d4aj7MxnwgMZojlrx9JzqEbwecsFP7wGzMGX2
	 Va1XzEPutnasg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C42C7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175101719359.16584.11732064133744450718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be840834addd254ccafac7d810aa85e392a1b2a00b35c7a05440b634fe42da5c
Date: Fri, 27 Jun 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751017193
