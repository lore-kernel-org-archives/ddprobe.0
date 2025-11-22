Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29203224AF9
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 22:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763850114; cv=none; b=AiZq55Oifna8ubDNfNbhc4UCP2NCfwBMpp+bFu2rl2rOfsi5v9Y89XK8Y4tkKZbzRdZCjcWOUkqEykHavxYSKqm+7s4yixWqQcqVVtbuYbQ9UzlfOjpLSowbkFYqbuQYMaDx1Pp7veSektdppOr0YhB3crEKd6kSOjHpCJfXmpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763850114; c=relaxed/simple;
	bh=apDTStzwp4DgXNkC/dw3pwVxkW3I/2IbqXKJ3JwxhBE=;
	h=To:Subject:From:Message-Id:Date; b=GIqVaLSQtxkmHSFqr+i5pDrnA3ugqh+bqEziUSYTx3TKWewiteclSDvXCjCXhYc+D87UaDJC2fe8b3o4XcgevesEfb+EirCrcvjnWZEoVsRtIdhL3VvI8Rln3F1NR+dngY74XKRPCjXLvS8yQS8ts4yWpfS/ROqMDNoOkMZ1254=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/m0xt6Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/m0xt6Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9587C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 22:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763850113;
	bh=apDTStzwp4DgXNkC/dw3pwVxkW3I/2IbqXKJ3JwxhBE=;
	h=To:Subject:From:Date:From;
	b=l/m0xt6QbY6SdRZdYDsMDomKm9f1hTilZYxMoqfZpVqlLphx8ZiARr37fy82Q++Lc
	 X3nXa31VDEbgyNnz5kmBHzs4LqOF5TfZxXblnZgEeedLomyBE3/YReYri8kIEfG19y
	 /AH9GeaHr4JE7V6d6W2byYml65u1VHy7aY/QOssR8HkoDgJ9zrZvByBYXdeqyD5ek6
	 iC8bg8VdS2luUmqAvW1gFmqXXzgDpLwWuXNrbkp/G79J06lma/cDY52xiPpeKm2cy6
	 VenXcyBaNhRIkzJKVnnrHBIGemoBe0U6AKf4fevBYUr3xrS6vSng+tTED9CAJmfmLw
	 gMoE3McoE7Pqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970DDCFD312
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 22:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176385011358.26353.16009968634913129840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4035085ed6cec265d5e212b3a2acd64b11c53aa57e6ca3efa5e3cd1010d674ff
Date: Sat, 22 Nov 2025 22:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763850113
