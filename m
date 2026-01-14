Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0326A20DD72
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768355634; cv=none; b=rqbucOcq0I7kMs6kCtRnux7lezlSJ6zIL9aCYbVgANUHb935yhV+v3u8ZoKNbpi0PrMMWdQ/SGGwFuC3P/Z/ZZyoPqTap5JY2IR6DJa37Nb/wZH/dorsbEXXpheMfy+ofMhfc86CfWHIJJ/1x8OKoimojNd+7k/CyDWNjcGo5iI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768355634; c=relaxed/simple;
	bh=FbbepRW/rrt4kaV6jxvCOmWAPwNjdzJdNfquIhusnNQ=;
	h=To:Subject:From:Message-Id:Date; b=epA/dtCoh92G8HA0M8V/jTXBV0IYXxExHmsCwYNTSprYZlIHDplJNWY1YdIXq0ksueA8AfL1mJP42Si4LNq5c2ZxmPGo4RlEbb6oBKkXocD8aWpConT7nc5CKpBkiJZCmV4PjBW+HkMtC0Zisc3jgJ2K5q5/gyBJqkZY8rw+2EQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=blxvH0Et; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="blxvH0Et"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3AEC116C6
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768355633;
	bh=FbbepRW/rrt4kaV6jxvCOmWAPwNjdzJdNfquIhusnNQ=;
	h=To:Subject:From:Date:From;
	b=blxvH0Etreq2EoNDScmoCtp2kLRc0FAhDwR+KDnL2zTugJoOHwy17Fz9vURQdwf23
	 x5HrfFAMO76huqZzmDYZ0ePkXkoylQ8AMV9RqIfhO9rDuY/owpey5ZEc7ia+Ybcv20
	 aiKOxeMHYdrOIv1b3LAVWkNviyiGqVliApPxADON/I3FEiAb3AXM7UWB11YuNWdDKx
	 lCGfuYZb91yTtBhlNx+BL6rfY/qRFLTxAaTMaCiG+yn903jadWy9Xa5s5PdSAvK0Lc
	 b4j34JeizlrDL+0OcAkMbHqJlI37EL14790DFnXh5XpQqcQD3J4J8Q3hH9DOzemb7V
	 vh1D1OWCxUxSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3CED31A02
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176835563357.11821.8299291970086032018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69e5b1b88ef0990a85c67981c391fed3cd20a5716d2fdf7606ea4ecb7c405ec7
Date: Wed, 14 Jan 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768355633
