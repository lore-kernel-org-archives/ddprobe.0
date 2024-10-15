Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F8C1AF0AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728999354; cv=none; b=j1kr6o/7wNttlZQv2sSsENAe5v6JWpYlmS5yhd92ZqAaEA2krLabl2Q1c85wKAutFrOklnpXuFa+1EYBfYLvdca8arW1/nja7O/K64nBR/xpQHfchV1XPWWB7yk8Ck8M9N6+V4MTjKMbVEur3N47btsa6W8dPs4FZDuJeH7tnSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728999354; c=relaxed/simple;
	bh=l7nfH9VWYPiBhKwdPrLRntWLAlgOEjb8ckabcPKYCT4=;
	h=To:Subject:From:Message-Id:Date; b=T0Dgqc790fg78UUTx47hTSi5BF3KA1eSZqrcFVPh04geLeZvuAJulbPt6L5uv2yQYSfsAlK0CpT8QolBaVES4GbArR/1xFM0TXamoFbB8d2yvkGFwZp5JIrTOc+SBvg1pSCO/ax4dLxMFUyHaO+/ec/lIBD+rKX0wF22ZxD1rVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RqE/PujU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RqE/PujU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE7BC4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728999353;
	bh=l7nfH9VWYPiBhKwdPrLRntWLAlgOEjb8ckabcPKYCT4=;
	h=To:Subject:From:Date:From;
	b=RqE/PujUdPrYSwCUQP0iAoa0ED9G1PzgEKEuuxW89sGgU2ySWMZLiaf3jTCuaRMAY
	 XNDd51UUR0TZxzAZeIxBXY44v5SXGBrHm+dO0C5/lgOOhv5lSCdmkRyYfk+TTadROa
	 JPTjX81Hh7EYtunY/w1bKLZkqWfNFPfx1NUtE5wRWb2GwI0e7ZOzjRZSsQIaNb9NGW
	 /cbY9UBumZjA4ATnPwVF+ZnQGKb/hLO6DjfK026yqwC9DkIT2jmI6bepHb462U0iaG
	 la0msnzuK27FsWLRmt2Ukto1JhdEbyqniQGdFSR/dJa+anmGaXT2ieGYhPOx+uxrC4
	 JO1OyPR+juDSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE8BD216A3
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172899935362.29946.316358826443349701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24f95ad4336ef3e6e8e38cf059cc963284bd3cd350333b065d0b288ac7ad3fef
Date: Tue, 15 Oct 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728999353
