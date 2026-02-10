Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06A2A31B825
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770742434; cv=none; b=hPgPpDT6eR1SlnuNK/ik6uPMhf0dUZGY93a4z++S02kK0/FDUG36LkGlmqvvpfasVkvrCzDSHcYIYaPfsvqPLC9EW3qsNPpuDBHuMpDVgW4oCY53wELslpuXWMBNpimSRQxFX6E2d/R5ZINOnLbwYR3054JXdoH8xMqQDIPCN1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770742434; c=relaxed/simple;
	bh=oV6Vs0SO6OAL3sRtyJ9r2eeweOMa0p5aTn6+mVQnLvo=;
	h=To:Subject:From:Message-Id:Date; b=rYArUjRpb231rcHgFYFCCcM6YQ5wvonvDgQnnvz5UHLTUokiiH9Om/JvCnN9QRSvZIrIcXjQUr5xAcQkIcdaYuOl1SsDEOQK0liFKWeL+k8LVjHTC9rtzsgTRyDgZVc2xHjxevf+eeEe5cW1gSIm4Ihj7XlLSHYV7uHsU1WbkH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vPYu2Fs2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vPYu2Fs2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2136C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770742433;
	bh=oV6Vs0SO6OAL3sRtyJ9r2eeweOMa0p5aTn6+mVQnLvo=;
	h=To:Subject:From:Date:From;
	b=vPYu2Fs2DiOHCIKjL4K/dUHrm1jAB1QLEjRVp76drnDcfYto96gxmsTYc1nRlzQA2
	 spxUJYrw6URTBc0wBwU/OKg0cs34xVwIxrJGEH5sx3jiztrTkUzBbD2Mif6vGvJIGe
	 Jwp8u7ygYpW1YKiXTJiFKcRfPZaRz9V8FGu/WrGDV4PG4aWkpyE2Jji2ItxAZ2VFuW
	 6kHBW8Ac8qTfrrVNNZTHWNl9RDVUWQTWvEwOK84N1/4v+RVRflMhclyJSUD8hV9TD5
	 vNHsas3FV/15hpQbH3AZDCXZB31KGJcbMC+IGsM/bh27rUsirs2vE+0xeATX5NXNAz
	 PlHztFH94FPtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A0AEB26E9
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177074243358.9110.7460528412069858554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a81faa96bc406d203181ad44dd5f30604383d0c0e492b8196ac143449d76780
Date: Tue, 10 Feb 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770742433
