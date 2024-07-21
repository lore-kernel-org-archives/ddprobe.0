Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0D3953BE
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721564154; cv=none; b=b6I6nDV//zcp7l0Ll2eOD/uogcw/JerSF6XACN6xyFubsx82n9xAsW4Jru50xsYxEQ0iVC2xcXv6WxCMu60P7uQNe9xuw8bVIRPZwtYpsJFLDnKJkBRjvrvCYv96rj8gb4VidREINID0U9V0MxnEwuoxsI51Ub7t44gfNcKpBVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721564154; c=relaxed/simple;
	bh=eK+zLXAMC1FCv/paig39EDlm69K4TrWoXcZCfiDx9Aw=;
	h=To:Subject:From:Message-Id:Date; b=ZPxd8qDuau/vsiAnM2s3tyIvp9g/YchdPd+pYiR35OTMNHtKYGMFonQKQOjlGGhMEktp/Bv/OhqglYdz2w6pmPwZcI+0JWrQc9KKOtxeLbLOXyWpdgFnvNOD4K106qt+R10+8jofjB77IGYmiBgV+EMOrn8+r2BewoadCnKOarQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KRaZm15h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KRaZm15h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4DA4C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721564153;
	bh=eK+zLXAMC1FCv/paig39EDlm69K4TrWoXcZCfiDx9Aw=;
	h=To:Subject:From:Date:From;
	b=KRaZm15h08SxhdvheHtX9V0kL0g5oa8TAspUgiguTp+OVNWKNeW/rvgiHtJzameww
	 XY2eVGzlvKlyRM0IiocltGevAG2gg/RnMIsuzKH2RdBrXOKZJoF9COUvk2iZL0VLOB
	 r9VDN8rk899WcrOBG5ua2VVZQO8nbjNV1LGauX0uK5AdVDke/ygi27CyNo56BvzzUN
	 YuF1t/GQ4YgWWcZN/EXfGxaB29aUDTHFC45KHLH8E8V+e2ORFCTl2SsVOZQEYjNPC3
	 R4JB3nmiamiTuMrDQRoq+1W9mYVUxYFHRVukVymxnVH8ewG0XZyXWU0cz+R0/MxpXm
	 /8TBsseXKsywg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F0CFC3DA5D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172156415361.24897.6626887569065721248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de636adc549d3b22ce285ee8e6de83df337f7128d8bf7e80c4a627ae3e141c12
Date: Sun, 21 Jul 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721564153
