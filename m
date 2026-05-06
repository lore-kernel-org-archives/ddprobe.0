Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 000B43537C0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 22:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778105254; cv=none; b=GwJdqbOyrDUgVmCrEwLv2bNK6edPirbgBd2awEZojW9nutP6WNXlmZbPHnWna2RWlBZOXGzxp9BV8BOQAgr6Xm4jFPafzqpl47LoP1dvuTRgqtY4V7emPm6vnViMCAbrAeenfXW5+CAK37Is4PJ7VMp6IhX6uB1e2d5n60Mmr+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778105254; c=relaxed/simple;
	bh=yrKq5VJw/wOGRUAktocKXqWoyFCbYWetmw0vTCFpiRo=;
	h=To:Subject:From:Message-Id:Date; b=Urlex5PpuRjksHVbCc3eRO+1n84pFQDy+kaj6Ypp+lYeTy8MjzBF83nSMe4MC5BJbmG5vbfUSTbIudswgPDGN7iStH47IUl4shqvvQqiRK5M+QVpFu/p7XCZyWHDaF0JmH4qoJdBD5N8drMDoZ+uR9DoX0dfHWNn0RPATk5BZ3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=La+iJG52; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="La+iJG52"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D814DC2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 22:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778105253;
	bh=yrKq5VJw/wOGRUAktocKXqWoyFCbYWetmw0vTCFpiRo=;
	h=To:Subject:From:Date:From;
	b=La+iJG52dWdEzZSRhWiW+PEIKtdTZv+Jq6VJRrbGd+y7gB2ZA0WojfIESw26Abmm0
	 goGrSJy5V6oL5uLfKIPV0gM8k5SwhAhnQlrir36wBen638J80d5viA102nYM1wLVXQ
	 n+D3N2T0k2WF3RJrcI1cPVe7DErsHqeRYNiCd4DdvFUgRgM3ry1NF6gNKKd8+tigkz
	 CFXrNCX4cb2sKNQxGdngoAkLfLj0iNQHb40iIBYoYi3+NTipF0e+RW4/nFq7rU1Koz
	 dS2NXNP4cwe5yI0mIQiHtp4I1VYxrxPIwIQBKElzhUozDdA09ML3MRjHeSjAtFK36+
	 JXnaGBKWvmkBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8FFDCD3439
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 22:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177810525376.898.9795309751151268860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b7f5cebdd8b7e2cb25eb75e77fdc9a130f73f412b54b63d3f4bd86b26eca420
Date: Wed, 06 May 2026 22:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778105253
