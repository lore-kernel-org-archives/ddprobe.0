Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B72635
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751854194; cv=none; b=dMr5XYSkZlNfEEuYvMH1nuMrNJtF+GdjCOdkWLYztcXUHtUFAjeFysfxXxOGTcpxxEmEhrNbAfX5zPNRxEiuVZ1nLXfx/RgvvCLyz+SGA+b6XJbDn1ZWJlfp2nCfWPI6WAWHnKFgRC8BwGHxHDWIcBLtH8aQkk7Uoa9i425sDrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751854194; c=relaxed/simple;
	bh=pXYV7HI7aIIth1tnjyCJ9I6opMpYtRfTRIaNb2DxVL4=;
	h=To:Subject:From:Message-Id:Date; b=Ukcz9e0s+a1GIZfuS6LC5p2yo6evIHZ21PYKaUnrT0LMEW+7VCNlBLqpGsvvrycVWHUJ0SYz5MaoBBLCeFnQ2k8amG/zM47ikAX/Q2cLYpsyEyydh0sWbOvacPJa+2em6Qn3wiYsiuBrQeVV5HcttKZjziQYcjUg/sKNyVwzOG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Px8TCGcw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Px8TCGcw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4600C4CEEF
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751854193;
	bh=pXYV7HI7aIIth1tnjyCJ9I6opMpYtRfTRIaNb2DxVL4=;
	h=To:Subject:From:Date:From;
	b=Px8TCGcwzqgNl0Br8gOf9eIp+ETmEuyEdJa64ahKP0cxUavjASPt9pvrrLbFW2vV9
	 oOatBcUOj4wglekoc1Zx4M59jSjXBEDjDqsspP6POBuVGxarnkFn1tnp2amKnUyaW8
	 EgFmzevScHXhd5H9sUX5wSDXsiizPf/lfH4ofevar/guAHosbpz6iBZj9CQTpkfONC
	 35vtwxSoCnLzd9edHzX3mqV8W9yCmK7g/2fwBgwK2X2ZyIZtF/R2Enb9JsrW5xM+1D
	 bRTXxmwjmAwOPz5IL9XykA398J4T4DAHEXH7UsiuxZagkJd07it5I6UFd75kzqI9/0
	 6n9UyWpaHrIaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916EBC83F03
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175185419357.27016.3040029847846414843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 285b0d0838aa3b86ccedfb36622bc2031def7e2f9eab154c09137049991ddeba
Date: Mon, 07 Jul 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751854193
