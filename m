Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3848825A2C6
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789311634; cv=none; b=AkQKrh6Ar0hdc49Yn9woqQCbyIhh805poej84SdoU6bWux4n5W+eXrdiqYafyohKo2aGlhEH8sERphB2xNCpE9P2dxw9rTwKSvyLaNb3W3LZeL1x5yUR2ofhNejOjNzBjSSkOYr2iatsF9k9HuoRexXw+e5Ze4CMFKqmaDrO60w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789311634; c=relaxed/simple;
	bh=4h4BlcV085fO/LXRAYumOnZBToz9OGPekKmJHGc37Oc=;
	h=To:Subject:From:Message-Id:Date; b=iwXH2JFsFbIvPVtk3HE7Gc6AiVKAArTgr9KN0cNLH2GVo1M2Vdd6mrPHwi1TPUHWlQOTMWnuk8LBXcCxU25K6kpH35FblgUsq3/VmFrMhSvD8CpPrAlTH7eQb+WnRYbIvohykuhmhDF76TZfvl0KxTWpb8cEyzCZyZ5W2brsIeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXV7eoSb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXV7eoSb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD32DC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789311633;
	bh=4h4BlcV085fO/LXRAYumOnZBToz9OGPekKmJHGc37Oc=;
	h=To:Subject:From:Date:From;
	b=rXV7eoSbVUurCH7NSMWpj0diBAebgWedPSzJjCez0DeiiORXiElf4pZ1omBUYQzVF
	 PKgP1QkwuAMRLZ78LSw0SrShOWm69gPCZb95aCqPKUE1IncVhAuBJd5hYN0BAdhfJa
	 MnyNVBxCNBMH50zbfQinZqYHLBaPzI1b9af2zqPGohegTGTqHMBuvEOBJZQp7LWjVq
	 YZPhDc2MJslIFddPUGsRSII8mF5jOa0FCo86r9GzwAFHa1yVZaHDKLv2TyXpaor9N5
	 tEwLWw31iuc/j/SHMwMMCz3wYT8REVaCHRW0KbWWhAxAEiYREdJo+93ZPyyotYfaaw
	 ckzNmezAmyCIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF68C88E5C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178931163369.12037.2367294001535056969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c73e06fcb821a6c327a7a724cd7d589fb2b292e8540fbf68aa55adb93f0f9f91
Date: Sun, 13 Sep 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789311633
