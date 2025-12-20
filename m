Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9C826ED5C
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766267634; cv=none; b=ep+qZ5ITPl97bg4CUhujYgxFdtkIwyGBFjt7SBcWTtQ6rMeRmi0xS9zD+x2kcDlLDQMG7/9sCh1yAAMIRVEZf83IOcmdbARcLngCaNyc4euQJvaa+9xpQgj5ROb7qEZ/Z7n59+8cYp52/rciUbSiq4G+PTjproer2guAoO3sR68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766267634; c=relaxed/simple;
	bh=7K11tjN/S/aTb1Khhc5Jsy6+2AmIXEhTyzzFzvxsuo8=;
	h=To:Subject:From:Message-Id:Date; b=ZZgfmEScjlPnsFV+QV8gf4ZcBBHMgeo1uLgBBMAiksak8wchMr6iWh2Gyc1/xNzFfeDMPI1R9wjRgUbCgCqgKznFr+N2QWK5/rh6JrqF2QqvtPjEWfeMDIP1nnPBFit/pDfrDvWNLCZVELSmZrxj1uXAR2U8Q72DdwAKW7aWnH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJKcUAdn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJKcUAdn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F1DC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766267633;
	bh=7K11tjN/S/aTb1Khhc5Jsy6+2AmIXEhTyzzFzvxsuo8=;
	h=To:Subject:From:Date:From;
	b=MJKcUAdnh286+ZckU2cxEQisR/ZFde5tGGJSgcJ1SqpbD7CJPZg/FcIyYqEeD2X4d
	 0QTDuBl24NzuGjMbnX5d0jLD9mIP6gGVq8ETZB4HmQQCkM0wLgDR38Txg7ry9bFlqg
	 vMC9OxTVmwghaTiH26MDglmzOmtw3B0aT6pJ20durtaZld7xh2IF7EHZgchvohdo07
	 iDiGzIE9vcs0qH7CecBa5HMQ5oCYgyyD6HMfLrFJ61FJh43gKZb4T7bzzz1rEa95g1
	 KKcBaoLyOYxcN1jA5d8t/ieckYU4347JeWxR0vCXDEjlwCKeZxdAwl96Pb4K1BIQ6i
	 2MBt958xrailQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932BEE668B7
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176626763358.8628.12004926129488993463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdd4cf5a81780bb1276d8de6dab0139b5e679ed3b69e228eba7d33e7519d619f
Date: Sat, 20 Dec 2025 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766267633
