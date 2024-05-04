Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5968C1E871
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 17:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714842143; cv=none; b=hquXBuaZ9bhkZlS+sjeWEup/kh6QYkUSHmub7jRcAnXsdu+EpQN40RhPJIE1UjqZZPjIFVOqIiZt1kKWqfNpkEPP2Yy5nRMrrGmWeS4LytwUAxfD7v3TQfcIPVOy7CBmBzJPXe/Vd01lEacUDHhIEvWx0SU7yn2EYOYT6N5mxC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714842143; c=relaxed/simple;
	bh=m9a15evsnr2aBOYYIUgK3q9zAimCo4c1RBQaWAxy4+0=;
	h=To:Subject:From:Message-Id:Date; b=n+LxlOg40eUt+P2DaEf8+05clUQwfMnigWFzaqla6eQ79C9RiPG3QM33uvk91CxIryZNcBijsbV/24hflUk1CWMymgUT9UT4QWB48n8xv7PiD4xtRrAJC3t0n+TOV98ygGlhT6n6fTqhBd0rZRRODMgXmJ/QcxchacHie3phzU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JxxJ9RYh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JxxJ9RYh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF7C0C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 17:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714842142;
	bh=m9a15evsnr2aBOYYIUgK3q9zAimCo4c1RBQaWAxy4+0=;
	h=To:Subject:From:Date:From;
	b=JxxJ9RYhOUHAd1orkDWtHXfDMe0ZPrUuVDnjlbX+DuA84rlpSDc9Oj6typiSdxxGS
	 bcUC/Z57vdiRa5R49Cxs1jh2W8CDHN7XyZqY3kghA9tNZpsbozbaT2hcMCHvieMf77
	 RExqQg6AQWMym2Bj36Vrc4xbDnT+RaboFbmNQ3+je48T0WnBGhtxYNCkS5GWb/BIf3
	 kweNwbxE4vgsrRd0cq7OttQ/dspHTZn8s/Yg/pGE4bGxbm0XnKhFpXrKKow6OH5+eK
	 ncT93oVLzW4nqUPPHovACVQwsWPuOKoy4OlNe49RaTu0tJ6X6zLWPF+FdB3WZmJODY
	 YyIGDr7WooyOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7FB1C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 17:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171484214279.6604.3634483744760433446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a37766910c9b1a2d7fa9262c9ee729f4c0cf3fbde48338d870fde6276be488fb
Date: Sat, 04 May 2024 17:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714842142
