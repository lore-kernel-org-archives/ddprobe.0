Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E568330666
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 08:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781856994; cv=none; b=LuD6GnK+aVkyn2pkic4vf8AyD/dTKqvr1lyS1dL2c+h2jFYQqK+ccPr4yScFRJczVkJbhFlw6hSP+iyR4zaw/BTjDHw05INFHX4f+pSAw1aNRSYo9bTkmL+A6OZwuVA2SIzT7Iu69qe/Mw9JR+ji7SKKRwKgTZT+MZWoEh/XWvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781856994; c=relaxed/simple;
	bh=u7o7axP9frjme5usg7jjE0kYt/BZAk9mmXeB3rGf3ws=;
	h=To:Subject:From:Message-Id:Date; b=OyPpmyXa55JftGgaAJwjf6flop42NVAI2FHEOR8e3z58sefrdkV5l7NS4zwtlOt+Ion2fpfrCr8rqnrhYARj+GfIqAaWGMJD0Bfoyy6y8mHM9ZOT1sU18Sy6nCqnnM7TFikm9Y2flbYMFtZeG6BWB/Te3bTCAuMbefsf70Eddro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fu7K7ppn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fu7K7ppn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C964FC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 08:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781856993;
	bh=u7o7axP9frjme5usg7jjE0kYt/BZAk9mmXeB3rGf3ws=;
	h=To:Subject:From:Date:From;
	b=fu7K7ppnBs/2q5WaLyExfL1QbMbpuSiARTe6i/MOOnmdIkAc7Wakh14GDsWajdVCP
	 Svwr2Vbe1p5sCkzsCSBlb7OkrRwAFQA9RYGzw/uVjV6PvI13j8VMnxIXtoTcaKAGMm
	 hMxRVNeIHq7NkKN0A3noLZDTcc5I6/swoFB+jucV4j3LFPZCEwRiOjmQaLXgGrjmge
	 iJR3J7VBB8uGJ3RdR2an7lsJilni+DPiOT0Q4tK4Wpd5UxL0hLUlFfjdjcKDxsf7al
	 nQc9T4w0cmc3iZZXKivPtZSdYVCgREciMuKpOKzIFVYizNQtQSFtNlszTR7PC1qBnR
	 jt3Hxof/wQWDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE8BCD98F8
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 08:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178185699369.15381.9045306921816567181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f535f28f8504edae2ee47cb54d31c0a725814bd59a2b9745bb54ade22e0d7893
Date: Fri, 19 Jun 2026 08:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781856993
