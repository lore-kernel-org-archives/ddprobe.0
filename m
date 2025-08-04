Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26FD9126BF7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754288394; cv=none; b=cwBP2Q/hp4kU6qrnqAQ/PAbYyYCU5+tK7IP9YGQ02DduFMl341VOH0wRO+Bviu5hoH7ra+yvP+XGZiRX+4OxSxcydxq4KnIopb0GDXbTE7yuawD3j1kMDNkOfbtJJx9GN4r48aavlV3d/fgVEQsM2BW0y3Xwr4g18sOCCSTTCqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754288394; c=relaxed/simple;
	bh=PoNgye4q8lSVfL1XPSrtVdCoAH5oefsHeaq7/Kb19Lg=;
	h=To:Subject:From:Message-Id:Date; b=KthabcwT2+rNjLypgWkhhORZdYQphtl7WHbNboDblQJommNg70NxVzy6MT6p49LnQc5Uz0YrEJUtWvxHLipQQ4alSjIuNllxeK6xcv/Bk+93n/tFFEzS7x5B5K2tO5kqS67OueecI+ba/pWmYMttpiD7nPqCqXttkpF4tGVhDqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ol1ShtmO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ol1ShtmO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B00C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754288393;
	bh=PoNgye4q8lSVfL1XPSrtVdCoAH5oefsHeaq7/Kb19Lg=;
	h=To:Subject:From:Date:From;
	b=ol1ShtmOS+r10wGwZzX1aNXNsccPLQgEL6IqZL95s/yoo4OQKFDfPL7+6Wbi5sQ2X
	 OJ9jrfpeZIzTHW2cfrHAtxGMR645agdOK1qzRavEfzRyx/u5Vf8z0ywFCG7q5k+n68
	 VA3ZR/OMMLsUVza805iI7Ym/3Uex1YjmZEsEDN7Hl8Hxe0C/jjxX8/WmCQYKpeXNQv
	 WwtHc+A0VEnaPi4B9XfiSYkWpPidFfWeIOMVq7Mc2PSp/IHxw+I72Uups/bnJ0Xv8+
	 SIqEOOvs9BcbkravEnPrfrgSMH+JgjC06bAKoZtx+RslK3EGxsbwm0EnHflz0WqZ31
	 +Yr/DYJ/hl3aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFFCC87FDA
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175428839358.23249.4995835353704692412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3516c3863a01671df2efb422272ae943bba4199e042d05658ee98a46729b0739
Date: Mon, 04 Aug 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754288393
