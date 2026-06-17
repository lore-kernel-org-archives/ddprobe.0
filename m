Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E2B3BBFD3
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 07:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781681194; cv=none; b=FurukLgsdf4jrVG9vVn0UdNMQDbWYuADSag2Z3jOwm9L3c/8eVmkUON2T6swdRzw+zoK5al1h5GkaVKLpouih9VOKY4FHV+q+5yGG7OcityOCavyv4tV/+ddt0STyFdfSMoJIn7++IhOibXKzCbDuhRnAxlH8KJYVoUkAgxeJyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781681194; c=relaxed/simple;
	bh=cn2tOOFf2fSPSFtGJFXr9vVdicA7J/PDBzXQJGdWVjc=;
	h=To:Subject:From:Message-Id:Date; b=W2K/LZGYJRrAD3zRKhQs9oN+Fe4jZcUrqq33N4lAIV8t8KvzPAz1D4BEpwxa1qvCLSP9N+I36sof1cVZavqb0QfS8LIPIw3v7CiXUqPr1KifUoiJv+nYx1BWeeZCtxQLIuE4wj3sTnHh8/hBLhhtorR4/y2YpJsybNbUcn7frQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PI6LrZHQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PI6LrZHQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4C7BC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 07:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781681193;
	bh=cn2tOOFf2fSPSFtGJFXr9vVdicA7J/PDBzXQJGdWVjc=;
	h=To:Subject:From:Date:From;
	b=PI6LrZHQ7nOWGP5gLnRDN+Effv9fydmi50EMmrf9knxD0N96orLqyb+BPlPx+A2N4
	 iQOMatqaa6QE1KinJPGzRZqva0RdCPDoPRiuBeOk1nCpZlZs38ADhSrQuNNPQHKCVa
	 yVYXuDNNAZ++mM+3MZPdTERudgvbSoJVnsXNZ9oJe5CsX9HrZvSJ9UC3tZ8orcICIN
	 U+on9lTO6SsXu9taaLKTFtCgav3C89Q2CVnyOgK3OfE04lBOECZQMJd87fJXIRsf/s
	 kqMMG4GIy08gqLcoyfdo0f2gTSs6YLDWV/0KtMT8pTx4/1R4yLQ+PwrODI+pE/siTo
	 ctBNgrqklAxfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA18BCD98EE
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 07:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178168119368.20156.18066362106662454612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42d2d7f0a4779eef95987f71347f60148b3dc2960bd60d16cabfa22eb683119f
Date: Wed, 17 Jun 2026 07:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781681193
