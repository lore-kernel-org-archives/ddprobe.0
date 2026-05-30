Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F8923394B
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 20:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780174474; cv=none; b=fVu9nTplcgOCG7wu8+kmVzzJ/swchs3WKT7p4YXwjhQjEkIwqec6I2M1ssxlqGADJ8SvfD5JcwbfMk5PGwFlk+l6RQKXdt/03B0ZPhCmXGt7+oBwq5MJUgTDXje2Ljqo5ViQQb0aiEpzPGvXukjKq+r/eIAHOa8212yp00ok450=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780174474; c=relaxed/simple;
	bh=YgdHsVSfLEtCEMugx66rX3Q1MENnBNowa91TnP784V8=;
	h=To:Subject:From:Message-Id:Date; b=i9KbTULCq95SSO3o/0rNK8XrJv+ViL4o/747jAG8XCPPMt60cwddd3nofX+phicuIvCwuQ6Uscw4YkxlxvsDKBl215VaRyU7Ea3iAugwXsH6Fne3xb3XQMgUrAR5NYhn4yMBbsvxS9PKGokSdLYoMOjmVlKFtTZb1epWCnfOHNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awq+6mWf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awq+6mWf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5EAC19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 20:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780174473;
	bh=YgdHsVSfLEtCEMugx66rX3Q1MENnBNowa91TnP784V8=;
	h=To:Subject:From:Date:From;
	b=awq+6mWfncmN7qTSmE8oB+ue9ooXakaWE7bEqzdHUY9G6/8lef7QvWlFVPXPrfoiE
	 IIA3saeq7jZg62x6gzc0yFpiV6tgSR/9mqrXWkv73948BPwt171y4mx0giZfPcf+YT
	 zoLFLwmv5kgJlmtDj7UPPgzylZ9wTWYN3U9PDE6kVXYPyM79UKbrpjM7YP8Io0PIYq
	 MxRyLvawEDx01TeQafAx/+EBh7rP5k6q6qrUcSa5hq9FbzcbJno6UNmzMVAFyuHaBN
	 cQVMgjQlFhNvB8j4dMTX5O7bZVWrz2zSY/7KJuJ3T5sxHfoAcTyoVNWJiokjLEZDr1
	 jDIXfKgpLWmWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE895CD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 20:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178017447370.15670.5362223156601070169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ab0453112c57b8ca0709502867a7443793131143bd4b74ced37f1e998b26351
Date: Sat, 30 May 2026 20:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780174473
