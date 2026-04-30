Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23235472791
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 17:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777571854; cv=none; b=J0I9RI78aDGptrfC88dwbzchtBw6ovpeswfBl7ns3HM1wJlWMFlDVs3+M1tZzhv9nCQTYmR7+XPT9TMBiK9b1bXzWAI5owP+iWZIvgwC9rW53YSmsCK4amhTPAylxUAbKzB2qZdig1OYFR1tbwqNM9lm+YTvYeqcPphv9oN18gE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777571854; c=relaxed/simple;
	bh=JiLejyGMOToVWb3rITRCF8S4veSZDWI96YHnUKVTVrI=;
	h=To:Subject:From:Message-Id:Date; b=PCZiKsFIIu8JBcW4ilC4bZt0mgWH5HFMa60R535bL804fSNJU4x/mU6yek3sM87/B+vNqViOcTCPsnkKiuKtcRVbS8q0126NNijEMVxjyOZnp7uZxIK+avLRiseCp4oRQ6AS8AE/EA59q66LObA0WxOatGOPxfR/UZ43Y9V6AzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BDGruRKc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDGruRKc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7DC3C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 17:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777571853;
	bh=JiLejyGMOToVWb3rITRCF8S4veSZDWI96YHnUKVTVrI=;
	h=To:Subject:From:Date:From;
	b=BDGruRKcO1S5bnri7i99EMCYTXCqDHh1oDQNMEh0YrDMRo+7hd7x3xRV2zCZznLvg
	 8q4LoaObTDFBu2qQoa3Uy5sx8xt3Ch9ODvNpw4GaQSsr8i71XW36CcylZkQbRWGxLu
	 x4Tk7YutdtltcjBDDLDbaprVsSYvWhMJYq29K1UIBXNTa+Seofi7+XOxMMCIR89c3k
	 A12u076yLPOXCjeMt1iFhdd+ZhMSshZt8r9wzZekDI9442gQJkfjT0aXPx7Zi1w4Yp
	 /HZ4g1ViQw7t2cNpMD93YJNiXW977IUEfytbIIjAqAu/tsAZtCj8BE4EQQo5eo8em0
	 ZO4ZYSiPJpfig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A70CD13D3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 17:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177757185368.32546.113571294885607116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a53d82e0a26db4db51177ffefc6fcd51371e6f158a1b40a9202ae4e25bb3b5c5
Date: Thu, 30 Apr 2026 17:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777571853
