Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BBFE254B03
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 21:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765056174; cv=none; b=SE6pMebLJXXXIImfcn12U3hWadXapuYC7MbkZ+bTlA6gRzIUhz3PUiOOS/78wS3Ukorq9NZLnJy+5BG94DLJfHExiyV8c7tg1prvT8uXnAFueRQtO9iDZtJOXq8EeVdu4xPvXV6yjxbLgcD6WrJkNnA73si16HI6+6M7FVUCpkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765056174; c=relaxed/simple;
	bh=jAXtXCaNejQD5uqccC4i9fps7SCt0oojPuYSamSOY+M=;
	h=To:Subject:From:Message-Id:Date; b=nuLOykwT3chsKUuwfRlN96IHYjHr6BIrmJJHe1Nvpt/KUfCdRtfP9TwDv9AdCfzUjuzXfCxAZe2TrqmtSBTbQWdotCapg4emgdRnTg2ONOGOOh3ODfHr1Qe6zKcX4R2/QtiV5/BnTYn77H+LxDdwtpV85yEyUWSN9eobPYVba8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fqIXvzZK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fqIXvzZK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE6BC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 21:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765056173;
	bh=jAXtXCaNejQD5uqccC4i9fps7SCt0oojPuYSamSOY+M=;
	h=To:Subject:From:Date:From;
	b=fqIXvzZKR+Xbm/N1s+qP9onV0k5sXYTLhEL4ecnX9PxtNfKBGrTmxYkgzdV5vlkmU
	 cMWQG/JDUN7QVIE6zwWRbKCYbAWzW8+g7NfNnhz8vWKFy5qkquydavWkxtbYk/gVlr
	 UHpomahoOHp1ewHUaAB1Dsk58sI9bOaiYVyMmT4U6xbOeO8b8AEtG4AX1KNpSDdYH5
	 scPTpGJ/3Ng6xb/r0r21bZz9H00XCaaUZynSlPPd0F3japieD1sZQIjd2U7lRvkXZb
	 26/FcVZWzmwkwThc8nps7/WNiIUE92RPiLXVHIj/fgjEd1ugVKqToRrrc1sb8YuhVj
	 YM734gtuc1/0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943D0D3B7E0
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 21:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176505617358.28175.10930999830697260953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f54e73fcf1169f66bcf368d13c3c5a33b92d4c4bad02e822aa1101a773cfb66d
Date: Sat, 06 Dec 2025 21:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765056173
