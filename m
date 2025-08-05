Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310A0524F
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754437795; cv=none; b=elqWzvLRW19WVK/KCHGnfegptIuelpsjsMD0NFDD2H8mu5GVQKlwwbA7aKiNIs7SKQpfWiYDqB5UGQ8XOriDeXew9L+rtKhq8ujANRtJn8i39U8P2jfWqMnKVgrGLPcbHCLsawBQw/x8kmw3c3BTdDTV21Pc+clpZOeJm1LaOGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754437795; c=relaxed/simple;
	bh=3T1EsNmpAvms58XN4qei9r2iqgZTG2sMfPWVIg4ptBo=;
	h=To:Subject:From:Message-Id:Date; b=BxRw7jUWSWiuPPfoW5Xn6KoXAFSGKngYmGd2jQZAIzyC2DmR5QuLaXYTAa4K4TH7yJe8O+0fViiHjCx1SKJvlC+M6famfL/9MvTtSoSAxSpWQ+5hqkEtwT4m3XH38O7NEmwNSzsdwDmmXfnuyfcly/qzbMq+TrS0YgUaSiZ1w+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ajuO5PnZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ajuO5PnZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D1FC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754437793;
	bh=3T1EsNmpAvms58XN4qei9r2iqgZTG2sMfPWVIg4ptBo=;
	h=To:Subject:From:Date:From;
	b=ajuO5PnZOuxeNu/zcMr42EdZ1zEoiFMFE1xnRfpcTgFB941b6ZZiSCIadLgFFCjg1
	 vHutlY+eR471W8ds9Naipkk5Y6ckcQEgmCjn7MWAvv5LaAjA7tCcYIV4NklcUIzlTJ
	 7xBKEBrVVR8vJ3hufKUCnlWzUO1vD3kO4JHy1HwiC9Dpd9E0YNBAYWEZPGLn1J1jTB
	 INaIjVWx89yJWbMOGoCCcD086V6/G6E6m7zAIbAhZedOd+gurEuXElDKoRUsUGVS2Q
	 zsW82t0c0bjmrXH47WoGbV8ICnv6GKQ4EdxgPPJ8+k0laz9YyZAY/+CqV7o7zi7CVN
	 XVXYjjfghCWxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94237C87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175443779357.10383.13113519213904365251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a6c7a75a547650b10e549cc9d8c0ce96a74a349e1df8a2a73b9fdea9778b307
Date: Tue, 05 Aug 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754437793
