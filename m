Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F39233556D
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786470634; cv=none; b=bEKs9TKCyCHpTiaJeGuj7PLwgEpt/1skJxl+wz603YXs849no4RFjbVlWOR+80NgbzGjIq9CZv6we8k5ivcZO8ZxJ380SEBEQlXxLqJJh1n/rJG4tkVkK+ephMMk3SjU8SSKNa5dG7xQWsTZp/9Y1tC9i4Ip4+1tuqDps0vTkaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786470634; c=relaxed/simple;
	bh=hp0/MT5mG4X6l3n721bPcsRuhWK32IdLRjzf5FiXjTA=;
	h=To:Subject:From:Message-Id:Date; b=rfEkGczWrXd4pdAmwkU2okWi+6eylVwlMDPXmryMuLonLLT9c2Xa92Hl5gC0dw7f/LlvtVyo4YgfnX3fqZWqpexTWYQMPVQOTxeWvF383+s7AmZdYTcuDgZ0w9uMb/3LCVBJd9x5bbSA2sLrqS6ML+mOwDaLQi27ytYyoKOEjPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mgTo+7u7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mgTo+7u7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA3F4C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786470633;
	bh=hp0/MT5mG4X6l3n721bPcsRuhWK32IdLRjzf5FiXjTA=;
	h=To:Subject:From:Date:From;
	b=mgTo+7u7Y72TZ8YRzH0SJnAJI7d5+NEz2VZ2yrp6+Bymtzwhe8extnm86TKDyhBz1
	 mqu//fRHzwoshGp/awtdnUhb3zOITZdlimyD3GEiZkGTk3um9y+0tyWa5R2eDH/EKf
	 loKIwOmGvlQidQW5M5amNeVHCXkUbwp0FdbJCIesKbsDfvHPnIv6Nm2x8rXZNNWGdI
	 0TvWnS4ji57O3nZPYb7ePBZngne/fOuL9h0xz4CVIsijEMLT/agTbbpGZOxpF/PCOC
	 8XmBFr6dO3Sv3CP0VEezcsPL0lV7Y5o2qi+zInngcWLoQNnloCxzzwflTQVlDCJK0n
	 YQS6vmaiG/ipQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9659C5B572
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178647063368.14135.13751195790798414217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49d27ffc2c39414482d3e299dfe583b6467b56cde5831b46c333105e20442d35
Date: Tue, 11 Aug 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786470633
