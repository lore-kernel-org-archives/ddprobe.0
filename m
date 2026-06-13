Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E46A156C6A
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 07:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781336194; cv=none; b=u2w+Ebg1zfOvqNJlihmNV1zl2/LKDAz1Zz6tmyjHuTdxDjDDWKoTYAQE1aJQWMh441Vj6Or1C64A65AGY/8H64T8RmIKs9cYErg/syr7dadkC1HUt58c+LW1jkoPj+yt0KrtPln3AvyDuNrVPj+qSNXVv/sQaEMvE9uxlEkLYW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781336194; c=relaxed/simple;
	bh=9FG6byU52bEezhB/Kae443tSjyaDmQOy3KmdNtuKk0s=;
	h=To:Subject:From:Message-Id:Date; b=QyCWI2Kz/08sVPcfOckd1CLMb72AJqbrtVZiqk2+e2qiKQaRF5NOK4n7WzWABInk257ipsD5Qr72ZA0OVLXFLKr0riKD+I7HDiaUCd+H78ZiykONGtUIOJVScugK9dKLNjMbXxVWN71I7va5B2XqHHQFK0+p2hC1zZJXbO02MsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCW1hxWY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCW1hxWY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC9B0C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 07:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781336193;
	bh=9FG6byU52bEezhB/Kae443tSjyaDmQOy3KmdNtuKk0s=;
	h=To:Subject:From:Date:From;
	b=rCW1hxWYYLPvLhy/dZvAeIXwCvi58bNPkSJzZzu7h8yfEX6ntWmeLUgTxNYXRnuKC
	 Fv+1o9V9UrsTGRaKtLgEMi+2geQben8j1ArFhBEvLmcxa95iGpOOg+60bYAbchlBnW
	 Sbfnmj2BkTEawMMqAR7MJPgImx2sqfEyGC34l8D36ldH9CvUVxWMQgY/7WxIDs9P4D
	 8CNOf3jQtW8F98973YG4BdDheiXS/HU2CczEezVldJ/ihyCsvoHXeOJwgFyffFWzNM
	 iuTsrM2fZLXk5yKKvU2cYWJNPlVqIblcC/z93l4o6ckNqOkVEPsLZGpSEB4Jcrn0Lk
	 3lY5vV+JjaFeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD4ABCD8CA8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 07:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178133619373.25918.11018913316613378253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df7831320c178fe8370cdc5d86788c18b32b0e163ca9abb5a1647a2cc5e05f3a
Date: Sat, 13 Jun 2026 07:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781336193
