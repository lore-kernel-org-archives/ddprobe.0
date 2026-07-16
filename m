Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5CE30BB9B
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 01:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784164114; cv=none; b=DDhQxN69SwaMX5TSxvdrloh1tSaSbc4BNgjZi2bLBVdZFVybnhh6WuNiUWmbXt1twDAWysLaK64tWV++9VdJ36jFG20AWwJSjbSp2NXPoT7AfRiJX062JYr+N+4byWKFoY4Y/aOIB7yGMnVmZa/QPnuq8rOO6kicdnw+Q9gXu2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784164114; c=relaxed/simple;
	bh=HJtvB5vKCsenRF0mlmkSgZxYoQM9EfpNs//vTadh/cE=;
	h=To:Subject:From:Message-Id:Date; b=O9achRwzdLph9Ymdcn9OIkFZUKx3yxwfmJVlgjBPHHHN4KR7jEY+9Iu9oL1iY1QvpmevlICyJvb+6ARQhOuoznBhPEQ5II+e8hLOQfNEttaHFol2VJb8cg3KxPDOqFG5cnKadxYqGzM9GKYTZlF9LwpxjNj8T/fWoSIuLO/f/Tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=txmmEddB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="txmmEddB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC331C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 01:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784164113;
	bh=HJtvB5vKCsenRF0mlmkSgZxYoQM9EfpNs//vTadh/cE=;
	h=To:Subject:From:Date:From;
	b=txmmEddBGOvhxjOzwHShJER2tOt7iLyldKLN2dFZuxkE/67KXAOtO+MznNYml6PpD
	 DnFtcYIPNcBxxeLp9B3dHA4uYI4PZwLLLUTduKwhIu1OeHh5Lf6ypJWQpGU7uMJtcH
	 w1az2rgJD8nqhof5d3TTGdlF3P08mTun3UNckkVWCC7lqsHtv+zWFv8GG0cCXyq9V1
	 oFIUW9cHKdDk15uFRBlS8FtS7Rl5wYHnMoV3zn12SLKJBmS7KDGASE4LA3IfqEnpQ2
	 RXxuE2zc3UMsUOD1Tv+j/DwZNuH0xfl8BkOWJOqRMKWuhz26BBgzhoQEt2YdamaRe9
	 dE51H/hNr6bUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7640C44507
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 01:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178416411373.30296.2339963222456187464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 434cee18ae0653a239ea1746b77ad112c54638342e707c98035ad2d366e4aeaf
Date: Thu, 16 Jul 2026 01:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784164113
