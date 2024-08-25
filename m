Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2938B210FB
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724607354; cv=none; b=tz7PDYtTDlRWNahZRab8FiRZuJO7otP5zS/EvZ9/TFES0gJuX07oYdi9c5WIxCNiGpcVJGWTqS05pKscOj8vXj57KIQ4idDJJofXY2WwyI8soXLzdvSupkwCXS7uNVw/f+mEl/EpQw60tR2Wuk7Bg3adEyClfEsQ5baOcykCzko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724607354; c=relaxed/simple;
	bh=fyzapf3624oG7f4ictRJMr27h6zkRhbCI7l4cSyBFYQ=;
	h=To:Subject:From:Message-Id:Date; b=KfvMu82jUiPEPQJmo08JOA/CXMWZdd5fczSlqkjWyTCLoSXviezbtcGOaQc9UdC278KRS4pMlOtnjzh10zId4IJpEcb72MC+PV1XkHZB+W2ha2F0AJltMyGxZG6owCNUjyKs91RGUovUzceOtxyRFvCanEv5VbQpFUKHfVCEWyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+3176LC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+3176LC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0193C4AF11
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724607353;
	bh=fyzapf3624oG7f4ictRJMr27h6zkRhbCI7l4cSyBFYQ=;
	h=To:Subject:From:Date:From;
	b=K+3176LC2qNc7MbtkRUyOiOqXROgRt4n9GPnGnMilYzLgbOHs1+PB2eDReJEOqEB6
	 9tUkSfRA7zbcoT1Eclg/I/gCKjG+mMbFDgLlDp6jgSo26kz5BxV2RgIC7SOB4W/z+p
	 FVHIYDKEEQjHX4U+DNb4Mrr4UsWg8OlrIW7MgcuBLqWBv6TreLwlMHre/RsABo5UPs
	 pu0tTWD6dplmNeXCTxO7urOwpoHmeTcyMVpawbfB2s/D76AzyVHMSUIzC4Hh0UeTXa
	 8kcx489HN6v8Mv9oKYKDQDE4n/PApFMf6MAnm44EcqJgywZIr+6ivTwg7RSqrHBpov
	 YtsfckOjw8LWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B19FC5320E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172460735362.9885.11330599135990028302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d296ed300cdafa067c4fbd04515edbc41712bb84a4342c4def7dc571f5cee106
Date: Sun, 25 Aug 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724607353
