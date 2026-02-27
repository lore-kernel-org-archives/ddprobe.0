Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E3E329361
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772206494; cv=none; b=gETAGBYtkUffZ/x7dTxdUCTCvklcwY/lI0zYW9yjSPwmBqP3YsY4IZYP038hT1ZKtk1K9AAVeukpBUAU1foW2S5z3Ml96AwkzNig7zykeu4YmqvsRwaPKhQAyoii8PNkZKGJ+v6NOuLhc0uGYYChzA0o136D933WJB/ciONRAhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772206494; c=relaxed/simple;
	bh=c21xRCB6ACEwVfCPITuJeg3hStMn99symHIV/nLA8zE=;
	h=To:Subject:From:Message-Id:Date; b=MhRI+ZSge+mlAhx20uYrjxaObfpb4ILFJZWNqg9Gzewm0ZXXdL0K/IIEz0lsKMME1+qRFw/kZ92JOiyPV1g1y3cwnoMB1xLWTjZwGQKy1av59ACI8DMqtOjsCYClxsPlyYGXQ8Pog5nuPO0peZ4SsAgfGNoxUIvFifa1OoPjW70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfoMvej5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfoMvej5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D1DC19422
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772206493;
	bh=c21xRCB6ACEwVfCPITuJeg3hStMn99symHIV/nLA8zE=;
	h=To:Subject:From:Date:From;
	b=sfoMvej5jP98i9SSZDKVoGJc5thc1wWa7mCSMd87qAjMpGRDfAYCO9yONbAaflpCd
	 wILvGp7kmhZt+DDrsts2dY2VTlFoZuH/6uiEOryHcGq/feXjfU9V4a0RMg+/jF+rK0
	 vVxHvcF7EBgQqweMZbOWO/QoxUL9OHUAq/8xC8vfA8du/psmBRY82GF+eZwJqY2kvy
	 1fY2ouZSFy3mlRJOm2O3VsCaYh4j2Qw06fKWqJIwiWNl7rKY15rNOYeLGssetfFzg5
	 xrnhtaHix1q284tOy5KS/4D6Hn6WlMBFIrQSlLZoDfyNuwobeBG9QS5KO6JYGugxRV
	 vQcDmy6AYb/qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934CBFEFB56
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177220649359.17352.9036057936424557257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95d1f49f79f9ad9c3a54303216d24294dc6d86a41a0327c3d49e3c8e2b3bf779
Date: Fri, 27 Feb 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772206493
