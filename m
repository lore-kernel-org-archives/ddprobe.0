Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C6F3B1AC
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722189954; cv=none; b=lAZaWUL0lAsRa+YROhVDNP3bNBaJxdo/f0tfTDJbP7B34FynsUtbpLTpdjCvlY3NMXeQO1EkJ8BqGl4rQYqG8XPAMANjWJsedjXIQL9IkxfRFsTlJTSITHJgjfVAGdsVXKPNDinTyZj0LoQqnFMpKKWU4NpaByy8Sz+lvAP+Nh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722189954; c=relaxed/simple;
	bh=z52w9NGg6/D2Giud5whDhG8+NmKK/9+7mmpWY/r4XRs=;
	h=To:Subject:From:Message-Id:Date; b=rZS/I8Ewz2lplh7524XxosMchMCiGZF2b1BRmfo7wHp+RMZZ4F8EvCN5Jmh+v/2Him3pm/JndM2+w6SBhQwJvDgT5zv/1U/sLRVhGJKL5Z754vz2vPCNs93/iVfR1ddshc14QHySBxVEL9NqsgWpHujGiTtIWso3UDnH88gya/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SB+3XB7l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SB+3XB7l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40A1C116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722189953;
	bh=z52w9NGg6/D2Giud5whDhG8+NmKK/9+7mmpWY/r4XRs=;
	h=To:Subject:From:Date:From;
	b=SB+3XB7lznTMge61Z9lvTClweGXRFUvsD0DLqqRl7Rulq5N2UcpSC46chvOoyOruE
	 2x1IVG6w2h/nUrJhrneHh69jGkNU+KpDF7y/pu64YeVzWtZTAJe6Hor3wEVdnmjGES
	 0XkSyHwGmdOezx/tcAv7nt73rY3YFyW32AlZ65lnPkdvfNR4eKOFEiUGvcdAvgPRFJ
	 8uHTPZKEbWBjdhmlu7yQ6S/5EjRYyw5EaSUC9feBBA5qpmC9Jh5fS14pHsCMHsoxlH
	 1rE4XRnKr6wmSSwgWhneKPAcFfOQNFegASyIfSNbGAN2VCiHVM2cO97AGmum5N6gqI
	 ahDhFhbp8QX0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A36C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172218995358.32656.9623919117906262573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b786b02e5cdcdf827f5563bbc44b3e49e3dbcb8da59ab65e126f307b7c0a1a46
Date: Sun, 28 Jul 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722189953
