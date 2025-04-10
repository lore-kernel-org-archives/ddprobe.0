Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBD81EF397
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744305595; cv=none; b=aE6IKZUb/B8cHGKAfFLpD8teOusSGXq0JJHdbTsXjvN3HgnFbRKZsI8QBvONuRK+9P8iDia3q9J40RD7z9W9bVKwJOo5N4edrjseQjqQuPvUfbMbZi/pb5r0h7dICro++79EJwon2H9CDUWGCR1GTs8vBxGScql1Cqza5ZV92cY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744305595; c=relaxed/simple;
	bh=e8ZfxLz5vV9Xwp4YOuNg+UF0xDJ5EXX8XS2GOSxdN8U=;
	h=To:Subject:From:Message-Id:Date; b=THC2BSPsjgsUKm0xkqVu/cWinCltD4K9p7QTqwiu4I9QmL5Er6oaTJSI74oVsnBM8jaEUrH7E2cyTSCmcTfu0slnSTcfGMXllgXKHlCnak+Y4a3JiybltrsvM6p7TZOwo6UOeWP3/Vk3x3LPJHnoO+7ioqIb6qCGV9x5QEI85Yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tsb4tsVD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tsb4tsVD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3F7C4CEE8
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744305593;
	bh=e8ZfxLz5vV9Xwp4YOuNg+UF0xDJ5EXX8XS2GOSxdN8U=;
	h=To:Subject:From:Date:From;
	b=Tsb4tsVD9ArBQswO7wCA1bSkhnozTS307rF603uP6jT8LzArjf/L8QhIJTXC6IGgQ
	 8Otykz8ocpQCG/rAXHdNfTXooCXeNSuEhsJmFxScwLDODl4nf01YWN/7lQ0fXgWYbB
	 eTbgnE8N8rwi6TrFn/YIEzkLbuEhhzQSRtToSXGCTr6NHyObegLyKXiqJUTTxANIRA
	 QzLZUv2AcUwXEo6GBtId5QP/qg+ztEc4rZIUtAmXkOZjsoWeP6KMfqz3Tj8R/vSUHl
	 anp34NfddIX8GY0z6D0+EW7GHrbB/6yeS/Rfc0R9wRPGeTn8FBS9QVHqybexfx3QoC
	 u5puegaakflZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95784C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174430559360.11988.16524284818961181165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4b043d4aff2a403f4547faa1f280faf4091a85f352f4848f05be653346623dd
Date: Thu, 10 Apr 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744305593
