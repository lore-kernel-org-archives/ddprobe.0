Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4D971E7C18
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785588634; cv=none; b=UubGgkcBh4UwZ8rmBWpp9OS33T6+RQQ297zdF9UhIC+8KHQjUJty/Jtw/EwiGVYfn6JFZ3quB84BmUFEOMMlSeKnRaTJZrRgSmdGiLvsTroyBetgPgdS7i0bcZNtLLEZOm6NNRGVdbwnLDdMaG8JyOKRKILOTZSBz9vMt8mm+2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785588634; c=relaxed/simple;
	bh=PySWOiPiagPudhfKYo6WLV2AaegotPpNewXyqPUMWBk=;
	h=To:Subject:From:Message-Id:Date; b=u57DMkXlUuyvrXFpdViQ4AbyCBpr67HK2rnBQgsGnfA3XUwO6NqFm150+dq2DgENuLDJk9s8C6tBzp3SsqN02G8PaFE/fYWhqGzFpycT1BmyLnkcb6Np0JxD18squRw5YtG+w1vj1nsSogYbkNLuHGuxXmhx8uc78EeHm13LWQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bl66/IID; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bl66/IID"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEC18C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785588633;
	bh=PySWOiPiagPudhfKYo6WLV2AaegotPpNewXyqPUMWBk=;
	h=To:Subject:From:Date:From;
	b=bl66/IIDlNRGo1K20r6NGXqvVEi5rKGGlCD+bYek0dOSIqdrs8v/qfbpa9AmfKtbO
	 f84eaUr0ICuIqFzwlWgw4mYQFDf6oq2jgfaVVsb7afjbt2bNUzY+nWFkz/QghEuWOL
	 E4EHL4fcwKzcwpN2lm/h2spC/R1ocLJmBGqGT1Q7aAldYiFbbbfzFbULWpS6XWMMIP
	 ZxroiTckzx3B5UOI58W23ZlAXYTVpLTWPTCFUaBhQtaT30V/V+kUJpD36u+wVSDASg
	 bDxPvtX8yQ5cS0ZcWSiWrU3NzT7fkiwVZ7keMmGnEhUhhq2rKVLUPA2wCJ3hmAhIbd
	 PMWa5B/MQmK1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6DA1C55173
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178558863373.28736.14560240093871500911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fd5db991c1dd72432af5d97c7e4956d1470ec4c943eed8e5fe27fee41d06b8b
Date: Sat, 01 Aug 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785588633
