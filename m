Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A6C19B5B1
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770855894; cv=none; b=B2rOiKJT6JX0tXy1uSMCv9ej8CQKLN9wX8OKuFPX3suKEsaWTRpqbASmxnQade0DVcL97e/q8uQ45YVIo28z9q3p29b9BavP4z979kJbsXid+eD/bvnJxBhf10ioql561HDgW1NbxdNnTgbLeKuhmbD2IzTwjyGOmAlbr6u9duc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770855894; c=relaxed/simple;
	bh=wgxc5JoxhxaZcCjvhpiW+Uru8RHFNIDTwkLex9l58Dw=;
	h=To:Subject:From:Message-Id:Date; b=maEfUMGSwBn85mWZR46cbtdizVUoaENCv5SGuqX3u0+M06VxukXz2YyvpZmWqZVfHaHE6BH7zwlOv2KdxmnerolzxaYSEUXQyQT4gbZQjhS7jh81194r7o7GYKFEsVu3z0LNss+sh7Sp8R9KtrOpH6Gwze2HVzbkDO8//qO+i4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eavP4zd9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eavP4zd9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C22C7C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770855893;
	bh=wgxc5JoxhxaZcCjvhpiW+Uru8RHFNIDTwkLex9l58Dw=;
	h=To:Subject:From:Date:From;
	b=eavP4zd9DXtGHxeCaZMHMcyf1f+HEA8Q++fLbGJh+cASRV52h2Fp5VoM0nwLsdkUf
	 tvs1o0w9uzsMXyWNCU1aoyiH07uI+2BVPygz2hfIujLVTsEchdAlrKwus03M4xpoY5
	 N4yOgrNL/JRIitdDim6m0VhPO2BUyYCLr/FU4DbzmTtQwUhaXw5WoBee2q0y+0C8j4
	 1hTpvl0tOaqwEgAamjgu4xhReP1c4i6P+2go4ZLgl+a7Bw0myRUhdA4x9SObhdPWRL
	 HFU4sRjibufCSTlM27M1P2mFaHwKnN7s2qkMlowqrRXEJnQWm4Ur/1N+nHBYF1gVnO
	 0pt6cwvk6C4hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A68C0ECD6FC
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177085589366.30820.5302664131080623484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a376c7b6cd10bbc238a12f94e50f5dc6ff105ef548ade2f53273da911355bf2
Date: Thu, 12 Feb 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770855893
