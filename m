Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C850260580
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792024234; cv=none; b=eFUS0Kw877hBPDvGA8akLwLMjy3+4VVX64sD+UNlYp4FMgB1Y6J/t6ajVHdNwmYJF7IYGP8LJTN69qCbaQhJQjP95c9bw3FFWgkhhPcM94wbWqLrZd0DnlGrNJZsapnmdEX/cRuRvghG1INBj0HLZSqdT1kx6aNnNl8HOvoGLLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792024234; c=relaxed/simple;
	bh=dY8WwpBBn2G29x4NKaMkREl5CAecF3qpMCBsuSapZjM=;
	h=To:Subject:From:Message-Id:Date; b=UR6gDAJoxk6vedoi3b93rWx3vzxRuAMzJW7jw2i/YxMyiR2e9dv/ekqCMOGQeqmQxX7NRbuThghrNk0iQZRSJzOwjx5n1LMcERqA/xAW0bzghsWAe7WE40uDuYLGqYjFpvqGlBCKFu0qLfci6vReSfPsV3Dle/MW80s6OKlAk3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bnqNn5uH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bnqNn5uH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B2CC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792024233;
	bh=dY8WwpBBn2G29x4NKaMkREl5CAecF3qpMCBsuSapZjM=;
	h=To:Subject:From:Date:From;
	b=bnqNn5uHSQ0siMDOgj4HMKGt7Pc5+zay66ttXjY1qANRsXvUlsmn7Ox7KzipK7qcr
	 nGonY/+gkX165cXAQxmIwAvEF3YUOChL9c5iQFZ4mTutniRlbqZvaKeCim7B963VS2
	 mTineM6znW2pRy/jRl6cH9CMjHv3ltl6gahY6egQfUsvLx1qY5QLFaePe098s7ClL/
	 FsVh5MEkmX2YRwllsgxcqTd+1cbW27qOrgwnxMdO33Hi81H8W1um5KohdhvTMHdV3W
	 nGm08KWWyS8HjwgfXYtD+sR3N5HSJ3arQRIBi6iyvCS+8FTmnHPtDsipsHVLtQAfcu
	 8+ju//JoJF55w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF0CCC6B30
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179202423369.22250.15039619247583998624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4576768a1876bfabce4df9dacbfbb35316c846a171aedca0bf7dc42b5434ffd7
Date: Thu, 15 Oct 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792024233
