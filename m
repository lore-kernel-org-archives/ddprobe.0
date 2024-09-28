Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C524C6D
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727500554; cv=none; b=r9yHMnYRoPq9dR0LbqOnbiZ5xRv2qOy33D6TzsNPxHXbVM+71Lzfn6UOCbBTtghC2k7dur9Jfvj4RqcU2i0RFMWV4l5TJAfDvSSvqaIXfgUr8UXWNX2xydsF5uu8NIFwCnwREGEJR2joVR7qKJK7LcmENSQ7nK1SK0laLotfgYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727500554; c=relaxed/simple;
	bh=RaShFF0lDx6wW0D2JBQ9qQ4DaUzCCEMHZEjsqfyEdm4=;
	h=To:Subject:From:Message-Id:Date; b=oue6os8ibLRgKwok7YGGdxnGvqpLgT5+t44fOdfcZeHA9jJa8tQnydgo5pM7TXUwTAOT7muEQOgwXKrkpXDQ6fYK4a/flVPhDCos3IAS4mgvVRdgPfLRLg5CJ17+V8iYFvAppwZR3S4kVv8pPnSknpdnaicWHk0SlnxwzC1c4o0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lYMcghq/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lYMcghq/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4241C4CEC7
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727500553;
	bh=RaShFF0lDx6wW0D2JBQ9qQ4DaUzCCEMHZEjsqfyEdm4=;
	h=To:Subject:From:Date:From;
	b=lYMcghq/EbdWVXxVPULv9Qsv2FxIpnjKcfWqXPKr8aVJk02oo6f1XvWgyhixDII61
	 GdgcBN8dA4Qtb5IJ+kbF+RxxBl4hkvLLrdr1qXCPxa4kyrZ7sAhSS2b05Gr0eDweNu
	 gDXCc00UH2ptsj2IH284qpyrZKe31p1AZkmRblXqEg1s6NO7tZ1LxFzLb7oCER1T5C
	 WXDPAm2JuppYZ8/oDvE+O4W3g5SxAeCK5p8/o0FKr+Vp9AR/zhDTn9Wjov4KKfZZoP
	 ijMpfDCGpUyWmZ9GN+QlDoXHaMeoHh+4ZM1eYewse8mYUv0LxzCI318FDBmPHChUXY
	 jUEqtou7kALfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945D3CF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172750055360.27407.6678354383716247360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02a81692d1b5006792333985a7f4d6a34d7adc381332f459b20a1a6cfb2c1fdc
Date: Sat, 28 Sep 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727500553
