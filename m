Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FF52E0B71
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 07:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777276054; cv=none; b=X6QqTikcUr7gSCQmBXmRuPhGeWZQQpJc/cjCyPtV78jj+BDpiGK7g5thH2O5LmMfccVgiY/b82wF4Pt0GkYC3epTzTzWnlov3V1JOYif0zUH52K+rDZWzPqVQLtcW1uUkYZu6rBZoAbe+frlyucA7ClCK2/sTD++tKhCWm6hI+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777276054; c=relaxed/simple;
	bh=mxtsPcSD6hjKIHtd8bgk67qqwv1Te7mD7OHKPci5Sq0=;
	h=To:Subject:From:Message-Id:Date; b=mx8rmgJFOWXgt8Hb3Zz9jecrpgQ5UhLcUoVf/YHEnFUJ6HKDmsOrWzqbANdkYriUyl8gficPuZyg/wvJUwUvEkTVwzfBFUqVYq/AqVsXCTYudTp5/cJG/CCGDFp7YtpvyTenDxyonx+im8pyjWam2UU4uJsu9NBvA02GJsKLiZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tT2Vft4d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tT2Vft4d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E84C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 07:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777276053;
	bh=mxtsPcSD6hjKIHtd8bgk67qqwv1Te7mD7OHKPci5Sq0=;
	h=To:Subject:From:Date:From;
	b=tT2Vft4dDUGKEOhOL1bm9pgF+irGqnKriBunugwJ2doOxB1bboZhnERSh7sr3OjZw
	 Bnfw6TpymnNQmDznPaB/nqt8x/MKamGvML/ElGIUc2PG95/JML2O5uz3valqMz7mK4
	 TMRSp4AsrbMSsALDayMIFQgyF2M3gW4Czf+U1T2Xo2wz+HwFVDESZ3J9YjyAsEmX6O
	 0LMN1W9CHUunOKW2ggqcpBnxM5HLEies/WBz4YmfiBU7qhsaQBQbEJWsqzuzIF0shK
	 TnT/tSCI2UTA9K5QdOVJt8Gz4g+aPWqyKD6iyTXoKwo1DGViHq8u1/immhv4DN/H+/
	 eqnM7Mmed3FEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E93FF8862
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 07:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177727605368.19025.5976039492375968965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65cceaa420ab744413fa5d77c1b15d86b14e425fdfb100b002c5670e3e02c6c5
Date: Mon, 27 Apr 2026 07:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777276053
