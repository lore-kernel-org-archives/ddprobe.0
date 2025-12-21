Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0162E3A1B5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766321634; cv=none; b=S9akTZszOr8qxsjXbN3xaSpNcoQ/ByDkwIHKSoQ88sWMOjMLLK40CGfh21Tjgr+GHrkLHR7aJIDAv5cDhcecGn3EEyR40OxETIfCgD26SHtK42JBR/Uj3+wSeCmxXpE2xlb/anxtUq6KYVYVWXpVuU2mv6Wvbz4ByI8wrxUIgZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766321634; c=relaxed/simple;
	bh=+OTOXpsZIKmhsKBepm0Zz9+VB2QNp574gJJauDukYMw=;
	h=To:Subject:From:Message-Id:Date; b=KyW00C3yc8RY7hcKje+bMYiQ0PHqDKdJV80kn2Y1ssBSQkShNaSUNF/G+SubqNEiDBoyTugedUW00ugiSDMC/TU3ys2+8t6Kl4+Pmhv4rTvVql3A3+GvVYvgKfP6QBdZjCJ5LbKB+iqGyYsqR1lmg4o4z4m8JrKNgGAjS3DrOvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hrQYzV5J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hrQYzV5J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49DCC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766321633;
	bh=+OTOXpsZIKmhsKBepm0Zz9+VB2QNp574gJJauDukYMw=;
	h=To:Subject:From:Date:From;
	b=hrQYzV5JIcd3R4xS6AVCz2Z5enjvg+jn/WM7SxG2LITkzJLJgcTsrCE0x7jEa3GPC
	 OGw6MA2xIPiABd7snIPg5+MJV6uU4J+CB9Qv+zYmnAoY8nf0sGeugy2uVSg5ndzhcC
	 mFTwMomGworSLEuwitTZesA5i1zWVz85a0Akkukmir7cTYLk3MLUpF1bBlUIPWFboW
	 DJS3htNo+D+0iHswqNSwp68HSkNxc6pDnLPQW1C7hN9xDEvu3OcrXnPVMAYA6uaZCG
	 P2Lj8K9j1hSrTa5o/Boc/HBh8FqCVW8NkdAv9E5VKkcjehcnzzpUtPHxyH2/FNCZ1s
	 XaEG/rGBkWgkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C96E67482
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176632163358.26068.15143287465705252301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62fcf69ffb21c483d423e1c5c53f85c680fd2d1f3577ce3cff3140540598527a
Date: Sun, 21 Dec 2025 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766321633
