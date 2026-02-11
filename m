Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D96D435581D
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770809093; cv=none; b=IblC8fvRAfkALWrGd0rSMFHXFT1owqEtJkz3fkXaoNPaNHULmuprijEd5VgUaeJEcyEbsdxqYFvqpE4j3bG8ZcXWT54y1usfCCBgqPZSNXixqvJ2anqhg+NNu5LflsooX9G8Owo4rjOneEWs0VGHcvbl86C0QQNpvDnCaKer+dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770809093; c=relaxed/simple;
	bh=BddaOCZIaNwV+8u7EWjYOLMf3J3bGL+29XtES8e2G4A=;
	h=To:Subject:From:Message-Id:Date; b=SDdZFa0ebPTrwN1uU79zl/eeqVZclPeBAWyDSOclvLj0uoYM5mJNchslZBxHeXQdwr04B31/rH/7bWLIRIXRhSDkq3hMzlvXkMKqf+CvT/CCCK2UUyr7xKzSPihGPuYoVjyJuxZ7x6CdxYOBwlPzYVHMtR+CsLf385PazAtBwQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PbDbzBWJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PbDbzBWJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D6FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770809093;
	bh=BddaOCZIaNwV+8u7EWjYOLMf3J3bGL+29XtES8e2G4A=;
	h=To:Subject:From:Date:From;
	b=PbDbzBWJq/mVfy3BOV+bkZX9qVeM5x76hOO+SBbea+0JQtxQM9WdHfSdHKB9ifq3V
	 zJFsHu6tb0Hua1/J4hgubyWtu2njmKFbXnQMDWwI54WJJ5HxJ/4lQ0JC+ptCI8B/gQ
	 zx6VFhbjbYUDVW6ElxOOXm9l/xl49lKoisocelnbMdDNU81mz358fKUKtZW8T/JrL4
	 eYS4eCiXr1I20OlRyA3xXEuhA7wDVVeIMBTIpBV70BgM+oSUnz+bhqJ8N7wTg+/wNb
	 giuvypODlatXOmmkolf8QqzxmK7TjAscxIRyooNCsHe8no1Rj9dX5fNf+zlhgMfABB
	 g2g0Vxu/lQZQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EC67E9E2E4
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177080909362.2227.8009829080966863931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f13f1e9019e5e3c44511ad35673f0e126150549b81bfd3f18f5f2cc56c49a70
Date: Wed, 11 Feb 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770809093
