Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F9F45560F
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788517834; cv=none; b=JUsVnDEfVdumnNhIZB3M8H8nSSNJl83XHPV/neiMutzNrops6dc0OUqp6krFAWuSM/P3hwfuZEVdSvVFQT87t73YiLMsPrAMQZJFwDYtt2yHlD1OZ00ULGu8fyAHc4P8Wlpd3czY/Npfu9v+5Zr+Bmqa/432J/fWpCh7KId+57Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788517834; c=relaxed/simple;
	bh=Glkva+BQ8NazEjFoYQhPC7Rksoy91xuBmADcv6T8VJE=;
	h=To:Subject:From:Message-Id:Date; b=JWmnc31Mc2m5yR21yetEaVRHK4fJxHS8CMHysYeWZUrBJLLYTvF3OcvYG5raBd26ITqkK8nQVTpKEDkP7on1XkeCCsgZnyA+JMcJb6LAN5o/sbW428yrHzF38PalRiOuLnwf7j8xtMq/K0Dj6u3GYkOEMNZYSnF5g+iSNyLG5N8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XFD5mBBz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XFD5mBBz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEDFEC2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788517833;
	bh=Glkva+BQ8NazEjFoYQhPC7Rksoy91xuBmADcv6T8VJE=;
	h=To:Subject:From:Date:From;
	b=XFD5mBBz+DZnrl9SBnNI2dhMQttYLvIjqMoSnDL8pM5j9r6/XpVhz8H+55jji+sGH
	 5ECFuThxyHzR2LQKZRNUMIjlDWLvwu4ap6XW4zSgSvC7XWaB8zNBU/WGi8RYNxsym4
	 Nun4kIfSau+0wiiZ+lRF0OgJy34B+6H4rwtI7Vl7akPJcemEmoxJN95hE1L0jKhWHQ
	 YAg9Rb4Le4UXfx+5rAavpFuHgJW+o7mJG2o29htBcBvRe09kcTUISxIYLBZxy/mxkX
	 37u25m1DCmGIMN/YFiEZ5pYNG45xeFmKsjoK6fegq0zz6GIhWX2mYPQhznvnA/5j87
	 c1IiM1s/+cqag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B79DAC61DD6
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178851783373.11037.17284745257960329037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 846d4bb607b4f635d1cc6cb2fdd9f6ed4fd8384dad0acfb9c101b2c94de82f63
Date: Fri, 04 Sep 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788517833
