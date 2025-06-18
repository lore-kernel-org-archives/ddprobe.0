Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C632EA738
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750255194; cv=none; b=fw8iQr2b0Rm7veZOMBfw8lXrqyOqafF5ZHtn8t9vCQWaMpkn9mR9OIZkYDzj7DTLTHz6WB/R+P/+icPDJoLmAvkF7lDZW5yHeyZyZQe1bwLN2wNFDWcr5O19hBg5Bp0V7u3bQeR+QWjdWXi9NdZblmKlkGIb6tzkqHPoRbsTvf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750255194; c=relaxed/simple;
	bh=VQ2lKQPaxfkFlnnxHe9x/CeNUZXaRSrZRAnQrZHCxtA=;
	h=To:Subject:From:Message-Id:Date; b=hCafUvsjrPYNXCwvfAiueP5OEBNmQIbHPH57ZH8UFBhxb4rHB/qL1cLrRumWkq7yyEGsgvkAk1FMgv28yUKCUjYVQq7cj6owFr2oVsShQINHFqOcpkq5Wt0ptBODtmw4RinXq+BQeIzmFRQZIveQJNiieJQqvHD4WnktyilrJ24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YEwi6DId; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YEwi6DId"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A217FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750255193;
	bh=VQ2lKQPaxfkFlnnxHe9x/CeNUZXaRSrZRAnQrZHCxtA=;
	h=To:Subject:From:Date:From;
	b=YEwi6DIdCGJTamwyR5JUY3JLTsBuGwBglDJEREGM0KyEJaYDwDJspQGCBfE2EolIR
	 g3XLGIymU620HxZb+O5n6MZnZR27FZka775Gjf7lpohcafA92WWliYELXjcjO/2oFj
	 JCrMIZfl92HjfSnXSDMUnXddHXFR4qQjoc7/OyuzvKn1fqZRdCCM7O6OvWpEBCOTHJ
	 MmV9dR+fBw7GvJ0x6Si76NKZRGB37U9o/Q52LHdbzFIqcdjV+Z5cT6gioYgp3XtLMD
	 dHy2aatTHe0OLly++ga+Y0BpkX5M8eW5Cdbrho8Bxxc2770Jgi4k4MGk/ye4euDxGI
	 i9wrU7m4ENr3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903F8C7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175025519358.19108.4849798570158647911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7abca30b1ccd162103521652b02b97818ab9c9a15648c34e4487cf83d8eed2f
Date: Wed, 18 Jun 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750255193
