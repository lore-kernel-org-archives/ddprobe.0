Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71E792233B
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 08:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718438903; cv=none; b=Hlt0Ke0M07PnYR80SHFd2Ktrvk98MFZd0dgDsBFNPcFoU30lEokpzPFiacXTyQdA/QoRqj6dznmUgsjLga+wcS07OjPv7E7sfNXtkrlZ/4D6KqlcEwBAkL2Iz2UvxD0yGD88eQ9K6pqsbYfrmPiIbR9/NNGrLnmQ5S66cyGVmCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718438903; c=relaxed/simple;
	bh=Hq/6TE3nVxZKfan8+jQACf+uVG2VfMOrmE1ffShNTW8=;
	h=To:Subject:From:Message-Id:Date; b=tSqgrLKytDhLVGy2hI6tZdUZcsya4k0eclMDdenql8LjHXY4yS6p6YHGfJBYN7Dy1W6yW5g5EFWuyFMLxc4dokAtZYdf4Ovb13prxC6B6/cGae6rT78UPN19/6X+/Q4GlG1b6u0Xpd6k8QjkjiPacOjjuhCR/SkKkqLQsRMcnp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ify3Ptmt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ify3Ptmt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D89DBC116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 08:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718438902;
	bh=Hq/6TE3nVxZKfan8+jQACf+uVG2VfMOrmE1ffShNTW8=;
	h=To:Subject:From:Date:From;
	b=Ify3PtmtPXPSt8OOTridFuHxChkVuiNi4QB7VtMwFcvlFoG7GqmamQC5pNXaezW9W
	 1bfXwI8NvOA8wOZW689tT90ByPDQe0HY2Uw92ORKGEhGIwgyCQ45q64Fai+OtQKL9P
	 iRDen47EjP4GEOa//J4METpgVSVFrDp+e0s+TumbqPfbAnH+hOrC5fqXWYRuhT7Aj4
	 GhF62YevoTlY3hYh7TbenrlLr5zyl3pZIWkSMWvglbA9hR0eFJSyNfiXRdGXX6PbAe
	 PMqCIpemqGtzsdO2Y/zue0C58ItCVMwhNmXvcR5mXlHmdPfphzE2eVs2vUAyhP23rL
	 4xOY+AFm2NrTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C26AAC27C53
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 08:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171843890278.17938.3994968107985564912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4833b37d2d3175e289bf8a2eaeded0792ecb2b70895acc9fb7a8c80ca0b2939d
Date: Sat, 15 Jun 2024 08:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718438902
