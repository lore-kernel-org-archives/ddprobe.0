Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF0D2AD0F
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753127994; cv=none; b=K99Jxw0lc414H+Zs6bLoY7SKwmruX0whHv+s1Z65rB3xx/DB1wFT3HT7pegff/ySALDVKF8AdL8qgUR5VRU66jys1wCYe+cik//L/xD9NXRKL5DJe1qtOSxwo8cI8Zt9G9jBU9//oNZd3Gsq43pf6mN4JSmw/UeLkfHnJLs3dPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753127994; c=relaxed/simple;
	bh=zt3QXYxtufkmz8/2lulzVFdXeXPbxxYUNNV0soQIdwc=;
	h=To:Subject:From:Message-Id:Date; b=Me8MrZOGoc5t5STfcgducy1m1mZVDQ3/z2AULbLt5Y8lnj6y/e9KLCWFc6uzI850Q5sR3BJCOmB7M8J9QZy2dbbDycZeacRf+VVB+9RWcvJJKnx/nb0b2D6b004wX4KNH1CUoYf/Fw++sUSV7RhrKDoncWbkfNRG8fIOLNwPsHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oAtR97wO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oAtR97wO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A895FC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753127993;
	bh=zt3QXYxtufkmz8/2lulzVFdXeXPbxxYUNNV0soQIdwc=;
	h=To:Subject:From:Date:From;
	b=oAtR97wOFE2sj1gpieRX0ajz74RrRhX+ADMczCUXe1Nbz/rmt/PuTrqQnpiFaapFx
	 e3RVJMUSCdhxxCBg5H78s2zFJzX+mfeusmomKIZiNmcervpjS62qv6jtRT/+Oky273
	 gEVrcgRZUJiY99kAiKrw73KC+oYyRelsuJyTMTbp7R7hxg1hxmWubkbNqQDnd9Utci
	 +qAL9f8oVx1M4Vwi34HyNVIIFgWHezPhPkPDLiVLmHU7fpgA4ClXhfjBEZs4Mlp2x1
	 z66gSoUyYfnvfkOPMqCa6QKxIkxM/ICAqyvDjqbB2LG/yDEnexYD7iVuHy71h9ZZTX
	 Nvh+MATtjAW4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9817AC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175312799358.10926.3575154447023706320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e29aa76e16d56702c9cd86cc6a0bb9e4e934694ee96b79197faeeec21e48e8a
Date: Mon, 21 Jul 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753127993
