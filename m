Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494A2446BE2
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786995634; cv=none; b=a+0jiydIZi04Pc7ajdu63+1e5PnQ895HXbIL1Qo5UHTZ6HcIOG2ivPhx+BogGxkBlChxt18OYWLQuqLOJB4hN6sDb/kLpdbAlLvpZwFB3pKTROY2cd2m4TI8ZE8lxGjQKi2y/2OTn5g46joIhAkLKawKpl3T+90vol56N67G7y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786995634; c=relaxed/simple;
	bh=dUBoxXVOVjFT9qbxFK+lkbY1uP80cmkaFA6VlDHl7Rk=;
	h=To:Subject:From:Message-Id:Date; b=fUeLMnVGmWr4JUizO6moh1rquu6eGOk1KDuwBxeqZ87yRejiXNJoVYKWm2LDs68cK320IpHGEvfbEFVOAoWAtIKSwogY73C7pNg1Mjsc3yFIM080r5+yOkhr9tx5bvwC6H8Hjd1qUGjJvP5Qc92Xi+7szQMHBOShGbfOsGDji30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q8zRNatf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q8zRNatf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE5AEC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786995633;
	bh=dUBoxXVOVjFT9qbxFK+lkbY1uP80cmkaFA6VlDHl7Rk=;
	h=To:Subject:From:Date:From;
	b=q8zRNatfZ0BYcOsZH30kzcAlpUM7l1dv6lqQQrJ2cCz3GB9pJGogzMvszoAtVwu1K
	 RGPkoAMTuK2hHNjQb7k7Vx/iGGmdeqCHdZd70kI/V9cKWzo1tjPsd7tw6jmIEUzzY7
	 hnNLnQEQYwrpLvkcnMMYPkOvOJJ6EVfkJGechJ4lZaH1Ombyj3g9VMCIwRr6Gx+M9D
	 XNrn00cR5Z5eoEeiI1Gy/h6SNyG6H79ADKZhg6cmLUtdxq+pq7svOxo4BIn5hX4LIR
	 6enOPhMOkZIhTVVWBeI05r5KkZMnl6lgosPkD2rgx/NLyR1MJ7IYjEb8qOnlQC7D0u
	 qAv5Tie9boTlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAEA4C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178699563372.11395.14624517354238062071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bef4f60e2bf2d2ba4323412aca52ebe811dfe650f47461bd869199f68fa82da
Date: Mon, 17 Aug 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786995633
