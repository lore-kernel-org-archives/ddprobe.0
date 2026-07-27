Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 658F737DE97
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785154834; cv=none; b=HZpb9K5vVn5ZH1d7yTG9Q0JLWXJqE8uR4wj5A2aImRbXPQAPiyDkrV/NYqdf16J0mjC6l7BbSR2Fj5J8wIxokLgCUQ37Kqf+pZWmsII6WzT/a78PVkMbK4cVbQoGaS2VAz3JVgH/Kx/YtGHYxebmbXcH1/wi/Ac8RM7k9Yvm+nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785154834; c=relaxed/simple;
	bh=cXzoHiVvNED+EJBIf9o50PP8thHFfZRhlH04CbTE/fk=;
	h=To:Subject:From:Message-Id:Date; b=QV3pto6THp1Io0/oG9/V66nRQzI1s05QTbo8nC3rXQu3XVt2fwX1rY8hW3eiLPIko48BLqWYojq7rYlVcAbYIAdUfNc7uKn55rhRlRNoWiazukEyqPFEm3zQaImjaPGIRqMxbDqzw1+X4Xp5e4FpTOctMCE061iH2SbBeVtk/68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ht75HRa8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ht75HRa8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6A9C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785154833;
	bh=cXzoHiVvNED+EJBIf9o50PP8thHFfZRhlH04CbTE/fk=;
	h=To:Subject:From:Date:From;
	b=Ht75HRa8qP+vLnQSSZMXxzN5u+FnfZvFrh73/B8/EenJiR8J252/MzLl1iS6Moevy
	 zuH+Kxy6yB0nWKqrXZMDurMxsE37zYBDdnZiK3Malhtoj5vZfUcMNiQMkSuhIS86Up
	 eKEpcr02XJ5tii3OAGJX8W0Gv15O9ETHxcfo58V+CgqX5fPJ79vAMJM2r+kbYbXceR
	 v4k4oKv+3sQ/lWl2jRFWYzijI43farDSsIPli5oowB75AdCbbUZrrf8wsNgLkXqJz8
	 MmUKBUcC6rnELz2+G4Ln8+mb8dDM13we/aC0wNkxvTY67PkyO+TVKzN59erwiX0nz+
	 GbxJTzpPHBtVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A846DC53219
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178515483368.26584.12481786058038497185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d6eb7f3447cea4c9fad4d66c420765967f010b3c5e8ac584664bd946389d237
Date: Mon, 27 Jul 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785154833
