Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65333F9CF
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 04:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715834543; cv=none; b=Ls/kuUs4TTzzpP75GUb2Pe4liU3Z1GjhkAYEsz3WvN3ungsrU2wGakIH91h0XirVfHc04wNGdzCXbGAtTD5cxZIvGw2eGq/X1tPifWeD/walAGV7N0LCYVmEblh4wEzagxahliNLBhro4oYAqWx3zl8rF/0bHUuOKkIhcNat3TQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715834543; c=relaxed/simple;
	bh=w0I4mRl/7G46oQw9kN/hJDi9f9NGeFF9xha1tz+GHo0=;
	h=To:Subject:From:Message-Id:Date; b=XcUXpW/Hk5u1jLDrx8aRT3HhTaYjy4xAMpeuXL2rxUV66+Q0n2fDy/d/xB4Uzp6qUmAjOdfrO9Xpw75mHNAtJmwrXv6402pFNt9MnL5njPPYCY1JOos6AO7BWvut44/4+u0KfCAaeS2WHObADIZrk58eUPvXKtyCP5v0PXRFpW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMtN0QqI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMtN0QqI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD9BAC113CC
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 04:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715834542;
	bh=w0I4mRl/7G46oQw9kN/hJDi9f9NGeFF9xha1tz+GHo0=;
	h=To:Subject:From:Date:From;
	b=XMtN0QqI/h32kjd3sIzNfLGupSf/Jv18XopTnA9J5y6I/ZRztSytDFX8qjpyFfjNj
	 qD/f+x0YbXmCOGkCBPauXWWHgYMPisEuBEepyT8KiuoOHnvCpm6mBQQuS6tlFf88gW
	 zbdgCIEqeDKDJD7RpUxnEvfaYdq0LcB55CpbcMY+PxxqnzTin/BNdH472zdH5B6jRS
	 2a6l+hMuugk6jjYGRshxvZeupH8qYqTXnPW+RcGuxuESYetPcLMdjKW7ExqPf60e/i
	 VlZ0x8BWd87uxTwZ1fix16MATBjHeZBtDaFcZRXg5/6H3aAbWB9X3j7dEadskIhwUP
	 0LcGS1AlJGjew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C562FC25B74
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 04:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171583454278.28234.9268930761969343787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5450c8057c416a1221fbdde651455b5590b512dd23a46855f70165b99a582556
Date: Thu, 16 May 2024 04:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715834542
