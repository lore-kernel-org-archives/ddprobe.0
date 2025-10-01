Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B42954918
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759362594; cv=none; b=EouCwrzKt1tQHTRXj1BvnSBY3HQWNvENR/E1Q5pUMua+MyhMSazeqSe+ptU2r8wqOM3WPFJGrMw7XK0ATJjRU6/BR2vdS1WiPjpqJEI0Qg1gD9hbuoDOh2ZuuuUKB+3L+/IOhOOPJLkmMj6HN2+jSVpW1YCaTqCf4gjUDKl8BRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759362594; c=relaxed/simple;
	bh=MC7ph6Xcb4MdPu33jzY4B13dzFCT53LaksWL+UdKaFg=;
	h=To:Subject:From:Message-Id:Date; b=MlESgLuyaS2nD+l/oLprqnB1BpR3eFSvg3VCQXVGHrdibAnFxry1aaSZV0XzqXGvB/cVeyUL7FZmPaeyJ3IiECwKFnPlBa5Bi4E6iayLqHuAeLenFhTvR6PkPQhkDd6Fx2MpR8xgp2UugISvRZcjHzPW8g62tWf85xI4d28y2Mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdmuWYAE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdmuWYAE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C7FC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759362593;
	bh=MC7ph6Xcb4MdPu33jzY4B13dzFCT53LaksWL+UdKaFg=;
	h=To:Subject:From:Date:From;
	b=tdmuWYAEVrJMkiEaochjFFt9o8n0nOKdosuf8vgJgtvvVv9ppUhqV0VP6/yyS+k/u
	 Dh103AxX9Y4dm+InsV4mIMN+K3JgLhtFFsic8AMa+hzb9og6Q5fASvTxlJc4dM/WSL
	 K4DoTAZ3UL13iBu8usOTITuYNNgi+CYbXtqUSyNeRfvrWtJHQciw8UU4Fjn9LEcjg/
	 +fnxTe55X6y41w5SfvPsvGxMOSmLAMfDDdkX9JzPvAtWg/JR7OYTvKAI3O4tnbyZDV
	 OUX6XRTtbyKcd9CRzGkL+GzlnmLjeMpjmIjiOl3PxrwfAESQPL9kEcJ7rWuS1yNyn5
	 yZe7WZjqPCeLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB8FCCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175936259358.13470.15199775073866031301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b467382046dc32c93e4320ca1c70b33bba168c7909b4c72a8af1282afbc600a1
Date: Wed, 01 Oct 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759362593
