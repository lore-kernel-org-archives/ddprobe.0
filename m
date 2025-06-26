Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB1F1E9B35
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750929594; cv=none; b=gfWOQPn7ucYayL7Q+VeBuYiZD7yyQD+CpT4snU2ukEDhpkw2LDK6ADw3bPDPEaIDaY6MaxnTAG71JrevyruwHWXJ4aRxMFyuV3lj+2/dplA6xQrp03RZmLLjQ/iUjlaVBq9TODIrTkt8dyaiKeRwQO+ZN5GyKSpUKPlRrB0Xh+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750929594; c=relaxed/simple;
	bh=v1jImf3+By4LH29CQeEpHC922Wb4Eduv/1LnrDIWsEM=;
	h=To:Subject:From:Message-Id:Date; b=pW9EYq8gYNYi2nM9hl+tqH1X/xLvSS8RSBYCKprNXU8vIRDJyibOZcQmEAxTcft/xZ5QyfWQh0J20nY9yhl2/oApxrSQKBfpMe9DXiJth4auXPUVCipLM1Nxg9z3rILwlOJ80XbZ9e+T979kf8YJFBlcVhidM0UCemB5Tg8FtSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dSAg33xq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dSAg33xq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8289C4CEEE
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750929593;
	bh=v1jImf3+By4LH29CQeEpHC922Wb4Eduv/1LnrDIWsEM=;
	h=To:Subject:From:Date:From;
	b=dSAg33xqCsCQLZjbCZ7siet5XsAvlH3b5y3pNqBxZYz5HNONoirMrqu0v1Vb3h12a
	 eGUDWFmFX5UFK+19WHHhh3AWU+QD8hGBavrLqQ9PiwvPCfvpasQTP0bq65aA8iH80e
	 Y+JAinH1N167EzuVNM0mfoxUASOG7cHUiHD1KgZR/uhWzY0ojl42XCVL1hw6Smhiz9
	 WUzCVAGwnVvqlQHnRT4fKSkhHTJBBg65s7B5/KnpftWgRRvqvIuv9TmcgQVn8RhMXl
	 M6PRD5pmOahDoat9pZTxpsLHIRpuLgkrEmaGI/oSppkDK+kPRDGzWSld6INBzb+9ua
	 DRfd0VWqJlxmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DD8C7EE33
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175092959359.18329.11965627155773536539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4026523ec744d36c2a3769c2c673313a3775db22b03d665f7000540726a86cf
Date: Thu, 26 Jun 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750929593
