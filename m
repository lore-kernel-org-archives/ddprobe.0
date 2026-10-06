Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BF2D227EA7
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791250234; cv=none; b=SobUAKfuDgnVWjkkW9qpkP1PoTtrdRaWSuRRRvkTXgHXYYZJbPeL7+Xj2Ax9VGAjj0q/z2tQT3oy3CI4x/a/4y+Lbt98j6Dx+hRrDJjXcZZNpaLoE2BWM27gcrltXNVMlOctYKQV6OyjlzflNfvHNo6UX+NtP/e2U+EeHAimxPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791250234; c=relaxed/simple;
	bh=Pym3iYrnLKZimcrRb83R366gg8R/4WHq0xOIKDGs4cM=;
	h=To:Subject:From:Message-Id:Date; b=a5qlXm6Ym/AvUmuEV0B+ylleQarLixAGD+Hk7qo/G3gbTZVWcmcK2hn5WhAUD55XzgH0gSEv4iqDJBusAiUILj0ztpvRrvWg9TtkeZNZIyOyU90tXub/Q76k+X5cK1K+4prQZH++2jUUyvVYa84cd0lJoiFZ+zN3/hB9NTaMKdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l5WHOUXg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l5WHOUXg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E2BC2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791250233;
	bh=Pym3iYrnLKZimcrRb83R366gg8R/4WHq0xOIKDGs4cM=;
	h=To:Subject:From:Date:From;
	b=l5WHOUXgP9O/ZEZ3g4f7pGpB9zkIYiL46/p+4JlEOwwEQnDqjPbg7X2cOHPxIgYgy
	 pwn70awPUF8k2UqDPGK960tGrID9pDZV+TQzNx9sb8SR2qgI6D9pPYRhI9ErfcN1zZ
	 x9JICI/MQMrGazwhXlrTP1nM+FsJH22QJltbIWpBcBwBYfLXGZp/tlYShLucYvSkVm
	 9CI4LZw/PUDlaNq0TJ2odzhoh++MTrDZOV3LwsqJEZaBCC+6CYl6roTvXSyech195o
	 HJpjxvbQgCsj3BRMlJB5czr0qfYzPP9hqx/2pbQcR0/TwYJwr1A3FENxHaEElMfpX2
	 Q8ovQT0qH8V+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E52CA5FF0
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179125023369.2345.11676666706221637369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4dae7793dc2c262dcb43fa8ba86179481b7299d358b783512548e4f38754666
Date: Tue, 06 Oct 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791250233
