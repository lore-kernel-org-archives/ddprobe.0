Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6978A2F3622
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789531834; cv=none; b=O7v1IMWCBwvwWb1Veou4jjCuHPv9OEnATIeef/hyqBZhi6Re+ehOp1xKjEvyXGjtHoGw/HOfGLIrwzmaBWt1mwCJtTO1g5Hw3yksoaRS7qPDZBe292pddrsJjvoI/y18lMmI7uwqZVXEai6TKotcBpMPp0JneW9VpF6J7QzL6os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789531834; c=relaxed/simple;
	bh=S62JS2wJ3mB4CrMhTozAy9uR09MkbTFs+zzX6AQYkog=;
	h=To:Subject:From:Message-Id:Date; b=IB2e7sK+uEKliXOJP7r0YdkYbRhboCe7MY/pXdAStl123uxAwkibQXTlix1j8ByXPqb196vEMwMSOuxcOQL+5nH3/hqieflw2hEL07velPuiM1/4+0JZ7Mcpumyr77rrW0yEbJIDXtJzNrg/9MRAwBYQhRUtR+5lapqtp6x8lr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EzHq6xnM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EzHq6xnM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E475AC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789531833;
	bh=S62JS2wJ3mB4CrMhTozAy9uR09MkbTFs+zzX6AQYkog=;
	h=To:Subject:From:Date:From;
	b=EzHq6xnMsyZYazXbvDOsZKj+x6DW7BrRGG3OsakAfavM89e53u5tlPe25iEFl52e9
	 xt8LorsCAaBDaDmDk361ViNu0u9uuGThHLoFNUQ+FxNeis8swe8VrKs9qgpfXvLioa
	 cZnVJu0GCtCkHDqVfNsTh92gy1Cxd2hcchm021idSc5HhvQ7251LiGU3bAHRrtJigP
	 VKVMJ8MH2jn8xcgHw6at89NekbvngwFj/SuhWvgujM8Gxb+VFZGCQt2/aL7RxgulXO
	 qhdlAcFzKlOIUZKh5aBVPWWD8tdC+9gp5Ba29N7A0f/8Cxj6YdfY79DtYk14kGV2rE
	 Kv1pu/1Cbcq7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6185C88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178953183372.14658.6459823526118419208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4760570e5ab0c5f2f1c4f1540a920f1f40d97baa45d82127f0074d5cb6864be
Date: Wed, 16 Sep 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789531833
