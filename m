Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6A1381AF
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 02:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776393454; cv=none; b=DJPihqGtkBeCkByvLmXJZALmkc7RIdJICEf9FE99HqPa1nzFL8BlSLKPwTc4G7J6t3JRYTAt9PSrSRz7SZfkMkIy0qxeTzJnFg9FSP5BxlljYN8kQGl6+v5SAUG9omAHuKySOVkBWEdNmFvfOqK5hqwk1Idhm9lRSODYKLfoc9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776393454; c=relaxed/simple;
	bh=Ij0mRmM8fvMFnsykqz18waQNWGsckL00jP8dCiwkwS4=;
	h=To:Subject:From:Message-Id:Date; b=bnrRHUhjPEKfuSYHDaK+tX4BS0P6QWWh/WS6u5OPoumbyBdwA8eGjFCfAKJ568fNeASpMpYFNGeWQazx1L00n5LmYmDA+4I6WyjkP5Fbwrg4bdMym0vcAYsS7ZL+G/GlqU4P+vrDBSgDo+42+rlaXTBoEo6ocZmh+TBSAPsXVIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/K7x50/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/K7x50/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBCC8C2BCAF
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 02:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776393453;
	bh=Ij0mRmM8fvMFnsykqz18waQNWGsckL00jP8dCiwkwS4=;
	h=To:Subject:From:Date:From;
	b=R/K7x50/USSJol5CVVa7A0ZgI3Xfh0RdpI3+xJq2x3b3ofpGFITc9aowld9e+FgSR
	 2jl8zc0ubvsf5xzoWsCdaDruCXntPwPrB5VSB3nxt6L5zUFOiHbmZwMlsBa3jhn2rf
	 +TUAB5iHQM+Eg8ya5DDaAVhSUMulVXbxWJkX/f2EBHyXOTJWrLSO8PGRVdBAt1umHx
	 hflhj3xyr5zoW4a7jJdXblEsUgzpWV/TpfbR8wjMS7Y2vURqFQAAwOKsveMSF5zPbV
	 lxe79SBmHNlP8f1w0VcuMc2ABSJkpXpOZItADK65agUakjJSmKKYYzXmX6TUWsmw0J
	 zwyfnpiMvcv7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D81F8E499
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 02:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177639345368.19244.3066629452533627836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59e57fcf085e5a8c64320208a3f66aa92f0fd7e683f0c8ec3493667e1a58a68c
Date: Fri, 17 Apr 2026 02:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776393453
