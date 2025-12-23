Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B6D33D4FF
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766493834; cv=none; b=POB7j3+54V0BC/krAZWf3RJ486VpGf+ORnv3khWnmurI1W8LOBUGjB4sA6k0wN+rtLMNnREnIuDdG9GgGvqvsoUjB/L+Ljt25AeUffoM3O8uw1vjGjFU8uy5Ggpj0ZxuXwjoZDWbPCkHKbo3Anc4y8k4lG6AaqXtCZ8LBdQqNyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766493834; c=relaxed/simple;
	bh=eM2/zOt3TUJXO1pGPXmNhdl7EvBlTnf8Q0uwRD2QUPs=;
	h=To:Subject:From:Message-Id:Date; b=t2/Q0JkXFV1d4F12W4BTxrB+eSAqiHBzuq+agR0VrV8LLrQDsewrwG9/XxMuojgRcZTX6Nb6KfxdDCyWKDflf9PK81qmH7VYwVlztBMvyk30CgzmjMvdoZ2BlbH9maNow/E93PI9nLcOXz0mWnEa4WAXnKKt7hK1hqnj95h1GIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kZDSsF+H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kZDSsF+H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A588EC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766493833;
	bh=eM2/zOt3TUJXO1pGPXmNhdl7EvBlTnf8Q0uwRD2QUPs=;
	h=To:Subject:From:Date:From;
	b=kZDSsF+HQc9ZB9KnAANTetC2XcLrcx8oL7VMb2Pcnm4Xd3pVD/Krw1NQ+Jo9v6ufZ
	 mwUueU5+Ri75SCXYO77N7Vjl/BTt1lDxEttg+fE9j/aBmE4eWR7VFjfttJY9bekvs/
	 VgAQfhcXN006jm6UG5xU8r1uGiNeWWwT/2mmKC9IwcK5fERqEIq/d+iFhfNWXjKPP0
	 B/WTUPNkMUVCcK//cZ5l6JOMuyXTpZWCgc9MoMJHPcK1ubaUsloqUs8TI56GyBCAm6
	 W179pEml1d5y4CAsfBkkivU1ojAFQ4RIPMcsS/p+sumTuTXCrtHQzVM0ukhNvmBMY8
	 Bnv5KRjxf8c0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98058E6F08D
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176649383359.9918.8748013004893731312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f23a87698e5215a718d2c95bbeb750481482f513656fe7d6e193a678f26c6d1
Date: Tue, 23 Dec 2025 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766493833
