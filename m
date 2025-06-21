Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0B58BE8
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750513194; cv=none; b=V17f+25bclWukvRAJLR//npBcOrp6+v/E0sC4nUo3mYAQsilEB36/n+TYS6D7MMp7/yRrTtV2Ej7t3e/lr6qXhHV49uoyust8vUbrkgKWaXWpnykAIex1H6pK6JUNhaJEcGx8gt/qtb06dE6PZ6svLeh0o90tAgIsIe8cy0wHAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750513194; c=relaxed/simple;
	bh=pnxQ9rWt5mqnncc3ybiMWdfgUKftijvfbT2ertpYdp4=;
	h=To:Subject:From:Message-Id:Date; b=FHA/8BzYppqx4PaIC7ZoTvU963uss2ZCd3nPE9ILN+3MM6V7V0C55QYhgHPFvgtb8dPhhBWQsGtB5ysrLrdVeiwLnM2tkkmUHvxkoKPGg4hqZrhZDS4H6XgkCrqBgdL2/q8Fl0/poEoONwJI108cVbyw6AxNK1u1MSaNcbBPzFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HtQFK6Ul; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HtQFK6Ul"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DAFC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750513193;
	bh=pnxQ9rWt5mqnncc3ybiMWdfgUKftijvfbT2ertpYdp4=;
	h=To:Subject:From:Date:From;
	b=HtQFK6UlBTdQdQVwx1EKTEYlaLihR0FdPvDmhZub4nmM/QM9p6eEgWTg1AWbOMxvT
	 j2Q/NGwaYDtUS9OnShPZur9ls7I8Z88tEABYNbnkIiSCXgJgJ3ApkQCOKK/u7ljqtY
	 x96d/ZGLRkXYUz3w7ns4Lf1pgjGfeO0CtXFMwl5oz/dd8bqOevMImmNc6OFevPd0Xt
	 J/BhAnUZVPvw0fWulg17nXCkxvQhMkdoNQyMCjkQK70hQpN4iowMr1qHP8q0awwaPY
	 yiwp/Kbbv62gOqYeimqViscBaWLzvi4NArgoj4NKiMF0TrukOhYSrCATZhfvhMunId
	 n1x14vMsATV4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B4FC71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175051319357.30719.15846441329995041276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdc9ff69e9b558b2d472f1b5440fd7adebe5a81cd4d4979437e3e333d23a0b03
Date: Sat, 21 Jun 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750513193
