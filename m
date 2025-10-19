Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D819F4FA
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760834394; cv=none; b=n3HImxHu+Q6o4eEmifhJIrJ62MH7mTyEoo2OvsNhskKsG2MprkPf/wl0JybOmCwC2JirMGU09m/HEJ1HZYuJ0ugA0njKQt9cd1sWRNk0eDF2pLySppGhoPct9EjZ/6JvFKTKpeB4z7ypiqVaFePqQoXzJ8BwBFBWLNBRxIs1r24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760834394; c=relaxed/simple;
	bh=7bdDfLXCXs0MsZGdyL84JItw7+heJt9iYhL+I7JdNFI=;
	h=To:Subject:From:Message-Id:Date; b=O2hXIpszQhu5vx7djmm8rkEGdXDmBStiYY6gH7gpp0GDvOlJHYnLi90m6JMR1ePb5EvUcC79gDBIpumlyCVKWOwXHqhkHDhiZrcMKOlyijx+xJnSbX5MBREerXSnUWLfPkSpCt6WAHqJBI73liy2jE6lawxtQrQMadyqMldKE8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ib9z7GBM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ib9z7GBM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE05EC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760834393;
	bh=7bdDfLXCXs0MsZGdyL84JItw7+heJt9iYhL+I7JdNFI=;
	h=To:Subject:From:Date:From;
	b=Ib9z7GBMGBo3GaaSgQTVP3QoRHGeQsoOxeHC4B970RrxSmGCconFjkCkrqyangbIr
	 0rkmO+7aIuwzthVPeDIJnI6NXCOAEIXLizw3V/WCDtnFlPFDSeGDKCWs9zMpFovUNI
	 bf7qRDp/KgSG3zNO6cRqTCVUnFf+4spPmjOFJZbzctXvxuhKwHEkZFzr5ZWn25e+fl
	 /EWlG0YVACZwZVGkmFz3jhAxM0lztaVM+yknyNz1snp1rTHq40rneJ7d7Skhcmt8/f
	 A8vPlrvgFTwwVnWSPYiOlFhyzGzh8k9E48v9OgMUrxMvqr63Jb+n+ak0Bt9D82noQG
	 EY7HZxwpxeGEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97173CCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176083439358.30303.2615413554836047848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1327179dd20da1c956ba4a186aed31b241f302165877105607a0b6ec43afb7a
Date: Sun, 19 Oct 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760834393
