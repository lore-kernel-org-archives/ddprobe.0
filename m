Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12ED22FBDFD
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773356694; cv=none; b=RDqYSWPrTKfD2ZfhNpFSJhmUnsodZ3m1vxMgV73jT4FaF7eBhWx1zG6Q1c4fK2yJwNzBJEsN2NWn/6dC2dSJJijh3c1O3kLbT+v8pKrv2FA7gCvEOZfVKmZbL+OvUmjgXqJ7uC5yZ7/N85plArO9iR0lYjrCMdIEiPsXUI3ckts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773356694; c=relaxed/simple;
	bh=De8pPIfpMSEkc3/bp8xuQfvyT9LhAuYqAjIshGAGYAk=;
	h=To:Subject:From:Message-Id:Date; b=d381Jy3PaN5vWG3fSuMc+qrvLuDM7AF5l5FTo735CidMNVppt1Qk0qtqlZH6ouUmDQEk+6U/t/+wZUSB7H1kot2W32RD5z+a5FIhWx4U/N9Kau5jkxAzrkb5BJ29wyylSB1bhk2Jt0NZIox22da8pQU1lUNGRkGq703+h5qaZWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+ZUNLVt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+ZUNLVt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA17C19425
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773356693;
	bh=De8pPIfpMSEkc3/bp8xuQfvyT9LhAuYqAjIshGAGYAk=;
	h=To:Subject:From:Date:From;
	b=s+ZUNLVtCD+4MuPY5tJRmgbT6WMuw3cZFh1Bfia5s8rXFrF6v2/yAkA1S976/TNvv
	 eoZgYduWA3RCl00UbzxcorAoYc+a+3TZ/TvqI7/B3kC9JrxcMXTnHPy1Ub9ruz9Pb8
	 W38QCqGXwkYMEUtt6kIpS85hVwz/Zs5C8e3pnMWqGBAkAkS90FXR38yjm8e32FO45t
	 ThGXW5IQy3SID1afxms2AbMWnV0gkUKOq1dLvAhRcu2PNPnaV92QGzCW9H4YSbHy3c
	 Cv7z8NTlH6XzwIWsZ/j3APy+17TsaTPx1JA/hVHOjcHFipojbZr7R6PC3W9mrbwI3o
	 MwmIVD0msuAJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900E3106ACF3
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177335669358.19434.11009003221613376723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d3f0b58153e49ce2f388c4766d2f6a52821a99b2c7da5a3e4a9d74a93fb784e
Date: Thu, 12 Mar 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773356693
