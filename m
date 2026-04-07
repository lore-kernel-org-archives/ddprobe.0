Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8631E89C
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 14:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775573134; cv=none; b=Jp3xuboSGjkn9X66qzuAGXMrA3FRe6vbz/lVUkZIAGhXbOjotdVvS698pkD4fJE53f8teCCdQ7s4EKYzX2FhYP3Kj8jhMZWd8Mw9RKUOczsHfgaJDcnaMQ6hNQViWQd2fe4OzW/qlBjfD0MIiosQmGKkr58Cvta4uBSkXlfSX1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775573134; c=relaxed/simple;
	bh=8cqshvLavDtDgG0i0TPoy17FUL0BF9gesFlY59Wz2HU=;
	h=To:Subject:From:Message-Id:Date; b=Y84Queb/DCcDMhu5+C4GTsVR2ING4Vq5J4MvzLRmhlMDV2AJkXPS8xs3AMAwXPGr4xq7nS84g6FE363CIgYJAhZr4OTYn5k57jP9nSpaT0LFLdJEzu5yjTqUGj0644SRIg0VUTCgg+fPL2bsSSOKUZG5EQ6UQ7l+Gh54eKg3AQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQlMnF0D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQlMnF0D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B92FDC116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 14:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775573133;
	bh=8cqshvLavDtDgG0i0TPoy17FUL0BF9gesFlY59Wz2HU=;
	h=To:Subject:From:Date:From;
	b=YQlMnF0DCZwseRaz7nBQh4EW7ypW03dWH+XwI+QkniJ6o0Dark1gcsQjto+ns7wx2
	 7I5EAIEVwIBzINTpaOSHkFG5hzChzSz0SDupA/Jf2QgSHLCkBuHajzbGDjMDaonv2Q
	 3MwUMkJqISesM9mLOcLI51KELRcqPzpZxbFO/GK1lP1kkIGAEPWODuK49044XkXpiR
	 o7+UBtk6e9ugsB5Fr4lmBcFKWtyMWKHu2k27lXNz1eCjwA5Szs+pMEDR/ZFeRYUARV
	 mLjdbuRg0+9Eziv/tGl62mEmsgoly0R8F+ePApYKRxlyEoy+o1b+RpPhas3g1QUAB/
	 vQNMe50i9zGDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E1FFEEF49
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 14:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177557313368.29119.17105816981301416939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62f84589b5876e06aae7039d435e8e6b59c2d2e4889b559ab3fea575f6f9fda1
Date: Tue, 07 Apr 2026 14:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775573133
