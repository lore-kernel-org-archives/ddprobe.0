Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9CA1E0E1F
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758815394; cv=none; b=VS9TwekrLm3fL0AY/2ZX0sHKM6Fls2HEwWkVs3QfW1RGAWCK6GkxQnHeY1xli3m2HwrvMO5ps4QLrcFF/cyvg62F0D4zyCoTXkoIAZ2RJeIOhQPhMeC7NrcfNMsBApx/Kc1bQRO/j10FrMV4DUJ/TRhhZWK3g0gE6vVyTgkYlFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758815394; c=relaxed/simple;
	bh=U640lQkm0/4WMuuuTM6cOJsHyjrW2KQ1RxPUexfsSio=;
	h=To:Subject:From:Message-Id:Date; b=iAsBu2enl1zDlrZrO8Mj/cWrxEWVS4g2Fc8X/T90crzfsHrrFK/RkDE+52Zu2AmeaTEXk6wmOIkAneRmxs/5kiDTLB6jyQeDpGp8kspOKcytM3dNSOxs6PzpSFMUnJWv3LN3d2NpdQAHssOsKVVQYgDU37f00W2Ayi8dNhWEejM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A1eLXP0W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A1eLXP0W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1739C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758815393;
	bh=U640lQkm0/4WMuuuTM6cOJsHyjrW2KQ1RxPUexfsSio=;
	h=To:Subject:From:Date:From;
	b=A1eLXP0Wb7Ym9QcS1RN/6twFHCHrW5uvlVQ4BVCjTNU5ftPyreB1rY6WtBD7+DMYH
	 ZU4wVksNrbFBpNwet/5Vqea3ZpEfgPf+5mmsdQb8NR5Db6wB/kRm2Pm7yITIP3IDoW
	 HRcNPIHLPKCl3kAzuUep0qmKuDTZRYaWjLvUzdK19/hifg+YnVKLC9FZzlIkCuSGsl
	 iR9jD+rnsnrZQwDPkFdRhN9TmNRklawMahbL4AnoLIYpmqkIdQR6Bl3Helg8z/IYEa
	 1HNdP2x5b6pH+sEtW44UhIM2zvBTzgQw9oIWlbZcaENRd7VjftXPrroC9L7s+t7mIb
	 T5ztN/1I21W+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90299CAC5A7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175881539358.23955.15255622536446176490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa937ad0710f0c40fa5faf625133389de56cb75af97ef89430f94bb10963cdcb
Date: Thu, 25 Sep 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758815393
