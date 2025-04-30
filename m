Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8FF2AD00
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745982594; cv=none; b=sg4v6s33+ph7MWda16EwgxJix4JaUHR1Ji2+Jm6ysbtRClpsAIYlXsUdwmevNAJWz5TROcSbyou/9aw2X/F3CyZOWhesmyd8+7m2ECOHGMzmlmgRcxe05Rrj9LJGbIYCF7h0+huwHndPnhyJ0TJIDkm+sSaaxZrQS4a/CD3nUk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745982594; c=relaxed/simple;
	bh=fUNh0bu1Ui78VeXVVZTQuqDZPs95Rk47Kz1TKkY0FgI=;
	h=To:Subject:From:Message-Id:Date; b=am1aw383Dh04pDZ/lQL1Hj/7rb/MYUh3K57OPUSAc152b88vJGIj/9pP+T7gZPy1miu5NUMoF/ptArYzbwD4Z6NFSQ+JEjxtvYUUEo0hB5VqGSjvRELv7QhIEdJYBQb+aBqq+5m8tPN6zmYaNKhWWhEBKTaTqTK4fLDpdHmPhI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f13JZ5bB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f13JZ5bB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA609C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745982593;
	bh=fUNh0bu1Ui78VeXVVZTQuqDZPs95Rk47Kz1TKkY0FgI=;
	h=To:Subject:From:Date:From;
	b=f13JZ5bB68aQwd5ILGWj0pwCJlI9Sx5/QeEAMCIUQtsfdL65Y4yxV8vIXENdjc2g/
	 x+tsz6jFfM6n1kS2UU7zQ9te3FowKIq6JdXpmVCZ6nb0fy+vLMJMnJzc0cycXo8Ejc
	 v0aE1a2VKMBIDx7UhJr9ZJAKTWQhheMyIuh/ny2QyRm3uY1cuKeaHIxsoiSMHAr7Yz
	 kAYBYktQfbXDpWi1QkoAPoBXi/myRqGJrbSlaxjJgxJPmdIDY7dNss3OzByVEmK3w+
	 9IxNWaaoxmhi/wz/QHYpPfEXbLiEpR63rb+mAxaGyXJJ65xUTy4xAd0bI15p0zzXFX
	 EHL5UbltFoeDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9513CC369DC
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174598259358.19640.11266578382062146690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6dc784564a4c4ffae2ea5e4f6340916e21b8d357edd8c4b9ee1359883d47fcf
Date: Wed, 30 Apr 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745982593
