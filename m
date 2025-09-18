Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3242E9EBC
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758209394; cv=none; b=qIlJLPIzuI+TxlbQoxi47nG3/ofY3p0YSSc1T9e+odS2UbLC7Qp6yS1V+XiA9iYfVduO0xMC8Hx2/9VOZKcMxRvDOVasNxHVeEd5y6OAF4cuoGMuc9rOLUKHmtT25eKoTreN/RrfZI4Ws4b8RoJMJYeHwHpJtHeUenQ1fcKXtXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758209394; c=relaxed/simple;
	bh=bWsgifMJ9ez3VZdtrimmzUndkQE9EuNAZhIANHqhugQ=;
	h=To:Subject:From:Message-Id:Date; b=h2rjaTNLzgc7ZsuRYd3ZyVIklQCIZ5dEue97BsoVRMWIcolG9yXno+9KCGEiUmJ6NLjqTfi9b2jYazEEvSTeR+DhmLHi1H1JGyEg4dd+uwiRhR2uHDlmFPcC1Xq3yYkyGzQ+j2SKyZGeEUZAhDhcPpLGSlwptkq4wbjx3PLZ41I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sOOzzUIm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sOOzzUIm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13F5C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758209393;
	bh=bWsgifMJ9ez3VZdtrimmzUndkQE9EuNAZhIANHqhugQ=;
	h=To:Subject:From:Date:From;
	b=sOOzzUImiGF/AEGIisaWjzDQEz3zwpPyzj100BLXVKcowvtGg5fGL9cRwDvc4rnU9
	 sMGgbk+Jm0FjEZ3zFCu+X9G7nLk4r8YiMEjej4rcZeg8hVutI1aL4WrzVLfuoHQFIW
	 9JyKAYBeiIT1FdBpMxJpYJGL7pGJUTnonnW8OfpQ116hTBpGwVfeHaWfmedGVkiZLF
	 MCZu90qlbNu5KwN/5UDE2vRDrQccKgn+OwI2bRYcviHLCGpdqyfsQljto8YC+ijTGE
	 2llbEn/+anK6a7jNg94s8+JPDcHLtkuXap4vJ8h0b0ZwqeHZby8BP5rnO0lgBDIi5R
	 sIQ4JMIL1Qw6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92017CA1013
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175820939358.29150.13533436723430203121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1570334031896180c7eac6d640a8d6161f41af802c85ec57d8167965579e1479
Date: Thu, 18 Sep 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758209393
