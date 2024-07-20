Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308E63211
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721487354; cv=none; b=VkqhVW5/ce0LWmD45vBv0Tfggeiy26tJduYT7bifFNBO0g9CvqOZasYu+eE8+uDCW3zuU2Ea9HLNPeiVW5EMgNMkCN5BiDyLw+rRv2asR3K2P2/0mQxKdDU9+RuMuM7A5IuMC3SU1GAIuG6BaV/+KprUYcDx6WA+6wKBSkpoOWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721487354; c=relaxed/simple;
	bh=1qYMMk8XL5v6DHBHMSrDJ/sxPCAXvZguPGRKuqMTrnU=;
	h=To:Subject:From:Message-Id:Date; b=ZVK2E9SXdUsp38B0uOs+5Sy6sygWYFaCKEbXMp031ITZ24DUssYY8iffrCL+B2ZxGPMJhgtpQ/jKRTuZoV2QQwxWr5AeagJAVbnP8yZUalV7n/pJ6wfR9KZaHaaQ2XPgUJiV2M7Vnm3P64tUeYln8WRiy001ZCf6HPrBJSnQQi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LkjY7S62; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LkjY7S62"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAB0EC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721487353;
	bh=1qYMMk8XL5v6DHBHMSrDJ/sxPCAXvZguPGRKuqMTrnU=;
	h=To:Subject:From:Date:From;
	b=LkjY7S62DLW4c30Yr9UEL8kcda8Be+VgbBso+TgCYZXrpjxe0CgCi1TbR3cbfxV8d
	 sKwd93rvqQBU9eJhLsfjlfCwzp6RDBDFCPb9ZP1dddFJMelrUjUprX/r0yPE7evmx3
	 2JPEvhZdl0t9Gf7HJEppCAosPAU1EMd3zttiXpGhBbRs6aOkdEKIlnPRKl7v6J1Vnc
	 oOjVUbBny0NiWJMoLKTCscVD21Pw6TJYCN92p/xi9v70gg/j4kbDiorjg4eIipqR3u
	 PDEUilA/NnrSdUdjB3e+K8RD9AKo+VR0KQu6XAI7YRE5hqZWZWmlOWawWQZ+LkPuqc
	 RlbnRLrCezSFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE44AC3DA49
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172148735363.27929.13687294863789088337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba6010d169bb1493e8cc262e7826d8c6bad90c581bb3247fbe8fb1c44cf32ddb
Date: Sat, 20 Jul 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721487353
