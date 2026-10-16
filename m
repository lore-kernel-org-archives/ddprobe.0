Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3884A25C818
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792111834; cv=none; b=fZkHUhZRLKxBtufkR+X3Qsg29wnUFuQAbhQroldmje8HTXVe9nSTHfWDA27T0bd1qaKJLKOZx4HNPA9UKLCV5h3G4ngsmCa1gUkvmQa76LPbtZ3JJPLIIKuQoSKfUittYf4csI9lRsOR8BmozQC6EfF4Yd8dUJ1wSvL/dVlLiYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792111834; c=relaxed/simple;
	bh=2AaDd8EWqzFcdzpuA7aDKVbUCRbk7Xd5TMdadIYQGxA=;
	h=To:Subject:From:Message-Id:Date; b=N67cdgp2c4XURGIZom2Pv2JROueMGLiMr1bdXSt5cPMc1bTqKyCO+5v9PwdvNr1Z3csguAK6GDzkZOcW+NSxuypPmgHhHYdggT04Iamvt4qw7ho6VCaJ5kfnhfgSFapHh0Qt4m9VAR3EYmTnkYNcQ0tvFwPp85Eoa+YKGQNU+Tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+Uwfl1K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+Uwfl1K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA348C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792111833;
	bh=2AaDd8EWqzFcdzpuA7aDKVbUCRbk7Xd5TMdadIYQGxA=;
	h=To:Subject:From:Date:From;
	b=s+Uwfl1KIB5FlhF4KKcsMv52XmTzjpZ3g+7Cj1c+Wb9UNQ6apQ2fyPdswpk98vKVw
	 psD/0HpWaCLhoEBY3fvSYuvRezoqSGzxi89xhwz94DHL0KHBAbpYLOr3HKJe4UzruL
	 2iDjI3/g0LakahiEL5ZuGdmktO3l791rckdsP0bqUzEjcbls/CMH9vnGDo0qOh94Z7
	 28E+woWrkvsjABnNH4N9NpG+l/TzDDpib7CvH2yOJaBmuELu+KW60K+VeQAIdJpOFv
	 /LYluEJGkS3+n+ami56IGGkGEHk2533u0uS/YMmQ1g8aSTo9EVGEL60FrirxWsB1LB
	 PMY/sQaFI05tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9152CCA462
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179211183368.8983.3983450557600525638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ff788699e3ee307d2eef1d9db60fb4362b8073587c41d9a36c17d7504b32800
Date: Fri, 16 Oct 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792111833
