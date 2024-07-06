Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 635B723BE
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 15:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720278983; cv=none; b=M1fx+pPTBBQRqz2xvy6BRyeSB/UBiAXaWgLjLhu/J8us5qYystI07+iPA5XqnubSQ/GWbfp9MuGRD0uiiGUy6evRBuXlpE42wkDjNYa6125Z6dDJ34mU6GFc85F8mi6Rce4oeeZSsHU1DBsQkkWMSi5LaOeHtT0ey/vE0XpojmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720278983; c=relaxed/simple;
	bh=JthAWQwqlLsz2X5Lv3kHoK5ClQ0EJ47ZHJSuPf83vBE=;
	h=To:Subject:From:Message-Id:Date; b=ATNOofOVpVJV0IZmyPXr2vvLbzsggmrrfVNO6fX7Z5OeCGi09CG6gvB+UcOwxPPYL6I2HN25s2yOjnzEs0faHb8O1jdDF2wPp291luh1W+MYsegDKY+gXMNhj2XTR5rORQsXZo59Zo6rETrOLSt1Ksr2TYpyixFF1rfGtQNAVs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHQQ0baN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHQQ0baN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D833BC2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 15:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720278982;
	bh=JthAWQwqlLsz2X5Lv3kHoK5ClQ0EJ47ZHJSuPf83vBE=;
	h=To:Subject:From:Date:From;
	b=sHQQ0baN8v5OhP3JSNkiSsoXjUOXgSxvvBvCcVv8Py+pHYHGzlIbzTEJJwqo+aIvL
	 skFplkIfN8k40+nxSNFFE1897Ne32D8OhALPWKQbiKD2xFtwM9gpulmbXLRDcZOHV8
	 WFnZ+BF6gUaqQgF7AAv/xOk350zDJ4rjmN6p9iuce3P5BOmBGS/N/SbQAKCqpQ5/ej
	 9jwmrSqr83Mi/ksyj9J5TxLwPQ70JMR7pVFd1nC4TbfPWT3v3kDIz7sciwvkMWJA4g
	 SGLTYZJuwUUVUrTchV6+o0h/qgHyljOB0XYNRY7B/a51tys7alJi2cSoyRkULADRfw
	 T3SO0EIwVGNog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B09C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 15:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172027898276.21047.10662553532891514098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50f428421e2553f90cbe86ee7f3d86806fbe8aedc99338e18cee4a5b5e4a1237
Date: Sat, 06 Jul 2024 15:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720278982
