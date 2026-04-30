Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13148353ED9
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 10:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777544254; cv=none; b=H0CfJnS4guPOUjCY/FZK4dWwiuNy2saoco/flTD0WeEytunQhOQx2WE5RiQ8SyTB/EwaXz1Flxx8bZcobg1TqJEXE5FhKgUZfwupazm54X2bPx8bvYDANavRwWBhqch6dVEcKMaY1mlx7KJOGLFmzOffsJxge0pH3dDwDROTtXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777544254; c=relaxed/simple;
	bh=af2OO2PZthlAOBQKwnX1nOf/vkU0hqdHK8zU8/qg2SE=;
	h=To:Subject:From:Message-Id:Date; b=K5hCjbNO9tY6PPRmdgiDu00RyMKWTkKVivrNiH5b0B560zeEOA/x4sV65RUlPmbqWKlzL3Xt3DAAXGI/Be6sKQpjQl4QpQPZWGjBCiytaEKq8geOB6ifB+Swc9P9aTsrY429Xuabw/HLM8jqJz4R6hIbD/s925ndvDY08eqlc48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yb8uWANl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yb8uWANl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4B06C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 10:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777544253;
	bh=af2OO2PZthlAOBQKwnX1nOf/vkU0hqdHK8zU8/qg2SE=;
	h=To:Subject:From:Date:From;
	b=Yb8uWANliy+VUIoV2FUlbqSXPZra7Y1kzxEs8FvgeJvlFCMAyLpJp0kHnf/DGW5yJ
	 oX7FmO2EXsqX8h8k9zMONo51s+4pX2twzYEvmvIcSVzbbBiGt/r3ZuOwNVeLiTJDS8
	 UganU/ncLMvOXh6KoYsMYL7+yaPrNcnjYZEJnMtQuwnQIblBxPPn36FsoZ19/QwAwd
	 Ig7YUKjp44skfPI4iaI0CKEWY1/LHOOiwGu8IbaA++Lhoqbaksp20Znz4AaS+wK8m0
	 I3Fl6nLnppwCUMg2uQO4bxaSkkRmYvnORfY+YiM0sv46wM1q1yjFKak6WqW+LXbd/x
	 yIZgHirdxTzXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA84AFF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 10:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177754425368.13999.4843276077387127094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfc514a27d907ea6f4018945a59220c35f3ef7f2c8f3aaf1370160cadb635350
Date: Thu, 30 Apr 2026 10:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777544253
