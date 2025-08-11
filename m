Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ADC821FF53
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754948994; cv=none; b=dsWYDS3QvEdobmnW0l49w2Pg1bct8wiGo7WDuZ4xgFhdH5fVz2M9nDz8m1uzUqMl+3jxoL5Y0Xr2eSl/0Ea4iags5UpKvXdFHGQkYOUnALTcic9sBIyCsLFeg0PQ9hG1lehbAlPC7FgrYdiFZ8FP9DW/smkHlPPP5Uf1AbPS2d8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754948994; c=relaxed/simple;
	bh=pkysltDahsxU3cgmXfqU5cKpJR+PoRb0zhNsHJILm/k=;
	h=To:Subject:From:Message-Id:Date; b=C0W6TzG8nIgvVuSq2A3sZHu29sz4FBlE5eUqoTalfMSZ2brEXr9wHDkDOIh5cRGYGFVWYtZXgTV7kF+aL1uV4Ji4GnMzklw6obhhZPhOH1XHnRj3IP1QY+vl41bD0xvxyjO+b0MXcgW9A+uUg9amtytZOpu096z3azCDXIhFafk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/EsQOCK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/EsQOCK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CAD8C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754948993;
	bh=pkysltDahsxU3cgmXfqU5cKpJR+PoRb0zhNsHJILm/k=;
	h=To:Subject:From:Date:From;
	b=r/EsQOCK26PgI5QzQyetubO9kXil+oFLxs7yjF53dywitL6Uhe2iKV+emFxGAD3XJ
	 m/61CoC9I6xKBgLJ0GQsyIrzg5RZelI0XTenWaG96tM0Z/w1ipNb1o7+wkihqviTGc
	 3Dm1Y9zkUZgHXpqefb4DuMyYZ2VpYiC09lBvD+lkcCqOxvEvJnEYH3sM/ZQozhc/IY
	 +HsL1PTNnGmj0WQzrYFd28TQfRdS2s6K6EvRlf87vbApggzLbG+HhGFe7QFXsrDKki
	 7Su+355aQDBnDt0+8qvzYjNmLAuz3wDIb6BAKswv5+xhjn2mprOS4g/w7c3LYCFOT6
	 z2H0/a9Az6ETw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E734CA0EC4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175494899357.9670.7152539229693416287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b09ed1415bd5928ef26bc3fd8c15cb7f6eb29ffe7ca0da3006fbec35eff9b80
Date: Mon, 11 Aug 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754948993
