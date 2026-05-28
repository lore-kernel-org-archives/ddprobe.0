Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BC22E541F
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 02:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779935554; cv=none; b=buoYVf3yVIpW32pOUh3p6Izk8K1deTMzwLBJVTBn9M4XZpIXAhJgxCCHwemHPaO1g/jkuVhpr6KHpA51L2CFZq753zY9TNyhRmYvCTBo1UQteRZ/i7aGjcgReozJDygvXJ92ndV9pVlwFexZzKIHLNvlUoA1uXuN8MWk7/HDm4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779935554; c=relaxed/simple;
	bh=DMrCTHF/mG+KKOUjBsy15YBEjKPLmXo+YgGWPlOG7h4=;
	h=To:Subject:From:Message-Id:Date; b=GmbvcFPAOJQCPytCyZS7msd0y9nwPwNs92znNGxlQme+RYJhCPin8g+cB/7L3QZKHdKA6tOfULwlpSzpLRqyaUrHCSvmBkKpG3XMG0f4EzLti+DkkrMx5MYFTHe2ctGvYIs6PtHe7Mz0ivHdYRLrQ15V9egvMe5WheXSonoIPus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C8x/5aKF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C8x/5aKF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAE2BC19425
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 02:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779935553;
	bh=DMrCTHF/mG+KKOUjBsy15YBEjKPLmXo+YgGWPlOG7h4=;
	h=To:Subject:From:Date:From;
	b=C8x/5aKFnun+0C9SN6gA3uq8VMU2Wdp4wW9V7TTjqhGDUUMl6SMTtMjvIMY9jMEiu
	 5MSEM3LMivW7hfAZYcVwmpK2SeGXi2N1YmLYP9JvTDSw1h5/XrSIZsUWUf/KDzv4gY
	 NYNwzcc6MHMSdT2djRIbubnAQb2+E+jSztwfG3O5EsXpaLP0nwOnNDFDcBBmVsRp92
	 YqTm5i6TmT+LPI+eDE9d4ZVrYyivzGj7dh5/TWuw3a36HCS10rALuy9mYVtx7tZ5H6
	 02aRWnOYHVIPuKKgjKXyBMU/WBXUHzIb81DJsd+ZIwpef4D5uTPcAssVjuGDUtEehF
	 bnQ7jUNRPfteA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB6BCD5BC9
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 02:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177993555370.24009.15182044080688120933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 594a4a0a97aa291cc591df456cc9be814e0e1f734ad6702720a1590f5d03e70f
Date: Thu, 28 May 2026 02:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779935553
