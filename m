Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 642C514C5A3
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 12:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715604143; cv=none; b=ne+hh2TwP6Ei8rt2UDGTo8ro2iOSwsyJLq3CADSLoPxV3oKbdVTAxu2VlpZQwVDrn0hMMmgjueeYVFEKDMJzfKgu3BrdGS5eelrTQP6TQhI/LqVfBgPkSL1nSLUB5aKO3r+guDz7blwE7XX67kQlKz+de4XvMjakwpZIrmDb15g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715604143; c=relaxed/simple;
	bh=aYZyG0JfWzF8CWnbAoya/xSGk1uI2SCsIygllEgMctM=;
	h=To:Subject:From:Message-Id:Date; b=DBXD4pODcobDTeZiCkDqVV1hxFp1o/LU3l8jA9IUPoKoTaNqjeU2nvhNIsXJhUhb29XOU+7DUV2EOgrW0qizts3sSDAHMQFNeR3RBeHWdw9jf1C7L3BMkYJI7JiUlZBr/GZ8o+smwzphPGpR1Q6WAMLmufN9EpkceIIWcjdXRFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VeJrZRZo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VeJrZRZo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8F00C4AF09
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 12:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715604142;
	bh=aYZyG0JfWzF8CWnbAoya/xSGk1uI2SCsIygllEgMctM=;
	h=To:Subject:From:Date:From;
	b=VeJrZRZokHBabo2d8Mr2AejsYc8B6LuSQ/TVL+8eH8xzI2iXUpRE/S0bfXVTbZd1N
	 LQoB1leN5U7mHkiYYzXtzmqM2x08TBEGbb0MUoRajRxyOlLs4kQg/B8TQXmYwiQhZ3
	 OSgzsdoPbtiF+XNOIlB6HCe180AznakaOoFeYu/JgE4s/3zs2Dz8jXM/Fwz9TPEa73
	 fCHQHorN/yifm4/zUE6u1XjU0Jego29WwkErMiDcf43u11WIOuswbJKk9WAJ/Xfha6
	 JNVhDldC8rcfdJ3Y70P/ZtjucFLaHi39MbcLbQWKc6jAyGEjAqlH4oCRNW53DDI6Xm
	 xc5JcGv76Ul6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF281C25B78
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 12:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171560414282.19554.11424959631566339012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab6ebd86dc5a12774c308e7e44348848acee841cfe802072c1253d9816cedb39
Date: Mon, 13 May 2024 12:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715604142
