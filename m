Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CFE1E51E0
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750344594; cv=none; b=OAtaSMSLYaoSBWxRaP5iX5D/Bdw99fjLuJ3PlImNYDx3qpeSmrxRXn99UH0EhkZszt6KZiZMw6panxycjtjA1JXS9ukgAh5x9relYwxz3lUOAGf9/XURadh2j0A7XgpdZ7uxnO20Pl5nuALxtYnnfBx612uXLum/UYslNtj4vwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750344594; c=relaxed/simple;
	bh=GFq+3BB4QhofzgWf7jaMSIFKt/FTpyWbPzp9V5m3ThE=;
	h=To:Subject:From:Message-Id:Date; b=mUnHZV7Su88cgXIHEJPSKJy0Kz3qWhdkASgnyEo0BHNO9zh64/79PKzUuztaFW0oMZuk2l7qu3xzl6FmxMSCfGIz923QWKseSbQcSawx206rmMmqBKGkPMCPwEvq1pZ0Rj3eD2I/idiwc0i7f8JOYf8/GNC4H+jz8IRVDFLaJ7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LEB1c3xI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LEB1c3xI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46BEC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750344593;
	bh=GFq+3BB4QhofzgWf7jaMSIFKt/FTpyWbPzp9V5m3ThE=;
	h=To:Subject:From:Date:From;
	b=LEB1c3xIsVcX/cooi42+QetjdIOdcsdP5gKwu7Z6Iyl/P6181iAKbfWBzeuPucJTf
	 Bntgzko3lkmFW+PS4T9rsEFn0dM8G0m1kw9bxXSyPd8D82E4zTbZdvgikoxcey+HCG
	 POJCQNgWXl2NjeTlrWVN480K4gb+i3vOlrpvS0PisohKrx0LBFaKRUlXOeuM8Y+YfQ
	 zmywa6IEU/mvZbIiEIEvtFz7+aAczr3fUY1jrS6dxCydVF8ypCWk2oKQIP9/9g61qm
	 ToaGHGpH6ex9iIarJ8HM4Pcr/A515KZugdv5GHweDHIrbTFnw+NEa/yL2FqaxSO3kP
	 BYWXtWxRcIiMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDE2C7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175034459358.24310.4329286159632229645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45c5489e323514dddaa958dfd6061fc19a074d2055a99584ad662cf81394f898
Date: Thu, 19 Jun 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750344593
