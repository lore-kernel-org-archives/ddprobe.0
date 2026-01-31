Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1F28C1F
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769826834; cv=none; b=mOO7peBVDFCX+Tmtd3kJkI33JfjL+EHzrmKdZrug9nNiQLUP277pdqXJRpqRBeOiNrx1++hPdue6fQPR4liU+m97BuodS6vI8xavXSyizFav5DoCqW+SR+NBTpbceFNb9r/3LV1LxYvW4IjT4tKcDXjg1TpEOSRINWZxNSxMKao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769826834; c=relaxed/simple;
	bh=Qgzc+ibKzOAY8joTcqARpLyeCA8xlaz+JPqCd65e8Vc=;
	h=To:Subject:From:Message-Id:Date; b=hUYLxgAyYv5shPTSzdbgeeKGoBcI+BZhjRDPFIagjZ6WOllb8JUghvusj3hvquTJEFDjt/eBR/t83INsE++NhaiGIHVvCBnasd4bDTRzP820XWO8uN4gc16bi2HdaINlxIzPjIjzxXAfFJiwlcd7SmKlMJe9S0ZpGI31H0cLj4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bNRbqOoX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bNRbqOoX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7544C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769826833;
	bh=Qgzc+ibKzOAY8joTcqARpLyeCA8xlaz+JPqCd65e8Vc=;
	h=To:Subject:From:Date:From;
	b=bNRbqOoX7brpaD6ZnoxjZWtCB1QAxezzyd4DIAn/nkBBw0VCNb+PUKh7Onon3FU2s
	 3p96dObSpLYEyhagjl1dq8JHFNtcd7GIHXI0k88hW90oDAWmrpTu1Am9DnBIEBvVwD
	 UeDwEuOdBRoHCOPgY1upyF2z+dNyMSAy9ypbm3EMre6N9ngIyFBXz7CIFVA+yn7bQM
	 a7MLYZoIcCrNbBaBg0SkxKFA6DRHg02GC2h6upW9g3RmY8QYWmCOxN1RMfpIEP4bQH
	 RGsf32zCBHjQao+6pn0bj0XbM2YGT4iZ/JHsbDXY7J81+Z0oCHmv+FMFIrZ+7krUfI
	 Vt+nHsfiVoxsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935CCE6BF3C
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176982683358.7075.6487961578644684780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b1a3855d9b0dc8ce74aa1948ed4be89e465edd9eadde5c4ac36838a40cc73a3
Date: Sat, 31 Jan 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769826833
