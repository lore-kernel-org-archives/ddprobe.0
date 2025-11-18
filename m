Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4203702EE
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 21:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763502714; cv=none; b=fzxFrDXjWfoAG8leaYlPsOYYbEvH89Ae1vBCJw50zGE3+9JI2uVS1xQxwluLuP9B26sQRBQQ4ouOAY1e+6dfGqLQD/SWAs/ltUhJNrX2pDKWWQJSd3XjgqGnFC/GFycsInKRnrhqn68YfyrqL1iJvjLfuszuV2znqCmVdO9pwao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763502714; c=relaxed/simple;
	bh=hwCvHviJYhZDa8NGaGYVzL/CndPOw9mjlYeVsZj6s5Q=;
	h=To:Subject:From:Message-Id:Date; b=QrRbiq2HuPT4P/JGYCk7DKOt3mjg92qfixXEG0JE1/aaM0KCh2Jk+nmdq8dtUGBq+3JXzhd5XE00whNOb//7pBEUjUdVmyr5CPoRf7cDSM//0s7QvbGm8B9IQhrUantjZrRhBH+t+RMTHm2YPyCpji4I50tcss4/ftWvpbGhpwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kh5x8cr9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kh5x8cr9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEA69C2BC86
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 21:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763502714;
	bh=hwCvHviJYhZDa8NGaGYVzL/CndPOw9mjlYeVsZj6s5Q=;
	h=To:Subject:From:Date:From;
	b=Kh5x8cr9ttSGZP7TTYUanlghJkmllFOBCjLttHn9ITgqLjqJbz68nqfDXvZ3Jpc2a
	 CTQxANAlN9GNw6YHAWKPISAsMIvqxceSufQJ8D1qVndrb84m4UQD1iADDxOZNohfxO
	 fCLVFPn3xKfJxyVIlppCwW1gBxaPxNSCGa8grIeXAdkac3eqURGiZ6RWCBAJ5O96ch
	 UyMFHt/Bto0d2CVKqI+K9TZvATO1RWoqJxc0EZ3FkZb7arjv2YaeeNogg5N0DSHyFE
	 Qdg3G4AY8jn1I8w3VyDtmVkV+Pz3Op7kTXWfrrdK71UJS41wLw+nfbyxK14kpZbwnN
	 ljaWpt6Zkdhqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB7ACF2560
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 21:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176350271362.8052.16887410149747709886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b032403cc58de8582e6cb7cc7c5b674232e6f3ea9d308a8fc66a5fe5df6fdbd7
Date: Tue, 18 Nov 2025 21:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763502713
