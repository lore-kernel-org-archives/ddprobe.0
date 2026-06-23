Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B8237B025
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 05:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782191794; cv=none; b=WW5FCNEkcAKnx8p1P/xKMbg/dZWyoC71F5oWrifQrO636hIpeeZnDfDvSRcJEbGKN2rAK0vwF+h6Q54roEDIIVAswzPoxfgxcMAQpBgyle8/iS/vTRPbm2hBRL7VFl1J72hsGoQoJUhVN6Mu9wipt3Zklfl/uNm0QEwzgKHs9p4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782191794; c=relaxed/simple;
	bh=NROfM12azIVovYoepPdIkaKrqsNVGTJmcUh0Bjjw5rE=;
	h=To:Subject:From:Message-Id:Date; b=ZqBc4WM6yv5okcCoVproBI14tamkY/7vImlXQwHGGGAFTUcnQ59AEpyd1SUyMTuSLZd45D+igPlqL4+eybc+bA3Vhl3jNdeUixEArisc0TBKP7rFBubJIygGL3DBmFPXpUvOmWmh7huer9JZ4XUxV/SbfAIUyhdBV7K6JkJToRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M11GvD9P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M11GvD9P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC87C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 05:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782191793;
	bh=NROfM12azIVovYoepPdIkaKrqsNVGTJmcUh0Bjjw5rE=;
	h=To:Subject:From:Date:From;
	b=M11GvD9PvwP8KzR6z1wURR2ZwTvnVwBTTJFGW8/rKAy3KSHYNId5gRBruBq6oEV77
	 jDidM3J2jv6+v+OwSvgv+CVpvxtDrl0D/LidTs2WVSJPZnFfPVJ6SbsFx6nmQFJ/rQ
	 GSpOb9ahMG8zxoy/lOwoeYHN8mZALso4ADT+XZbAn9iPzzFZzKm0dRt6MU6CLV4x7q
	 RnxjznegGq23VtoyIABd8TnXAicCN4HGTZzQ196zb+ptXbSAtkCgXvVwqO/NGvbgXg
	 rQTFdpyoFQX6s3aXxZ34kT05Z7x4zuoxeUir4zDsPsoQoP9ytH969OcIE55qpzmcHJ
	 8ESO1PsPl86iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC85ACD98F0
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 05:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178219179368.15539.17420253949103075670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95d0a1f1d4d583d28ba5ffb2f90ecaf9a4fc35041e102f62e0564e417dd72029
Date: Tue, 23 Jun 2026 05:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782191793
