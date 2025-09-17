Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1606E30C636
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758151794; cv=none; b=PfDzO2IzcHaFDQvUzH63oAHjjO7mD0ViWeVLfMZaEP+UnG01ivu69V1o3WoWea+y0Bo4Jd67/X45tdA6eeaOBg+GtB1mkZStohsa2nQvLjVjTakmSfayx5eTk65QxWJB7I5C+36M/poUdNy7Ft9Gc2XBH7fLySdk5KdoHzK4GKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758151794; c=relaxed/simple;
	bh=jm5/YkIWF7xWMg1rErzocI5FmXvLqJ51Vce9+LC/z7g=;
	h=To:Subject:From:Message-Id:Date; b=JtZ6nd45/IUTpWnR6niKMS2T2ezAQ1DUZAzPPGw+vLj+jbYN+ZZNjQwJINpDttFyKmtN0m8iE6d4BbOhEYdY6zeZhQdLyBVgtQjOLGZQDEX5JW2IV2f85qaDGNefUNW2zA0nrTKyDJWg9YBwxZ0vBBV3pN8HM894Mnm8lCCOgKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pld6ljhF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pld6ljhF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2A8C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758151793;
	bh=jm5/YkIWF7xWMg1rErzocI5FmXvLqJ51Vce9+LC/z7g=;
	h=To:Subject:From:Date:From;
	b=pld6ljhFKxQjJZ2+HGufH6m2tQrIePeXO9M3TG3CDHtUq/aVBdwCJIy2zehYX8e4g
	 Fpcd9Z4HQBoPIVk7HNdTAblIfPOcJLWpqUYGH7hmrPR5PpfAwS/Pi9JbUC3CsKxoXm
	 EOvpHpXIDb9E9ZduqDa3qJ/pv2XzIqqLuk39quQkf3mFrFl9zm4o/4Q0iDX9JSSnvT
	 SGWp+kba+JdnpH3LzE0gU/+tK7uJhMl0U9lfTzpa2A3sSLGuL3Azu/cIReuhFGdFFr
	 Su8wnTaoukN7cGWMbmmwewt0p9cGAg9P51Ujgk4aL82vLWkBNrJys2RZHYvUGkGxua
	 kHL/VZfHH21hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4F3CAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175815179357.26764.6061441890987533137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee0601888645f2465cfe00a87e911ec8437f3be2bd7110852ac6bd4f2c286263
Date: Wed, 17 Sep 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758151793
