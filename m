Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D9B35CBD3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762901394; cv=none; b=OKcR8oWfR1wB47w5GAol+YgKwKXgID0fC8yMN8R+sSNBB+68wJya19IfDshxJj1XcginQQOkZ0rH1Rg3+34zFQmlqDViOGBuintAJgj60kjrdnN2eqBozd5j7k2dyrwsqNEZ3YqfYsKWUBsbVMR4fjMs0/ZoYyv9XpsdXwOvIQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762901394; c=relaxed/simple;
	bh=nnpVTykgTIp4qRiDZitIG+yRNM7fcQfdJ3YfibEaoEM=;
	h=To:Subject:From:Message-Id:Date; b=ND0e5uKzP0KRYDiBDgO9rbYdH35A3bkkdENNKLFqn++tie2X8wAAszzBPlQtYFC9UIXAttUM4cTfJp/C47wz3aWNzg+eYkG+VXjliHGoP9f2mW3ZZF8NCMTypMbm4onoPgBcohTYEae6KJ+Fd4Jj4UxPOsJFTrEC+DQWA+pQKWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sgNDataF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sgNDataF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB50CC113D0
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762901393;
	bh=nnpVTykgTIp4qRiDZitIG+yRNM7fcQfdJ3YfibEaoEM=;
	h=To:Subject:From:Date:From;
	b=sgNDataFsTqT5abLCodWL1EK+3RT0JtPZkUWAidQZ2Ldwbf+5wsRL/pPfXz0XIcTI
	 Fd6phIzHLZCHxPF6Volah6Q75SvSADV3iv/rOGnkUK2pJdx941Kl+kXIsiRSnBxhRI
	 0WAuu72QVBBrU0D/x8tpHrmhRMkn9FC3lYRHwXQrbnqkVgJatAGeLj8kO/s+4iYLZy
	 NwU8ypGuXgc4aACcuRmhGUqzVWE0xI9CY68e3NNa4wRsPIkdPPVqzo0zjIc/PIPGr4
	 +U+CeooD7evEEBWa5T/FFhytt1dIjIdX+usjPFEAADJQ5vWvEam8QcPuby/aBAmwfV
	 PZL8YcjXCi5Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A518CCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176290139362.13538.5620827322226176714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81c8f97c6662b48f42de96c9c4bae7677c90a1816c13e2559bf43ec9a8424209
Date: Tue, 11 Nov 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762901393
