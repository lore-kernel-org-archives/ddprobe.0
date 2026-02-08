Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E4B17A2E8
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770517434; cv=none; b=YdX0QysdLpy7z8C16mva6vdtA7KIXddJmCQcrGFAu3jV8EJFtyQ0t5FTh42/xFDQJqMvOIABpAp0sD2MFoAg9VxGpfmbHulOH0V9XsAVaPafHa2x+/zJiBJMRM5b9xYvJNls7ouiux1WRd0qR6rwnpInqym7y0cxKulbvbBcrYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770517434; c=relaxed/simple;
	bh=wX3+Do0Fwl5/rwa0yC1L2zjJaKdPbfzUewgmgSuZbw8=;
	h=To:Subject:From:Message-Id:Date; b=sYo6rsCIi3GbsPxyLcarDPEhdcqupSJgzX5KDvOLg5bR3nPzE8h/TF4EYHlHGSmH/imnFIYm3fxdlKRWxMYKQn0Q75B3wNrMTQrSc7l4CU2Bx2MYVHj3HQiLbYYDfz2vdBhmr7PXT1FFaO/ppizUgFqDqTgMerj1PcbHSLS24gQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rzVIGhkB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rzVIGhkB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA39DC116D0
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770517433;
	bh=wX3+Do0Fwl5/rwa0yC1L2zjJaKdPbfzUewgmgSuZbw8=;
	h=To:Subject:From:Date:From;
	b=rzVIGhkBLfSNp0gRvyhgLuU1WwiNFOp+mBjRVJkAWhzxFD1+BedgivRRvEx6go2+M
	 4pD0wL2kxP6+1jKntHx9IXUYn7zGGlbndXgeT0Jon/GiRoZ40/w+5buiDbKsSPxL2j
	 J7nGndiVhpg3ma4fTle4B/2RpA1NZXvf+tl8Xu+M8DoMWeA83ArHjUM6O0KLXIv9Ig
	 rr3U70ponkqncZTonkfmVo6/IuO7dzzmxf3pFJOeb7ylllAOg7e2idafToGRvbJPOX
	 pswgffxGNNOyA7/DcZ68Am4G1GhuetQGAfNegU9lZU6lMm2Eb2b/Kbx8/nrwV1DkoE
	 HdnROK4KphvmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE82EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177051743360.17082.5487188241977407526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4fb9b9513568d5588f94ac6cc961b13a6195ed91662095b0c7f1709dc387dd2
Date: Sun, 08 Feb 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770517433
