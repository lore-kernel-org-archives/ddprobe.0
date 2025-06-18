Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF592556E
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750237194; cv=none; b=YkZkuL2kQ2sVmX02/X9plUV36JYVly4wAlY1Wc7H45r6Cxz97bNucnVGWqTL4w+/H4NYmEHXr01UQJO5ePGVA9KevXrgyvdF1LTFpZHNua7kCoE2arRmQ6c+YYKK0RUjIlCfWEIlk1v8lwNzbpz06D3+GTqQk4YNXZq2DBdyROc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750237194; c=relaxed/simple;
	bh=1KIX3d+XxT7gbQow+FJX6QMoYCCSdvBZHXv0MUEhMzk=;
	h=To:Subject:From:Message-Id:Date; b=gbdk95TZ+qqoqC4LRWuFgVDvacUEEFtDAYZDQ2iHOags5IJCy/TCIKdA08C0L7OQKkQqAQXc9FZOCPDYQ+FFV5ZJME7M8VrUrzz7aPbCTmz6saljbShPkld/vlRBFA4IIe7YhyhRHjWLdk9KD2TsjOvBR2AGLZJlCPTBHbPCoQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTXAMJJQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTXAMJJQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D09C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750237193;
	bh=1KIX3d+XxT7gbQow+FJX6QMoYCCSdvBZHXv0MUEhMzk=;
	h=To:Subject:From:Date:From;
	b=XTXAMJJQBKqfb6pflMUjn3/hKgNI2J19hvT3ZIt5q5vzub6VHjnYkLLeWU1rguWJM
	 rk7wZQfJMf5RMVko9fid9J7oUp9En7Ugo5zJZ0uobpkh+Yp/hMd5Udm85g1t5uuA9Z
	 7XsFd8Tl03QZh5q7fmLyUIMURbWLBw/Fxc/eq4poPcZM4Ib8YLKpnZ2JJ+Uz36UhFg
	 HMiJwBIoxORpQ93yfSKp14BShEaFOY1jTWvpcZV8rft8u5BF9VRIRiXDZhVsGmPZTf
	 e9kZ7/Fubc90USDBSVKV8SST2GgHXOvNhaloelxDmw1AyVC6ae9VEnW0ixb4r/sD9l
	 G+1LmlAh8+vNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D39C7115C
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175023719357.32431.14192555267313266760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98fa6f818141e910294ff3a0eb2672ba697169aacabc31e8eaec131927af5a63
Date: Wed, 18 Jun 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750237193
