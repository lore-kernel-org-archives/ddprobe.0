Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E61936D4E3
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 07:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763796114; cv=none; b=LaX6ReZwnGm3ovPdNoNmroLx9Iqtrj+12aMa+bBdlRx6tMWvt683n6BBSbQ7ZGsuRo84Xi1U+BUsy6tQoXYOw70uQ2MpIyRAMRVVRbwvEiQpL6pzqGjcHJQAcfhpTCPrCCe2t6kgnRbuAiVrHgGgxUqSKnowmMOOoD4QaEhK1eM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763796114; c=relaxed/simple;
	bh=aka92XB199zcMt+Gv6r/w5wXReq8cQO7aa19sbKxzLA=;
	h=To:Subject:From:Message-Id:Date; b=oi/NmMYbQ+QJl20GuA6il30+HbcDFa+QbfmG7T5tvg1rLfCGo5QMKecH/yledItX7HCP3Mhog4omnPolTELgM9bwhRUju3WagvjiGksjaKvSStBqkhhZW4I7mdlzLMQ7SOvHG8pGiS691GtY4t5r/xPgUHgnVuBrDfPuGshiOPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQlEhaNS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQlEhaNS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A908BC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 07:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763796113;
	bh=aka92XB199zcMt+Gv6r/w5wXReq8cQO7aa19sbKxzLA=;
	h=To:Subject:From:Date:From;
	b=OQlEhaNStWTv0ug7dm5kqlToeyyqxJwV63kb3ovR83Sh0HpSLtBhb6agLPCyPFEVy
	 +Bjfuv+mtHDgQH0xdgmdc4pjhkMxcYgdO6flvulZO9aUtcfQX1LnVXEW/7Sr1uvxuU
	 aGkD/H+RRZXwHBBqkGQkJhsloT5UgC3tc3ObWB3WJkGbeReodAVOTNEJT8fvS62k5A
	 cbeGL6QCnoxsu1W8XuYF1zO0Vgf9ZroIb9q2fxFrvSnzdrHQba3vBzmoD2Khg0himD
	 VmD6EHgLu1ok/L1xniT7l7CH8LLdz2NiMS5BZy8159YwvN8HSCeozWReKW+nT3yIvd
	 T60p+Mhm5x+OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96118CFC51D
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 07:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176379611358.15834.14625158684162609294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d963f5058920db56420eb820b1aab7090710d950b35c8636a9c7ea523cbd8a8
Date: Sat, 22 Nov 2025 07:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763796113
