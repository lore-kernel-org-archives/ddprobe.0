Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1985F2116F4
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 01:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778893234; cv=none; b=gul1kuJavQ3o5BFPBv58RMFR5cMiUzwHuRMNcSEyQ5Qw0TVxWGNvEPJVcYXY9q5Kt6HjGvlX5hmKfEo6pPgfO6nZWqWnXIBzXlJP+Tkq5Blcn8Qnb1hAb819pQp8Lq7Dx/eP+25exT7N4+wz9jnNIXpMw2clESqqdEIWFIrEzS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778893234; c=relaxed/simple;
	bh=vEihDULsc6GBI0ILfYpr0rx+hAbGQsG2KzkppQHi4g4=;
	h=To:Subject:From:Message-Id:Date; b=LDCSUPAkmsRzvIHbpaXZLat125+ObbU6eV/XV6sYnfrOuMRWVsQ1GUNvuqSanJUL78a2zJNCZaRb0lA/6ablWSVlzcUOBeBqqqdDc95lg18WQuFnvHIdRa0mt9hClVZLRQRlX7Jo/u5pcYSS1iDUR35N7th6cfQl/CdLmhb1x2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pdESq/EE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pdESq/EE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C22B2C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778893233;
	bh=vEihDULsc6GBI0ILfYpr0rx+hAbGQsG2KzkppQHi4g4=;
	h=To:Subject:From:Date:From;
	b=pdESq/EEL2QtPSbTb1Y6Jhw1u/wc53b+Wiz1aFwuJspG8tchnHabjMI2cQr/QSNHn
	 VHlN6jmT0kshZQSwDM2CXd19YZBp0EvHBJEFjPRq9jzP9Q0Y9j3/Zg8ZqGD17UczJM
	 9kRr4PEJgAAuYHjBCm7odpFndVl+g5VUhpU0KIIdHhdgbcF+Uk0fw6hpyrZqnK4fvX
	 qctprJi41/zxJT7RcV1KDjktYJBmdzYyDFeyrJZ7wIFpLSAT5H5FFGthRC5pxt9Yy3
	 5Bh8Sy4WyCqScCWo3VBu//8awoeWFTceVPhFwjkJoob+p2kL5SIMiLtKJJsoirV0Ck
	 YOD8gKeoutZXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2B5BCD343F
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177889323369.23860.2559519565974436714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b9ea2483c0994d9435b5aebeb9488ee68cf8051c224b3becaa3546ed29e605c
Date: Sat, 16 May 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778893233
