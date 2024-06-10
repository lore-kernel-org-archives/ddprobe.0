Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F2C3524F
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 03:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717991243; cv=none; b=hVGTCsZUQqnnre1wFfZKvjYbnnpeZ/onsttV6g8NcCvSLGtMvLg8maEevG3tOLAMmZ4PCRX5NpgDzjPz2P//P9rSIcrdN8ZBjF+hcUvwEAX3xoYQX/Pl2Ey6+jwqGixELEpHrWYVnaOws4aw4SjU7TjZi5GhjaR6InA2p446iVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717991243; c=relaxed/simple;
	bh=HO7m1bF3PCfn59Cn1Pv/6aSR60n0Ql/b9lSDX837/30=;
	h=To:Subject:From:Message-Id:Date; b=WTIVZlz91v8iZu3JMNmThFUnv1FGQ4ZW+qc1e42HIN9f4x74vHT0bgbxubjlYnNsAViBghxNTfDP7ZW5pHAfhdgK4wvHqjWZx8IERg0oqJ4lRoRpfJdHxXUmk2/ZPpJkavo5FhOeZkFvGlCTGnqvVfnfroFUT7WvHF6/7TZ1oRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M0OrprTw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0OrprTw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E061EC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 03:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717991242;
	bh=HO7m1bF3PCfn59Cn1Pv/6aSR60n0Ql/b9lSDX837/30=;
	h=To:Subject:From:Date:From;
	b=M0OrprTweDhUrBEVaZpGGqgLepTupvZ2QdIVPliGHrDXOUzHNHv8F+6KXAruwHRvO
	 OxZ5jFLm8ExIaSMmuPQ+sYLuXUxCxXkIoEBe4CRzRHSmcj44B/GPu0IlOD+lcgWf2y
	 jSoPX+Txf+UjJ5suA4sdYLcnY/CZ+i9DfMl5bapXJnOMdBGQKxzxlgCPgVFJ71Xqt1
	 1mL2d+xsu0BTST0HiPV39eqvC325es2qwgkT9/wuqNax1FHOy19+Vta6dVVYe4xWc5
	 elYL8D37vk1rmEEvpsGkBva1I7DthqkK+bB76bDqBChLhoc2JCtQPyvh39F6f53wqT
	 hHCsOjrfolUsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C96DBC27C5E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 03:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171799124279.21823.18115363238807910348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 638d8a995f752b80512ea2c101e93c248d938e0f9c3aeb341d309a8068904f8e
Date: Mon, 10 Jun 2024 03:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717991242
