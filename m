Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7772A1D8
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746349194; cv=none; b=uXhwitQ0CLqOYLc0o5GwQjBh3le2fU0TEp4WdugAd8oIWiiQdnjGZl2R2R1UydRRNcghuN3jy80nFVNQ9SwvEpyC+rHVYgRKS4akXoFaVIoX7SJMgBMCMWWHk9Mo928hG2kXBgc6F4HydRASskos+Zz3gFqvMW2eHwOd5f1fPig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746349194; c=relaxed/simple;
	bh=pvblSozvf9KI+uFN4nzaowJKlrcJuvAtHpNLOqnZEmY=;
	h=To:Subject:From:Message-Id:Date; b=BJGAGoinsGIDo8iEJZTtAgus18K8qHj8jvxUvDPQH+gS3Ipr1GS3dkoVrkJGO2gvpqo5hvavncKOW0d28kQojBPva/bVZ492aPY6uRNCrLhDz8GBv+5GLtrCuZj11o9TXB9b/zVjJTOuFYa88AwYaG2z3qU1hTmdOTBukwBYL2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LmtvHFib; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LmtvHFib"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBDEC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746349193;
	bh=pvblSozvf9KI+uFN4nzaowJKlrcJuvAtHpNLOqnZEmY=;
	h=To:Subject:From:Date:From;
	b=LmtvHFibf87qVQVXQtAkBpwVdmh/XRutN03Bki1gx3AsHBhOrF+ob1kTXMgQgbtIN
	 L4a4lSYnHehduuCYrblNlxgGUfEeZQBYAmadzlKAGeG6L+0CXB5kkmNrnjoS6uJMon
	 TvC3XXDbbS/mFxBFG8p81zBGOV1rE2j6kpkhsq/aD44YXY2kcDloLSDUEuOFlzwxjR
	 BkwLbE+CB9MoWJyvn3JhkGGp0K26Kj0y99OSx4ohYHgnwNbBijDmhavqW8tK4ONJAl
	 YZfOZCUAsBgAkr42EIO/AdsYhRuulNP0/xPTtjCigHEeziGtR7FWPsG+a2Mxtj/eAu
	 B+e6pVWWX8xsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E088C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174634919357.9841.7402940164611363419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cf5a0f90b5e57bba496a0e20961d669a39379914ab13dac4c98ad04981fcb1a
Date: Sun, 04 May 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746349193
