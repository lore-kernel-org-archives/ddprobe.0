Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539C72F7AD2
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786876234; cv=none; b=NsAzzL4GWwkHWKgTTcNqsoZ7ZuwaBrFBQH1W12mKHIn9mAyhg0/lY/ZCll/FZ8mwM4lFMS260EQpSeYWh2MgHtA3qbTJ+9xBxkLzFElYru18guV+ijP6wpWqt49ZtAUDPKo/djiAK1sdFrLreG+BZaU41b6CgDuKLTO6twN0wbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786876234; c=relaxed/simple;
	bh=NwItt6I36XwVDQ91H/3nc7cxnLKGFu49EhdcNdlPY+4=;
	h=To:Subject:From:Message-Id:Date; b=PmCg4mjlxFCnZ2EkAZLh+fhmtO7qLG9otVzoI2cKp8e0vnk0n9DIxHabo9/g5oweRlafRLZI4hz6YCuonknSenGhRyUTSIIGaJoVUn9Rvq3en+e+HtqOz5vbQjdr70/VGw6vWHaoVYZDhrVhc7ATfFE/aBkbB0s8nPRPGGPmumg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Js3vaBYn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Js3vaBYn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9485C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786876233;
	bh=NwItt6I36XwVDQ91H/3nc7cxnLKGFu49EhdcNdlPY+4=;
	h=To:Subject:From:Date:From;
	b=Js3vaBYnbe4uaLCkQnIspz5CG05ZGEVN4UZxMIRboJsoSQryfIm4eHYedFMSckhqG
	 0nsRNZqi/3ehP4XgYTATRVDwfkscVyKaMHoXNjvAX9CQD7KMn/V6R0aL/mlWHTPc13
	 gzSuu+mBdUCF0FTPBClzc3WlR53ABfQdc8u1D4qso0e8lrgSS7Xoz/01CV3L2bymx1
	 tNZeHl3y9+rNPY/xUbYNM7SOX+ToTQpLeHS1n9SCqieIk7MAbMor5thSDoo8g3tMc8
	 ZeHsLWLjo+pP7UuQuR9ksFhf/ZtHUFHZVQvperdIXbKtsCdeTy4BcTjA701ThAT97m
	 cg9eh12AVoCgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2382C5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178687623369.22047.6404389981165655606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60fbddd061f78bfda7e858fcc0e94681b75e54831424633d898c0dfadf3aa26b
Date: Sun, 16 Aug 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786876233
