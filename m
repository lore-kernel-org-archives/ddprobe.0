Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48ECD63A
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 00:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720484183; cv=none; b=Kn/m5i5J7kNIROCbcKhYdxN3FysOE7bfGvQRGW+EHJtuZX2GiLlU/32A7elY7K7zMMCcJjFwT3zf8bEa90cEAkPYGG4D7ctiZA0CijnzAyMZDPhz4ihLZiHwHFusLKgqObmfJ+ElO1aReybnjbX7KFNTBue/2Kc1l2Uk74FchLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720484183; c=relaxed/simple;
	bh=R8km+lxV6yP6YExaflaLz39ZxpvgM3CtVJ1tTal/oSc=;
	h=To:Subject:From:Message-Id:Date; b=iV/W5b+m/py5dX2t/TPEjaWSvYSsUxZf+n0jmSotso/cEem2fF2I6dC7TUUkMWBP4GzWmTX9MbQQ003pLxm6p+xwEJ3ALxdD93ohvoJ9yGu2RKwtNIIqP6eT7xSU4gPkVTL2fgC2Z/ve8bwURq7MY7lYq3qv4caZfpVk+gvbbec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TDXSqQC6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TDXSqQC6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A62C116B1
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 00:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720484182;
	bh=R8km+lxV6yP6YExaflaLz39ZxpvgM3CtVJ1tTal/oSc=;
	h=To:Subject:From:Date:From;
	b=TDXSqQC6FzF148teO1VfiauW7kWCHa2q6VHP5FHp71qftf/KWm0IO3hwnCRwJE2NB
	 4tbvh89kjCQim9D2gh5bHPpb1DjAr+WuTS+oN7me7Mfng7FlXLn1NFMMvjajhdVQ44
	 aZb2dXkuEODcNsfrELOKYcqa1iKh+zT18XbmAd54UqUODEC/f5QgD3ldpx2cqV7r6Z
	 QRRRTc7gnpwMhql0zDB3Ef6VIJUXZvz653sNXPEEg89+SUbbX3h0Nw9eiZHvfVOl6S
	 W6VAGyz+5WIAIiYL7PMxSEnThv3R3fku/X00t7ak2xVJCN/F8E4FdqmUxzr554izrS
	 iC/v7+8Xl2CKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1CDAC3DA45
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 00:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172048418278.22458.7933552177677756972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ba4c8a1c5541bb1ba19704884ec98086bb815dc930c9a5a1ae61e2c5f3137ef
Date: Tue, 09 Jul 2024 00:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720484182
