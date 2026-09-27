Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 563913A1687
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790512834; cv=none; b=Acf8dguTSPiF5UB+2kAYeyaerK7qnsCsldxrPXGIeBbsh1BLddbyeR6O+ajfJ7cKGqPaUOfoIv/A/JfD8CSGbbqg7gEJWsWVEkJthR3pfy8uJ01En5hCOJXBJ6Jj/iOQl+MvpepDHmA/XgkFL0xL53Aru+rcR5a5BiyTSJqU1vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790512834; c=relaxed/simple;
	bh=yr1415kkZMPf6GM877XCQBaFbvSdx7PCHXLjDrZz0C8=;
	h=To:Subject:From:Message-Id:Date; b=ijEukTF9jY6i7sHwd02+g+OE1uY8b8Bs7cffQqzNuAbYDB3ZnrGS0ThJNpVeplShIhE/EUD2zQh9w9Qx0ykR5tLuQU6K+D+IkwipxvOU8g5h7T3tl5FAWHxDXJZgoEsRchhxDtWnlaz5RMf8jF2MkoQy7jQ4MrQxZuPtQzr7wtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNhkIZjy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RNhkIZjy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD063C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790512833;
	bh=yr1415kkZMPf6GM877XCQBaFbvSdx7PCHXLjDrZz0C8=;
	h=To:Subject:From:Date:From;
	b=RNhkIZjyPSGz5lRPJuva8qb33Kep6IhtT+4wraLBH0lhkRy7/nEKKxN8adr8/svpa
	 OiujWtolv7RxKRA2Q1GebLCkBAYQ3gg7yBZoYkXxikIkmd0AcpxewHcfJfmFSmhwxx
	 2MevS8Bn8p0z6io9Kmx7WtJ43EmNmXfvToEjo/ex7YxiBs8qmGX0I/+4a6gKKwr8Xc
	 EGmpMbAWVJaDPX08W/5dIBqz2i1D/EkuRt+AolLZryHUhZEatnKoZr8SjWPx5qunJo
	 pEKmfiP+c56siFHDj1XEMKip+Tw2wr2beL980Nv6nifkNi+5hUxHIzl4M+mRCxMleS
	 h3S9WQH+Opomw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6CA5C9830E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179051283373.29624.17409674458471349457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f2b336efc3bc2940dc7c8c995664ebc2d9370418a52fa9473bcdc1619bc57f5
Date: Sun, 27 Sep 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790512833
