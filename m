Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 651B530AD05
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 13:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781616994; cv=none; b=oRvIEB4AcKRlPnh6xKF5dnIzQd5Kj0um0EA1TFEnb72mc80wmHQPlsbZoN0VIQ0vq4qTl8NLMgcFCTH7JjtKqDmpkSD677lhkQvVeFDADIGjnMZMl4LIeXC/k7/Kv+iY7IfjiPFh0Dpv04/9i6osqnONGT8reFuBYlBurqF6mKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781616994; c=relaxed/simple;
	bh=6v5kBahanez2kuYWDIXXoOKXGslTiwmIIZez2rSWnuo=;
	h=To:Subject:From:Message-Id:Date; b=ZIxH8phCddD3l9ciuzpkKBuKJbuwmqoqPaj8u8bWtv0KySSeETSrrPQ4UZcqbBP972bkSpvTJ1wEggYLZ4LIlK2G4JVv6mMnT32DqWKkmJxm3K6psKt23ZfHgsE6xdZKZVfCK4ll+B4WmQzQIMFzUu/fTi27G1R+/IFRN9lwYsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKHF4sbz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKHF4sbz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC293C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 13:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781616993;
	bh=6v5kBahanez2kuYWDIXXoOKXGslTiwmIIZez2rSWnuo=;
	h=To:Subject:From:Date:From;
	b=cKHF4sbzK3XHFNY0eK72V/a10xK9VXbRf7uk2U1gApCKG+3i2aHb+LTeTJTS/NCQE
	 jwbcanj6GzUdD6gPptmRrKYzl4KZIUbmbWpvu9w48+jhncTjzxQO1BV6Pf/1Glohxy
	 nLizH1zScIjP2SWa2BedviUW3O0xli9gqcdMiikBA4ouF39F0XpT2Yqp2YFR+zmaVg
	 QxzG+ogwMYa4faU8h13bFQflty57rxKmRJCXljDwuFclhrjF2d5cg41c27LO0oT2Yf
	 6i9PpP304MWkEDO/ySOPvzty/B/c3eYyR4BOwSeyTbCJfVs39v9bC0plQ7LCzFRXwa
	 6HLydTOpxno1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4D0CCD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 13:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178161699373.10195.1038210555001419731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f80d5d5917965e32fc20c09189838bc6ec75a6b6f398db45ff42a6663360882
Date: Tue, 16 Jun 2026 13:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781616993
