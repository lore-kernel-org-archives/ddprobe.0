Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2882635979
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771573494; cv=none; b=O49AnN49ESA750gBV1CCKsPrAS1i0eE0lpSd7RwiSLgGXxZPy62Jn+NN/oy3g2BwiKGHrH8EZEI0bOYrVIOwi/GnMdz1MIGfyou8tsKtCc6LM8chGiYPhNzA+OYl6aTAt0KKxMnr3CZs+JX/yfIOkMMI0bDp2WZSeKiUCvY1GT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771573494; c=relaxed/simple;
	bh=RraMMWbE0ZftKMbl4uh2QuliBpA9kpuftd6hKJPcwN0=;
	h=To:Subject:From:Message-Id:Date; b=BYm3jIuM3cwbu6HLpG6JGCsQcSFNR2CemnMbkZdSp3g1a67OVemPNPNESaWCIVxdSnl3m5gbPCDC5Tw2/+ZhpTQu5kZmcH+2ZsCrWkNkCg4SF8lJHjg/EL2qzkg5POQ4RGX6fnuxdC+zsQ+GGeQSORj6KF28Tnya/mLksPeoY78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CB/Uw73V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CB/Uw73V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C12C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771573493;
	bh=RraMMWbE0ZftKMbl4uh2QuliBpA9kpuftd6hKJPcwN0=;
	h=To:Subject:From:Date:From;
	b=CB/Uw73VQhxPi7Wd3UbpkkpHrH/Fx9ieudmb3uq2ANjd8wbI4hSbxHokf8eC4cjHU
	 Xf32OIe9fkdZht87pSIiI9ju8tHglgG9jX2N5R9LdnBA/fd8/0sry+TPfIiXvxsVdU
	 mYl/X2g9+K0TmCYmPpI0rSJmMvbXq1F4uWpBqYrfrziR86dM5kjwATohWfA5ZyaEdH
	 9fSpppok904NoG8+Cpx7mafMOVuy90CilsbA4PimYzSHNOcJE/D9QSLqCRSIrquT7S
	 zUde4k4bPKwkAepKVA2uVORiUmI9zDlD3ULG2XOO2zPyYTJhQJuZY4IF54F8TiQ5PC
	 PxghWzWV9N39Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A430DC54FCC
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177157349366.11388.16175356310935223759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eef328d78a05988fb2a442a1025c695286ad5bfc4bde9316623300f7218a9a4
Date: Fri, 20 Feb 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771573493
