Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDFA22A80D
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786075834; cv=none; b=e5BpvtvVPXC4IG2fyJtcSylnbIrgbIBYKo8fN/WTH7a2ghyTaiXcx/QDKI5zLzWB8DJiYfBgaIKkTnxeAjZlM/WTuKNqBdXcfMHyUAy/TetZNna2+xY11VhiOmcK3NwF/XNLDcIvKC/L32nzlSLMXabyiy4Xy3+we36f2W3HHos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786075834; c=relaxed/simple;
	bh=BceR3nEjQr4YnAEhWrWHya5F4XeZtYcv+Gti8Rdw5c4=;
	h=To:Subject:From:Message-Id:Date; b=WbJQXP91QQiEIh0vIHIX/AcT0UDoKh+3O8irc3BUyf+6Zkbvq2I+6+KxOO92QOrARSfObjyHQHPJ44yN/2HhWzNKT0afgF2eyW7dy4voPbxtw0jvQs9mJ7o7B85ocOrDRVYNyzvtM0l9+JDcJ3xdi2cBFZVs3xvXidCjcWu8tJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bFAGZA43; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bFAGZA43"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0261C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786075833;
	bh=BceR3nEjQr4YnAEhWrWHya5F4XeZtYcv+Gti8Rdw5c4=;
	h=To:Subject:From:Date:From;
	b=bFAGZA43TvdEK+WUjdFErHbNLMMV/qc2ZAozEH27NLNNA4um6SNtxtAx0ltDB5Iy0
	 v6DH7rNdeUSDi1M+L0Ug2+3S25XxQoImmWLaZPpz8gHbbL9rPQp/tDUGyTr8HyfwYN
	 HSbuLfE0df7MElWLlM8zze4kBs31RHpdi2BE29WxoEe7YEZSOpBMeKNbC6M2OK0Sca
	 o10IuNWRclZroYDwgtQUrJKW6jx8iP15bka++pgvt0vFi8/KB1pdP5OmWAfnUQhYbQ
	 PwItaTu8zLaz12lVT8AhJ8mwJHcO7KkJMqQzL/8TUUyslbbLktAQbxHZZ8dqad8TDz
	 Hs1vRQSZhAvKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB60CC5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178607583369.564.7801595731713250657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4af06682b6fc1794e6f110e4ec3cb1333f4d71bf1dc5f4c7746ec837f558225b
Date: Fri, 07 Aug 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786075833
