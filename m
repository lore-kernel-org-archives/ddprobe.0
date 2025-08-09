Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CE5155A30
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754704794; cv=none; b=mYtSxnQU213l3LFEFIMkkz3XKzcQK8wQ8fG3/302CBnX2NyT57t2Yf9O326wEY4WNRQmnAKhX6v3IwXxe2Gf8CUvjjuXmewM6afZ0ejSrm9wvWpz9I+wBtJMNzmwH5aPB4knt5DVjIV7IVIrsiCe9v38PXQQEx0Ad1sAtaRrI7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754704794; c=relaxed/simple;
	bh=MVOAmxPAOUXp7U/d2PXgvzxKXQYdPp7/cIr2diHICsY=;
	h=To:Subject:From:Message-Id:Date; b=Lji8KRMXarEA+kelr707/9r5UQHKORyWzav3HY4PSUpe1KBLpnJ7XyBjwhxi4y27wj38axAwOuj1k8ElCerpJYcE4B69+PuMfDGuFV1/YBm0god3kP5VcwEMWnRAlAl7PhL3m1pIJUfhDZmkmRpaEd9QeS1qLjPJGMyjMlRqBss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sa5pUKzo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sa5pUKzo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4045C4CEED
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754704793;
	bh=MVOAmxPAOUXp7U/d2PXgvzxKXQYdPp7/cIr2diHICsY=;
	h=To:Subject:From:Date:From;
	b=Sa5pUKzoB6Bg5SLgFC5Hgdr0SLWfiNcB8mpldvuEdrUlp23WcQ/hrx6GoBPwQXNL7
	 esHisitiCRTCYme9s5cJ8fuIfj/01mcjo2blvg5YuF30+Wy3svTIzXMU1ip9kTFvls
	 rHWw1Gqdk+/AyfU5Xmi3DU7pLnBtAW51BuKzGOJ+Fwm7e9y8afQsh8rU2QdXyv6ZWf
	 Srfy8z3kPgaHPU/SVaN8nW/Xo8y0RIcIHvJ9zr/nyl6cAJPVbkRW01b+2Nb2yvFhgG
	 Rer7ezpkdvQzih1m03DC4w0IEfrQKnBwmHAJePbaFsFCP5ZPZ1pcMscCQONOogK/0K
	 +yKLfUBsmQx2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93229C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175470479358.6753.18096047325072546026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24c4b4a1a6afefbe7d83e899049872cbf8ac030657c2d3b08bbeb56bdcdce74b
Date: Sat, 09 Aug 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754704793
