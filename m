Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C16C724F587
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 17:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740158333; cv=none; b=U8+POFLADxYVZ9T8r4PpiYinmGYS4RGBqNzbeaL61HJSEQJwayb1xPyMOWIq3+MxTfMpO4J2u7elZ+QzAirb77tj8FMYNFUXJ6LcyHDMw2VnyqxjFGJvACdzfoEJXCOWdn5x5fOP088HzKhHGfRVCb5gl0qe6UH/cAq17Lcsrnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740158333; c=relaxed/simple;
	bh=F+N2q2cMfiRB50Bpxa8sFl+zzWxyKcuy6u0pCgDdwZk=;
	h=To:Subject:From:Message-Id:Date; b=EtrSAEwURPLQxwuJ7euvYr2jfZ7XQcs7VylVdJqdspbGJB+4YRH4qPZZ2bgco3VtemypwOvd+gtjFbzz5fDBriNJvccsUZ6Mk2xbyybFrf+kyhxzaEy9/5U6UYZVZ3BX0CVR1o4s3pHce5bWEPE9W/JIKfAEXUgmCbIL986Rs1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hqmHPSfb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hqmHPSfb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A4AC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 17:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740158333;
	bh=F+N2q2cMfiRB50Bpxa8sFl+zzWxyKcuy6u0pCgDdwZk=;
	h=To:Subject:From:Date:From;
	b=hqmHPSfbv2QAReI9LlC0wbuGIypjLKHiXxnq9Sx5AHgLaFp1AARdOztDAxkORv0jk
	 MDyItzAwPbpP8lRTTeGuue7/V+Q70b6RNvFx/g4Yr/LKNdzKVBuki3to9RdKUlBMIn
	 OSGQuvx+GjxtaHy/8RlSV7PI6qVff2YqkcShatiZhyR0CAC37Yb1GLub5kaGfqCp0M
	 CBbaJO1F01BFnCYtP0YOrKZtO7oXApZD6qqwsvZwFif3NFshtdR/BbWAUn4BZ0zOrw
	 8XuQmSaLN1cOzIFxjkQcTsP2nSJFYmv1Lefi4NM96mk7XvwGPstsn2cx/23Nxl0JJb
	 ZTn6jfpqzATaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDA0C021B3
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 17:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174015833358.984.7940955396781761549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e44e2db8bccb0548a8c1476d126a5cc9bf346fb76932f1d1e67c00a0d1e2d48
Date: Fri, 21 Feb 2025 17:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740158333
