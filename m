Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2198E2D8797
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770453834; cv=none; b=ZIPKHgATl2R4cIn0+x3lEeSaO/TkqtRyWgEtfJAFTce8ZJX3efKUg9QPuFLmthCaCpiK3CXaDUnsN7wRuuzAgfk2pUnXfkdUCxgdTnmTtoxyfTwdvydRE8oNSp9L+t4ZIO8WY2fCcGxbis47Z2lHkyOiafG0V+Doo/VIYduI/J0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770453834; c=relaxed/simple;
	bh=/lPD6s3mep8CsomP+VE4sei7LetEcSKYAh2VxImM+Co=;
	h=To:Subject:From:Message-Id:Date; b=tpYZcWGxPDPW6dBgVTvD/HNGQl+SwOnZXXLPyZE11vYGudbQqn9W+21IQc70p1AXsPI/rhX0sUtV+C7luws79Ju2dLPiSEqnpI72pzlGiBdFeZv5iPy143+ajK5JMxsrAML9DUr2uLRZ1z6NVqaro1P2OcAeh8fz7O99MHjyHtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hs/Mgrvy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hs/Mgrvy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B25A0C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770453833;
	bh=/lPD6s3mep8CsomP+VE4sei7LetEcSKYAh2VxImM+Co=;
	h=To:Subject:From:Date:From;
	b=hs/MgrvyQSOle809XRjuoUSrqJQoRXSQIjQ9t589F0BMnuIByUxLNR/q0Q3korvjh
	 6uIQ9F8eeSJRUWV4/r4TOrFwNFOVLF9T1dw/4jkKAcFAKMFwwFSpMHwKisaKoecYOq
	 HQL8E2ggyu+tV5NkdLpYmw6Oit+Uwzss1uMHAjNi9oo9vBrCWGg8Xb3278F5Hr3ExK
	 1d16b9oxWx62AT7yWkVpPAGtFzjNc9ZvMwnpbqp4GP+W/CFA06Ojl4CjX4PfUffMaH
	 dr6XcNhL/GpC4K6EkxigLD8aFjuY8EY1mVhwaRWHQapPN8txbV0RK6zdGvqNFRU3nN
	 vsPF8boHCDhRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7F4EE6B72
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177045383360.2981.17528927743698154216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 817c50eb5f120125a343d527f7032823c94315815a9408431aac30c63a9e6b46
Date: Sat, 07 Feb 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770453833
