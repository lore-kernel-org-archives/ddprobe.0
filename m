Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF9B1FC3
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756174194; cv=none; b=P9/oVex+5QJfm+ZeOJcg2xZrt6MG8n/kwC2a1IJmWjVMm4FK6YAZjYrNOY8ROIQ1SFYXEVF+fbN1hPbtclGKe+dNJGahWKBKMU+0CRrnqn8rl/l3eqmdn09CJtUNaRBGD3FxhsuiQo1EWdLtXq9FDBLYmN3AnExSOGtjnSgbri8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756174194; c=relaxed/simple;
	bh=T+ZD4wtxKToIEHkHP5DHDXO9PvYrVcpfDnZuYVw1r3U=;
	h=To:Subject:From:Message-Id:Date; b=X4e4K1MUp8sr5SXcKE4kGn5FBUFyGoJTgS+otB9WM6JZ5y7MuQtbe+XYfPLdqAFF/07RMvTa5kL31OixT2RcbjSTNZ/G85qR9zK64iYHTieIs1QrPi8QDMeikyFlc82TE9hAZJw53wBRTyZnQhjST3UKzu/+2AR42dmrSKSAGvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6oAvxz+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6oAvxz+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2593C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756174193;
	bh=T+ZD4wtxKToIEHkHP5DHDXO9PvYrVcpfDnZuYVw1r3U=;
	h=To:Subject:From:Date:From;
	b=B6oAvxz+mI/du4X6wX5ylXhvmOzEMcNFhpJhQ89TB7ypifnFSKhj6ObJaEaSMLDr3
	 cjPhBvoegv075b4l1rNGOBxGmF/2Eati5IVsNuBNG66gwsjNVVPKlRoI+S+ATxonrN
	 Z3FTyMBadD4fqg4WA0OknAwKIOhB0yflSdNFCgCMGkHIMLce3vU867vqp4WKqmzVb9
	 Nn3Q9ZNexjD7R0p7T9aqUdx4tRehwl5eI6llM6efOumXlYttkdkoyJS78edVt7WOps
	 GR09zt77FIZX9FyMdIz042/J35xUypX/Ur4BSNBp45yEWpCWm5E8C35HLZYZS8xZwv
	 FJG+Fd/qGC8MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F218CA0FE7
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175617419357.13999.13557500257638572960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93e184cb491a46abe0938092d42085e1b171c51ed0853f7ae60839ec8174ab4d
Date: Tue, 26 Aug 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756174193
