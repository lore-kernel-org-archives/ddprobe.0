Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4EB3B71DB
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788017434; cv=none; b=rPiHDf8eE29/xPoTgr5D4WOvvPF7AH5joxPFuyNWFeba4eVvnQi65fKCbgvxWr35jkqyRy9Q5BPG2l9NQsBb8qZCoSS8zGRxz1FbDaBOTr1MZHaRPohC5WjaVzW8vIYopEAbJhaLGj3nhRTJf+tKwbXlFk+CHEcXMJKYKnueVhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788017434; c=relaxed/simple;
	bh=zJZrUqRGUrfPCewlNIjkJ6WaKcD7lQZLtDX8sq3zgbM=;
	h=To:Subject:From:Message-Id:Date; b=D9UjwjtRL2raLsMqKdCgfFytlH24blzQnohvQLe1X26trsXMXAm7JfRrQgS1KCNm/JvwjVPQgyAILmVrhwWVS839VO8J3LMtLwSHZkxYxH09WHvJXT72wxzExTJWr+Lwzguyk2TdIByG8GMP+0PM5ol8RL3AxkczayG/coIlsAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZvR5rieS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZvR5rieS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FF7C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788017433;
	bh=zJZrUqRGUrfPCewlNIjkJ6WaKcD7lQZLtDX8sq3zgbM=;
	h=To:Subject:From:Date:From;
	b=ZvR5rieSm3CxKvxQGYMjGpR4xeKKvFlFc9vGL+/m6kLHDyKWnhv63b8gw9q2sekWC
	 k5cj5Lz91XOOg3tDSuhJKHOET54KQSwoAJMOqJDo7uwLgu8x2pzKz8OFjOV27tp3jR
	 B3nvp04psKDtxbOS4cxnibIlLkZoMVVZ9Ngi8RL/cDb5RGGt5MpCYJGbYoZ87qQYWW
	 mBGeFtiZTnxwBbtfCHHapjfczm0mi9xrC3B11d7biEVGZJdxJ8I2cxbYaHs5KpEHv5
	 y24jx3oaRn/9sWdm53MgWoUMXRaP204hB6hFPaMBMnhsb11XiECpRsx/rjiTzWpG1L
	 NQpyyDLhcx4/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8E4C61DD9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178801743368.1525.9493951067214427595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b919ffb7214acd4a7b02d1f54942ae29cf2b188df4524c351f872f7562a4da3e
Date: Sat, 29 Aug 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788017433
