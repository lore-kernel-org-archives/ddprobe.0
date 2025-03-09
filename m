Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD2518D63E
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 21:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741556334; cv=none; b=ElV87ulHy1vUEA4IoUPJjPu67gs3m8jLrVa20kUyaGd1yw379wZhT1hsrvLawkuo49fqmX/mR+jM7JFtzo4O0GdGYHX+mkJ0HdvA94XJEPTPoBLDI5S0ArOwOATo7F7EVkMOuCXm+mpOcZyVae5ubevVv0kM6uOMDz8bI3SHYQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741556334; c=relaxed/simple;
	bh=zKYuMTiQ+xKUuDc2edKKdryJ48sTp6A2pGW6bwwpJfA=;
	h=To:Subject:From:Message-Id:Date; b=FVbSKBanMtLCMAfXnmINXIwYxWw35KsT7qRpQ64MxJAu+GFW5s+6N3MvN2atVvpvLo6e+vMJFINFWG7gMvapVVLteAM6EfBJi34P99sneZY2b4GI9uP4N7AnMyu7eYZn4mXGYS8IwIzSREmcTRjUCLLTrJ3PZc4/H+WRtuG155c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ch7Zbiz4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ch7Zbiz4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8490C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 21:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741556333;
	bh=zKYuMTiQ+xKUuDc2edKKdryJ48sTp6A2pGW6bwwpJfA=;
	h=To:Subject:From:Date:From;
	b=ch7Zbiz4gObwuh6Ccqml7K5F2qtVPNrylMSC62KnGHL1PpGxm4QM2xE+NaOinfnG6
	 GwX8h87ElW3iFXiwGXqGCRUr2PZuB309uwAoF/7Uxv7FRbRYqePa85uh5dKghwztcf
	 z39cNpVW8yYOPOzEag/X1RaF9TkiNrrbgPka+Hxq+5aXlTu1xtslS25TqarvM3/rpU
	 F6FLPNblE2Gjjv27Nv01RWlMTuNO96FtDRKFOEQrSEZFJhLpyxnHO0QCQalopU4UOj
	 NOR/LOAytnyVEvl2o14M8wYAYJcCkt9aTCBgikdG7z8IETUrLDPgJd77g39tToztto
	 8I6ySFp5yM3rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90213C28B2E
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 21:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174155633358.30925.3024296980282399991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5c64702fb84d5091910bc5eb87e97c7cb9a7d21e691b7d30e7a494d256e87a4
Date: Sun, 09 Mar 2025 21:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741556333
