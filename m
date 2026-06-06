Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E0982773CA
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 16:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780763074; cv=none; b=WTf1TdeE8eJuCDmCjA3RyiSvnfGXFsiNwcTBXVxQaldAHpv+OokLuLrSjXGbLzWmWf5u2dhJcPotDFashy0tIMag6gJ2FdC8s5OPNIjNHpuFcO16WckSEEY4h3rfj9oBSXIn/vr/n+NxAavDibaC96NCZ8uy+yyFBQMjsaYbM3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780763074; c=relaxed/simple;
	bh=+h8bJX59MiMDZgPGgcHIGbNfLjh2Huuh6LRgfP77dQ8=;
	h=To:Subject:From:Message-Id:Date; b=Qkd97EWuj08RyGabYdjFhbf4t4R0ukyJiiYCS9DKi4AsVGwdFhL7G3DamDkKzNi7kXJQJRABJ0R1iKFtYrANFQx6tPsQFICFMpQ1YtNdGyPS7e21mXpTTqdqkWhfPZ2drC3X7g2jqlApgY1Ps/Snz6XuofNGTTHRfy3BNHzfpFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iE2j88bH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iE2j88bH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8136C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 16:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780763073;
	bh=+h8bJX59MiMDZgPGgcHIGbNfLjh2Huuh6LRgfP77dQ8=;
	h=To:Subject:From:Date:From;
	b=iE2j88bHkCn1Wxv3pgsSMOIgAR+sLnEepYe4QgK12rNLd3oygiJttWDQmznD8ZU//
	 grudr4HSQmcXMEhRBf0mKzBegAPsu4Q0Ko5oTWYh2FesILcg3dFKvU3ap2dJxM/tA7
	 yNnKYr1LkUSTzfDaIWQJYQ7JpIgGrQg7zzAPGKrPzFyY1piuXUTKsCWH4WA6c9A1fy
	 XG8zsEOklCIOTsUVEtPs3NthmSP8qHTviWpgFmSZByALT+E8FzLG3NmeYtEonb8t0C
	 7mqnDEIncROdNuGbyMUGIZLUT8AgpaMODtCQZfZnpkCSfF82gjEWj6N4Yf5hFa8jcA
	 zBxefY0tiz6rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB83CD8C8E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 16:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178076307369.24247.18126625290952864148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67eefe44b853660100d9b83eb3ff1042175a8d318b87a8884572a9ebf7c3bb58
Date: Sat, 06 Jun 2026 16:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780763073
