Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214CE2D2391
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761703794; cv=none; b=p4VVWWON158Elj/LopZEDCRgHiOjVDeeQcS9Ch5zQzKOQgXyRXXC5+aEyxt9JQ1XBOUbsSuvDLDncrAih0HXpvICxc0NryInMZsO19quMkhkEtOjmW+CNmef7tnbV+fr9aR3sg6oAp17Rf12G/Q/T72w6Rtc2s1gi5a0RbmYkBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761703794; c=relaxed/simple;
	bh=ululdj/WUkIcPUa26o8dW6OSf2hROpUJ4KchSfraYIA=;
	h=To:Subject:From:Message-Id:Date; b=F06sKbzbwM35gSY0YWg2/2MoQWrKu/d46QHRzAz7aaI+fposxHH15YLKNceh+z0ntIVLYF6KBosEwDNULE8zSx/rOTXWAR+OxOmeEMFW1yPL7DS/1XhE5qaZUyLZlcVDMUH6jEWTWfz80KfeTKXif0u9/FOB9UyA4pmLzFpFUVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A0+RWUI6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A0+RWUI6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A257FC4CEFD
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761703793;
	bh=ululdj/WUkIcPUa26o8dW6OSf2hROpUJ4KchSfraYIA=;
	h=To:Subject:From:Date:From;
	b=A0+RWUI6rhfEDcKUCuHsHLkQNkSvYY0DeR7tBB3mdiYM+pNTjQVDRWSw3bVP7JSGK
	 xrBH9iWfAMUtfZMDUaZVir9vgp6yIfhHQ7w3UtTXsRAd2Pd8C9wK7Fe4z4h1bIkRZf
	 A6hI0q5IP3Ni+OE2HlEA1hjzkeg2Yxqt4VwTSVmwhEuay1aBzhEDUKFwqjkiUtIBGx
	 nW+N/JhrzznqCyVi7pfYXizS0lTMB8UhJhbMkOFYEoVSiyy7YIJgAEqP+hu478e3bB
	 hILtS2b8JiLvh8VXT83vWH1rKw6O2pMwlwdE+t16X/iCntw5Eru5U2laW/UT4mHNgs
	 DIr2s1GhrV5Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90853CCF9EA
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176170379358.18034.7186490777118107876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 732f08baf7a16b875061623f2b83dd5032b7a07f920c0334747efecfd99ad309
Date: Wed, 29 Oct 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761703793
