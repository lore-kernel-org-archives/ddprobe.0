Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94C1A4119E0
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 20:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785357635; cv=none; b=j9ahsaWRi5PcKCKWvaHqEBMc2xr7Y1nQcGV7PUjFqJ6DMxH0ZvtgIgkH28YNz0uSaA0qhYvvOpaTaV9zywanMpy16gRB1P0kPd3ZwydwgPQziBSGrvReGMIe5FWaBnRXcD9+3y2Z8q6RJ3rfa0U8kc/vinkl0KHd1546dSRtesI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785357635; c=relaxed/simple;
	bh=Yrp660CJivftdopOEA7N0N5nBTMPDjjXDNyZKSf5toQ=;
	h=To:Subject:From:Message-Id:Date; b=Q0n+nh+4fihsx69S0UCxtvDPSNwrE7nEVkiAYmMNDUCd6QQwr7JydMLdLQc8loUYlq9twSamOHYbhfJPo0GPo8SfFzeiRAS7qXKmFRezINkF66g23PEC4qOYSO5+h3KhDIOkO/GVlgv6ChsNg0zVEqaeFw05XXdfX9WnJRLPBLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MA+K5tdi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MA+K5tdi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09444C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 20:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785357634;
	bh=Yrp660CJivftdopOEA7N0N5nBTMPDjjXDNyZKSf5toQ=;
	h=To:Subject:From:Date:From;
	b=MA+K5tdiMXtqk9Ng3n3nn0/hAWU/YqFrEoO98urYRMcUR8Jb6/AJusHESyHKvHQGN
	 vw42kk6p7fFz/f6WQeRXratLPSWJhhUNVC3PYKe8a/T4RW8Pl7Hml7h9K041KOLwXH
	 Ys8YIuRC21BxH2mDKH//PXcdh3s/pXbWauJdZJGVpovH3HmIJj6peXmxNknd3XOiz0
	 TeJFBlbOBXks/41slAx75tVXDrurzXb2kUYt6agFsuWyPnG3GC2pUhitCuZ7TrAxwB
	 WWgjeGFipe+NumrVIf67cRANInn5TcDiyDgRcLsCupoLg+ZUOAJ+moVBJzwAJGYoHs
	 V2+QUQP9efuPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8AFFC54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178535763375.24141.1876648268803968209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77345162b70a6d00a0fd8d2fca45b29b17d5484ffde3360584aa742745e43db3
Date: Wed, 29 Jul 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785357633
