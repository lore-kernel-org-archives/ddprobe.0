Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1688D15746F
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756997394; cv=none; b=NWH9va7SZQTx5yXoXTcKsRCgtkmjgW+5FgOvbeEB4gnI1pwxPnN7O0FZ/cZrQaOCSXam0ePrft88YWC1iZM38JGGsPK3V9HjWuZVeLPg/nLfrnkAXA4BytOxn6TUCCrZtqRcXODLC57osi5CodJzfVUMImBmotqQ0sk8mURxdzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756997394; c=relaxed/simple;
	bh=Fp4+pV/8o/uC3mMUvTiee0JJym4IoLUc/Sz+vIAXyaU=;
	h=To:Subject:From:Message-Id:Date; b=uzKvo88Md9HBI1RshFaVsu+m0NzFL1XYx+XWVU/LxdwGLUn5rEfJk5Iqs1YWpDwgiVsFa4hqx3EdTEIIK8ifWaXHn0gEKi4Fw9SRSbjVA3gIusPSxRV/cNvvaATWSJG6KNp6vsrUQEk5654Hpli1M4ttvwYTGT+2jW0LzzjN3Lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ox8rQDNK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ox8rQDNK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23C5C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756997393;
	bh=Fp4+pV/8o/uC3mMUvTiee0JJym4IoLUc/Sz+vIAXyaU=;
	h=To:Subject:From:Date:From;
	b=Ox8rQDNKLmE5Yo0wIFMEaqbI93ncWDK4umaFpyf3NMBRAaNBAjpmisTY3IZvGwur1
	 XQaKguFMRHcyGf6mudEG5H5XZ/LfGjBbPf/U4QQN+BLSSJjrL+SIWhQy4u+y9NUg2q
	 X8b1XlNY3acbsTXOpwI1gOaNeEhgXcwCw6Zrx8Q5px/d507kPkByOHuaXkpWsRA7YC
	 qSEIDmkaUONUYjQvZJPjB76IdIRimzuktNjkIbPRD5PzPdjTRr7nt3a8TAKhC3K79i
	 wDtoSR4nDLIkfZyjUykEj1uBwBcOnMeQEZcSoFH0EbD/FMyuhXgKNfxXW9PCRaN+1C
	 YLVqPw1s5tXAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C94CA1002
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175699739358.17653.16919342647428853273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64f3cd75f7b908a0f3baeed1375ae525bc6608dfb209a05db60439292be88144
Date: Thu, 04 Sep 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756997393
