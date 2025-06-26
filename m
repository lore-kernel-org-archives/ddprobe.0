Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAA1239E85
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750967396; cv=none; b=TJ8FniBwrsXalPgmS4zYtcy65VP7jaCdwvL5Wtn2zhXPSQYvXRR64sph8eDs9NPquRWv/xq7SkBCER6by9/5Bv4YzyFejekCH6ZdAyoRFD3HBYjxBhp3oJU2ztdayBh7Sn30aWu45qx6Bo56FBOp6o0bAcQwHf9LSDITDpwadgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750967396; c=relaxed/simple;
	bh=sVjCFlEO3o7reypvXt+qFxqAvLjA8q76zN/aarvwRL8=;
	h=To:Subject:From:Message-Id:Date; b=sdUSx6ZhYAF95rYvyLylbnAZIEXYtWfUwss2M46o6v/yhlrYzcT6NnJefTJ/ptQsrufN6PC1AyhpxrqoV92UXSWWNRJW5ErALdIXpzlxnE5Yse1BwV9EwQ97yJwdy7tFIlcYD8imFFAIyRhhmE2ydNyx1uaGtC09VQzMy4ihzbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gl5RJS3k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gl5RJS3k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A435DC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750967393;
	bh=sVjCFlEO3o7reypvXt+qFxqAvLjA8q76zN/aarvwRL8=;
	h=To:Subject:From:Date:From;
	b=gl5RJS3kSt/fXOa829+V6piLvrvbYdsdJB5zXfWP/S9hZHGdthkOKgXyHoOqveqeS
	 Grp+mwZ3u/AlXz0m5zx1XxpwbOGCsum+bR34uGPUq8UStjRXhwLngi+JN6wnZe5mE5
	 GXKOJoglfdJJiCXqhrpuRsRHh6xZMrV+lRg4H0RLtUW7VCuy/nGJrRxL4+ZaL00Fal
	 WG75RwWqCpQlktxF8xrLu25eTen+dlh5fG9XBHs6NjPB7GNwHcyaGdmJeO5So3wdcr
	 USF9WIMRuxlsI0BNmlZp9caVB4KfG4hcMdLHsWQUwWNPkMWnWChjIuV4OuSkbZSTnv
	 Bv7Oi42loy4MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912B7C7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175096739358.10392.14248655468863902173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c346db96c55478cc50151b9b41f57d66fd2833403629ef15834fee7f50a40f94
Date: Thu, 26 Jun 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750967393
