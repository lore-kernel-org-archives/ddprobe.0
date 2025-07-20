Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41ACB1A3150
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753051794; cv=none; b=nY4ekIJ/0xW71pLoA2IPjlMbGqiXJRitdfVf7TpjIXkFACf3v7ekTttoxu11IIjuW5DgSvd/QKSJdh3l2BRijvKJh/7Miq7kCicJlOwbzJsQtP4YtbZYrIuiWb6EZXuo1kOVV7SlM+lELWz1BCtMT1EOPlZD5MVCThMSh+aVxxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753051794; c=relaxed/simple;
	bh=3VcBxJyDPaq5hpcQLQKkmUD3LYBrLT/631axv4Nouxk=;
	h=To:Subject:From:Message-Id:Date; b=m/sL/AZIigQxvCNLDbp4rboZFLx/31IaFs7ngGCOH6GMvqEm4Z5FFHMuDNoeIXTqHcjTiBMwaA3I2ZDuIc6npg+G5i+4nqfLtNn2p67TTz2FwZGxt5C2jnGS8wSykQvZP4GgFoEgn6QXsiWJkfp3vyfUPY01rLi7TGdFNtjFRYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WlAAfnXm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WlAAfnXm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52AFC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753051793;
	bh=3VcBxJyDPaq5hpcQLQKkmUD3LYBrLT/631axv4Nouxk=;
	h=To:Subject:From:Date:From;
	b=WlAAfnXm4v2SE0wTqyJ/KMa0fD24FL87qcAeBECW6Rm9sLTzeeD2jPv7SKUgbE7tl
	 0Eb4TajAGsuwuEwrZZdDLzIOEe5Sl/lcCLZWxK3bWtQqhvSvC9MEjDz5k5YcTicV9c
	 A8p8LeY7SKtzo69rDj8AAqllyWBqKZr2D6tkL713yM4ArvScOEXFnPKcd3OVeGWFA/
	 KTVZtsZ9u+kNAtJhdd1uiqQHZKBo9WDEvEzJDBb8u9CWI1HiQ0JWkeAft/dhy2IGBI
	 wV+MVilVlsAo6zlM5uEs8WFrjzFH2n+Al05V5kNiz8vbWPnyoGyBg+pFfntL9KiRtG
	 RP0a5kyHU6IeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9611CC83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175305179358.12008.16844865139323609123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58719c279fa75470c4425f86cc93901b5f6db4f334ac52ca1b3cbcaa55b87571
Date: Sun, 20 Jul 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753051793
