Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EE41C84CE
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743364194; cv=none; b=V3qLcsd8oScDp5hh0oqQ6ILnbsj/bZQbid68vENVx193gww8EINPHeZbQ8IYqrhm2I5iphp8sAGt1Kl11XwVK4UyZ8HLn6Haxig0gbcmPWemDg4HIs8UUdb7b7uPjWJ662afCmRp6WS1PX2oCLiZJxgOhaW+3M5ff4PMzdrQ6YE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743364194; c=relaxed/simple;
	bh=fu6LqwtcKzKrQjV6zMyIXkrSPILdbN6nWpe+4LaYz2Y=;
	h=To:Subject:From:Message-Id:Date; b=PpBmab2cyr8GGTuADIfaBUXR23eLUGMbcNSWXTrKjBMeT3ZifaUvCXL0FTLLVTf5p1b0MmU3GPbdTycarshnOtsZqGAlLVjxNQddW19IybHl1TceIqv+sSsavA1XgKmhIUcNfAfuHIryD5kgxtH4rOViyLjANdmOW5y315Vnd5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHTIXlJK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHTIXlJK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F24C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743364193;
	bh=fu6LqwtcKzKrQjV6zMyIXkrSPILdbN6nWpe+4LaYz2Y=;
	h=To:Subject:From:Date:From;
	b=sHTIXlJKYCDkdF+Hgj8IQgxWOq4NCz4KN3+aJO0RkQ3JtbdA1U244PekDbDgaRvF5
	 nP5QPTfJhcBW78vI0nPbaP8bHPbU0xrgbpSkHEbTXr9BekA/Pa8Bwx91zf7jd1BSk4
	 Kb752IGDsR6wkbeuyQ6E18yWuDjp+/GCK9JVgc2s/BVDDRFuv1XwAzrxi4LeVTOxF6
	 YqVAk1kdOQDycTeHtkN77KBwfAuRA/IVSMcDe9s8/q1sd0jUdZIfRLB7ZFRgwHUZtJ
	 gIO9gXFDyZtNXcdWwQbzkIh0+xeC4N78Ut7+CVQ+VcsSLmu0hUNBdOQphzFoz9u5eq
	 lH1vDmTuVNMDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE87C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174336419362.15108.9566295388449539514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 317d962856d6062c66b20a57fe8f0a54c25b5bdccae1aa85d5d310cb538c3f52
Date: Sun, 30 Mar 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743364193
