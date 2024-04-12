Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FE1885262
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 13:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712929763; cv=none; b=ObWN2U3rOEEOl0LFj1SE4GitNSBMl9Lwy/MB27kGfaZViWDTM90VUQZfRkKgwPQgihBscI6MIPHBXRbmR8ptUz/CeY3uLmoZjp6DIZaNJqM5Hw+UA6FG4fCrp90Bs+Wq+MCp6GxNlMy4tRKHfiKRCuPuAzWbdh7KwjT2oNx8KmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712929763; c=relaxed/simple;
	bh=h0DpueGyEFZGLPJOEXFnrCKr/25PVzp/lVcVb+YAieY=;
	h=To:Subject:From:Message-Id:Date; b=gg/1qIHPqDTr5i65fUWX9ygH8RU4halBOzK4WUy+IderSydZ9pfItcPjTKGkchRpBvy29rfu5tljDAX5DalxB4HFZRrp/J3TV81A3h/kpcxYr6BruZ/zLUZN5aZGD3O91rdF1ThOGsNz+NtKLY2wS3QrutbqJSJMaAqBirEZan0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RdqcpiyB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RdqcpiyB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1626C113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 13:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712929762;
	bh=h0DpueGyEFZGLPJOEXFnrCKr/25PVzp/lVcVb+YAieY=;
	h=To:Subject:From:Date:From;
	b=RdqcpiyB7RLGFv/knOxgzPXKkzA6ZrtsmH38sjcUPrYXXnGD//64dF1AyvCVzYPWT
	 dNhgIhia+xP4KScQcz1pVul7+u2DSsU0LOsMpLlOWpQwgbkRPeA6vYpflpl+YPmrHp
	 lBCefg+SN3jAOgs2Frms+IBIWPj/PJTugipOYO1ek0mCMJetsbGg2C2/+OLGY8RKE0
	 9569ob4gDDmqZaSSGemhKFLFIn4wDtbUvmUq6Lsjp/4r85/tbn2n7v75if2b7r6vDW
	 J8Dnyc5y8MDUis4HLmZ3krO2nhz0vHZx0gJc3ydtLH+KJS9eFhlWHpCRxhsWZUAPk0
	 2PtXOGqt4fhug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1ED2C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 13:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171292976283.26260.10856513117556919348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27eb54e0a50f8b82fc5b1dd103e9f21cc5fd548acb86e34bbea5dbc2d71b99a8
Date: Fri, 12 Apr 2024 13:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712929762
