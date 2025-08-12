Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E93120C478
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754965794; cv=none; b=qs2m+287z2B4Xhdp3A5R7K8XLvfmQ8TL7ylMu6vBfZpMf8k/vVhOSPRiUKKUXIfPTaN1jVSya2ABUEiQCRyqlskEZE61Y8MkSjCTSpsxCS4O1MAbCyGqsoNjvpGhH0U0tvRxhqnE6gDLhiRw3vnzh8oMi0QKHWEqP3Y0FOZ/Iv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754965794; c=relaxed/simple;
	bh=+fX0RnwYxuqT7FFZH7awT6uC14j71tXFWrRW7fUzpog=;
	h=To:Subject:From:Message-Id:Date; b=ab8vF+r36iiBvP5s9JiJdMQHc5peyfyQToogA4RxuQ3C4dNYAkZOcbuIdut8qh9fXn055pNtcvcJrmhp+35qB8bRvCBfrWADaIfLNOYXAJ7bKxpdCuBnaI8Fpnep6y8CoSsXK01rFzL6HHI3jnL/i2m9ACQwSPcrcD5a+t6bmAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bcN6l64x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bcN6l64x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00E5C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754965793;
	bh=+fX0RnwYxuqT7FFZH7awT6uC14j71tXFWrRW7fUzpog=;
	h=To:Subject:From:Date:From;
	b=bcN6l64xrFwnI0S85b0X6pZZ2hWzlEtzWTSzilylmg2b9zfM2/1lwBRLuQioBzbH5
	 66Ny0aC7bIeVrzsO/gfZtVBhA5uCk+k7YIOs4p8MSHMIT44Rus5x9Y1i6h4k2+im9I
	 8Bnk7+oL+Bl5PpoBJS0qi1OnBiQp+Xdy9z8XmTclQcF/PzzaCxKbcLqevNzhxa4p5H
	 uCmo3qChGOpilNsyCs0NlCffhrIjHP6urNPsMrwA+FLHjrPCt8V9uDddXSc2pda2bf
	 qokemjEvk3yLU4ZY/qVzJkV0gSYykY8XE9pDAHq7wAqg62hwuvVX5MtWeUi8bLETkI
	 dYT8OeWpkBv1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F278CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175496579357.21434.12031280959705629306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a04d94f638b76c24bea5e0da3f9ad3c758f23ad2df62ebdc831a572da4eb40d
Date: Tue, 12 Aug 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754965793
