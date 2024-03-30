Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 043032231A
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711837697; cv=none; b=JMCyjtrNctFj/t7Ym+FfEJXwcKBH6Ir5zEn413uVzdsnuNFjX8VlYc4EslYce/lYfD0q3oe/QOkCCCWpIJrNo100Bdx+ybjm/IAlvl2Ov73NCnN95V6g5lzNRbL1y3kMsB7lHKX9EAByesdo1a7M0yhAD39n0Sf4kJa55ryTBoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711837697; c=relaxed/simple;
	bh=0j6xsKQevkKhorcjMAyCZ2ybL/HsFBZs5qXyu0Z81JM=;
	h=To:Subject:From:Message-Id:Date; b=VVyM8NJBMkZeMAchomdINQ69rq1XufovwO5/YFo4Or6RWta33roRCX7CMry/qRNWnXjC0MPJroILGMzgMiWTYFDErtN/IL6jFvDit3qb4ycMahkYE8TYyvXWd+RQgSMZhsXalJRTWAIsINwcMrTqPFuW6hW3+C3AohKw+UA0JVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jI9Jtitt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jI9Jtitt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 824C0C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711837696;
	bh=0j6xsKQevkKhorcjMAyCZ2ybL/HsFBZs5qXyu0Z81JM=;
	h=To:Subject:From:Date:From;
	b=jI9Jtitt9O7Eo6nJaEec7iWlsXuGqNvpFNfEhG0CWkymJGUiuhxZ+F6rF9S4ICTdj
	 68Kuc/6VKwHx0/u7gROczghJ+RKx0Zz00Qo0qvP3cPKbOzH3nT8qU8JfSLgPlnM0Ou
	 nIGhesNKgVncjcbEk3qdyctkceic+V4fPVrthU0B5YDMYPWsIfjs68A0n+kAduzWBi
	 LWc2wObqkurDf7UxKSm3Qg8cvsdhPhUY7skvGxNjNzj1UNoTqFyCVmiNqlJ9wRIUE3
	 zC3yKJImxM4aUGC9S6KOVa9SPUAIjOyaRKZN5/TJAiAHunqxPnSAa6qI7Tg9ruPF76
	 cakMpnAFIz06Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 643C3CD1288
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171183769638.26833.4033708773943919979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7042efff94d2d0417ebc2d00f1fbb3b63fdfa7e1d45d97ff69e78af65531561c
Date: Sat, 30 Mar 2024 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711837696
