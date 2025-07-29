Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287CFEEBD
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753828794; cv=none; b=PML4NkMnmT/T5qSELxHso8dgR5ZtHdOsa7hec59L1htliorSkrHwx/RGkoLkbdUsTdQUTDyuvS1kJD13loXmAYfh7S/jH+0dSW04fN0PONWCwN7hFwuv7vt9VCxAh9whpxqVT5cI88Qh+dPfldmPhLQUmiiTDqaxmJuGABS1CVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753828794; c=relaxed/simple;
	bh=kglSsR59BLdJIz70PaYtJYuXKZVVvuId6L4Wt3aLXbw=;
	h=To:Subject:From:Message-Id:Date; b=sPsaqxnegSfwMDJ0R152bE0dhH8QYhJgXIbsvhxYGOHVPX92MSXbbs0I8g7UkH8UlLe1KWbrrdt6ytNuKsElFHWoi5YO4tnw0to/LkJcKvMCo1c9eODgQtd4qTLiH9QXAUqCWE5A0Tc1UJNiWofL8fPZwT+M37GGRpMTdUX/ddQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rxlKm0Q0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rxlKm0Q0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42A6C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753828793;
	bh=kglSsR59BLdJIz70PaYtJYuXKZVVvuId6L4Wt3aLXbw=;
	h=To:Subject:From:Date:From;
	b=rxlKm0Q0g4NK57JW8O+XiguhybFr6HjmBBfIpovb25VEZWZ2fV0cTctOx+Tl6X59V
	 3cUCUEYObmGyrzjCJp5sbsGgQMeL9bfD6NTS2dBoKPV90F19AXcFLPfVo5NK571tzG
	 WWWrWJKodWuRcMRqp9MZQHzmtfxRn7Onaxk1xH2TRib/Mkiybk3N52G15CyiCqOC+d
	 J4DWL+fLQspA9yckHnXNOWeMiQbZdIp/lnxNAiRswDbo30ETBwDX8+HG+nYhjN4vhs
	 I43K0T27OgLp3Tz2VJL5dliAV7z5yo64/JZmeVskL8IZtz9TjZURo3K14qJbr95E4K
	 dEw6AY4Xxxe2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94058C87FCA
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175382879357.5730.4841617802131717769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ba888eefa88c19e83cbfe513d158caf94bf9d214bc98b520046f1bf9b367b56
Date: Tue, 29 Jul 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753828793
