Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6E617A599
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721896554; cv=none; b=CszBCadRlNjfoe9LJj6OaonrbeWPTe0+fe/uf2lGwX34+oDAbXpyvoaoZwt+6GRoPdLn6UjORFwIZjyOxNtNvuly4Np5aYaGDK0yz6BcXPmd1OZnRvWSIgpGf4K1QguXNmP6zS6sD87DRf04/7btYt/jVFJG6uMLLzwa5tol0Gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721896554; c=relaxed/simple;
	bh=OwpMP6WRzC+cbXuFKHv21PCE+UA8oo9w9Css4eaS3iE=;
	h=To:Subject:From:Message-Id:Date; b=XZIUOt+QB6Thqrw3rR8DbosPGUEgW0U23BCdEEKwZrePsiCDQewPSG/vc4QpfqCjqFuWFKylFeEebhhNgma3NkhaQpxeT0sdyjIchFVr1W7qN/G+iboAKWJggxTmqBZnUIe5DV9NlNGiQo4d/LFt3pgJLj36sJL4tFvsRiSs4fM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BaStAZLn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BaStAZLn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE40AC116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721896553;
	bh=OwpMP6WRzC+cbXuFKHv21PCE+UA8oo9w9Css4eaS3iE=;
	h=To:Subject:From:Date:From;
	b=BaStAZLnxVPPctsTjyj8JGo60SDlzZZVQPHhNxJURoGjbT0bmXsuyWrsfeTDQF/mJ
	 jruFfHW1SfsnuikdvX3yh1D4KpagMMEzDihjHEWz5Dula7tnEjX+tDbZxFraeqMvz8
	 6bIVJnRfT6j/IoCqYj9L3wJHPasfcRFa4L8SlAz7Idppl82CSTOWmX3sk9lNCuhfIV
	 NJrWAqoCJycWqokmOfa6rEzqKTbRuK7d0cYhCcFqgxz8QbV7hw+uadQ350qbzbE1b+
	 xU9MKgoDeqiIoU74MRJPhwjYshGjs8zuKaSfBlpo0yXKuGNA3Q7PNJNV1LzpQp5x/O
	 JJYdtLcKlisTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B0DC3DA5D
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172189655360.22255.8884166563327713630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e44626a46196053d8f90f41bdfebd33146f4a78cc5947e8a4c4b042ed6e25586
Date: Thu, 25 Jul 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721896553
