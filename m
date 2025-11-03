Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E55E35979
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762207794; cv=none; b=T2ketb1Ezx9MzflXSl143nURgIZ1OidlwXP3Vdz0ey9NdEz2dqjJtHYKdKXOEnwepOJhBk8fV1VvzrXNWlmH2TlzfOKZrIl72NI2xZ6/E3EYoq5SIIMWVkuBQ8uXt/uLsYIEr28m08cW5BxBgybSF1LJvAzTyvtCm5CvLuSZ7EY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762207794; c=relaxed/simple;
	bh=Ush0KJ65U12DjubZyA4emNhLgAZLcsV3xJ/xgpBA/tA=;
	h=To:Subject:From:Message-Id:Date; b=M/XYHmDJ8FQOMiiQQOXL8k49k4IuQuqfbw0RPQuoAU29qdBQ/qijLw8MxslPGY3d607fb4cKuEB62x/AIgjRi9wWIzb8GbM92psTlRuVNDpujI2dmT4c8nlkEv9WPW1dgbVeucPuCU7YLXQSON/v5UAk7JdwCsgtKwWXGwOHe58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cp0Jfy0U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cp0Jfy0U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC72C113D0
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762207793;
	bh=Ush0KJ65U12DjubZyA4emNhLgAZLcsV3xJ/xgpBA/tA=;
	h=To:Subject:From:Date:From;
	b=Cp0Jfy0U4lPyiK9UqQSlx6MtE+CC9uj5Ob65nbbmNHett/N7UIogHtnsScH0Fysj4
	 kf8g7t90iYCRGDsVl/PBSKyadPOdW2zQds3CfozxIuE1tqXS1ihcr69hrMOlSatGE7
	 Uccmp/2Dkzn2MswwoQlcpT/mc8l1rTlqoBo4hLHGRK2EVYddO0iwJsHOniaNFwZbOR
	 /pOa4o59/D/GSBQ/az9QvoSaE/MkMQkTFggTGhN3TaacpcKLrqRjJtUVkqkQP5X48m
	 XYg2HB+vOGouLS1fHj+WwtGX3s33XeFa0wj+Zh9l1JW16ic8EK4gmma1MktAmjuRRa
	 t0mEo3m6IWMjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B9BCCFA03
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176220779358.15644.4129218883017724916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 856aad367f556c829d022b8a67aea9e8bfa501fca5375cf1bae8bd4493f65e4c
Date: Mon, 03 Nov 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762207793
