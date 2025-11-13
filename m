Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB0F1494D9
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763009394; cv=none; b=CIALOYu/D3cJ/N9x/pvhnSnpNhVoIG1eCDsWR0TWBFNiEBk0NOLe3PxEqC40XZOixxlDU4PfyvrfDzZ4+el8AcG2jMyjUpWdwzVcaHIT3lUrxJTA7vtuT+xgy2wXVzZXrGyN/fe4f/XE05q+FqYDiX2ZRRXM+2m6R5OXV6Bg9R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763009394; c=relaxed/simple;
	bh=cmqOgtLBLqjr1UozLIltnYM0XEYMllw1Pg/oNxdw00k=;
	h=To:Subject:From:Message-Id:Date; b=MBhrVdPuEeAPdpmzJi+/R9JJtgmWsGLTgeLEp/OG2Xu9EWpL3VnjGTRgTmru0MBVbs3NIyNiJ9YoXUVVH9Tpl5mEb1LUKf5rXytHzoRPPe2k6YqLIUmLPmGGL5gPEiIUubSysFNce3Ac7LTjW4dE7F6iqcq43wDi6vMHeyhmi7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iapTQc2N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iapTQc2N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6241C116D0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763009393;
	bh=cmqOgtLBLqjr1UozLIltnYM0XEYMllw1Pg/oNxdw00k=;
	h=To:Subject:From:Date:From;
	b=iapTQc2NBVjHqviEKLvT7+kydXL6ZqcC69c3+fB1wIjoIgo//hXswQRDju1pfXtt3
	 vbQ4RB9S1RRV3GLtUOJOaPZzFzAtf5R7tCHEvPoGhT3TAGaLWijEh0AH6aFXhUE0qX
	 2x9D45heIRv/v0xi5y2Q6sQr5222pakXXOolXQtXisEDe9JThVimVzFZ/Ql2KqgJ64
	 C6rkvxvJd3lfs7P32e3tHvT4L4p1f9iBixzFvy7lqiBJlJ6Sw2tb8ZKxJbfjE1x7eE
	 zfu4ERrXiYsaVPhHnU00u1Xn9STX1CW6q9QWzNpq9RvxKolJkvIHhOehNe9FZ6UJzr
	 BA2yXjpXawXAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B407CD4F2F
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176300939359.10892.4662132538380032797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3229613c0062f3a0082637e834322dba547b3b0f1f5ca08039a3190249e7c018
Date: Thu, 13 Nov 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763009393
