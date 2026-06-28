Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38EEC29BD91
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 12:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782650914; cv=none; b=Kq8+ZLog8iVd2Z4T/27ztvX4zcb0fgQEwyliIjGIfRvuHtYJQp6GwKaEw1fJvr9u8XeyatupDVCaTi2Ni37rFXRcUqgHxL12e6J35lZACTlMKCai7nK3YYeDhXhm+euBnoX1y6qStbY5Pk8R/WOCAaVqGZI03mdhGPjLcxpdqXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782650914; c=relaxed/simple;
	bh=/Ne5nsEtMWhabjPCfCvO8/3synfea6aSvHUGH72M6nI=;
	h=To:Subject:From:Message-Id:Date; b=vGRqNI5OaHcYOQLeem/f5Z7bxaGdog84V5WLCZ41c8ZwosqQJMH4Jwm5XC3/SjYxvPpb4AVx6ghMPs1tkBs+1jz39/0OTN0dBhDEOUEMcA/tqqrE0PWVturwm+Z73Eaa5O9mZW3nGpOWu64D4fZYhKmzm/ZmR2JjLo+lniv9k/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TWNhneJM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TWNhneJM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0360C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 12:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782650913;
	bh=/Ne5nsEtMWhabjPCfCvO8/3synfea6aSvHUGH72M6nI=;
	h=To:Subject:From:Date:From;
	b=TWNhneJM8/Lo5n3ap9iDjl6QzfjxBdzUdn+zqMOyfGpheH+tHBh7Yh0JRsB9ps/b8
	 cFeKgFhVwvOqbCBdHUhKjbM/xvTmrwG6ujTV7wafVv+bRnRsUGm4js9Szm3FLoPrGJ
	 J+YugabioV6FYDimpwzoVQnsF8q/sECRX27/yL6AVD7MPPyoYzclR5ffxl+zo9KzKX
	 TSj0dcWnroNpS8E/k8ArlLJqjO4rDkJAIFtGXxMaJ6BKwdTANONSgDFqOqBNK+YxtV
	 6JEd5/hdp5dLKH71LXpBlS/EvwrVynfQFdx4jUklmcc//hLoKoUEQygmy3MlOETRwV
	 2qEnWUSnhF/aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA2BC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 12:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178265091368.14395.3594050326250151387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cf1a92202f784f6f913a6423fa9bb69438c478086792e7e41de843f0fde1804
Date: Sun, 28 Jun 2026 12:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782650913
