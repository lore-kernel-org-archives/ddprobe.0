Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571D44349A0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791787834; cv=none; b=MGKDyvuukqlU9pu3tTsJJpJ3+MLM0iWW8XHK4B81ueAYEiOtKjcGGpuP3qjfT6iriakhthOVzssDyzw2Zt/I3W1KtDjicLpLMBgvQ1vNZlBOhAO7XIqTBbkMYzfaGg+HOEEKnJrAuyqcDt61raOE8DeW578SP27WzoTbktM7oaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791787834; c=relaxed/simple;
	bh=VFCTX2AISh0OKwoArOnMxIN7t7I/fJ4zFtBuLoBILwA=;
	h=To:Subject:From:Message-Id:Date; b=MLWsT1F4syE8oBKIs/bqbLAZhvfhLZQAiLpoWi5raO4Bo2D7/6LGh9NwatMsgbMJ4uLinazNcMC/fJZUPZRnURwcJ38IEfGs2Cg9yGpTo9ki1CjIoGZpkUK7avPWfjg6ZeA2ov+Ary6jPrn+Euoe8cNYKfRGTKfHnBjuHNGCs9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L9jaZRKH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L9jaZRKH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C3BC4DE06
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791787833;
	bh=VFCTX2AISh0OKwoArOnMxIN7t7I/fJ4zFtBuLoBILwA=;
	h=To:Subject:From:Date:From;
	b=L9jaZRKHIVCm1blzM1kn73VVMAaKCd2SqbEKjBTQni66KLUoLA/JBPaE7spZtDxMw
	 5qO+tgHFbniOcYcSseVxo3CmzKqrZ6JE7ex0o1vcQzPEn0534upG7Z8yzxdm9pzxFO
	 iGeYUG4CFsGvkFHUw3RySjNXIKkJSRV5yBBJqrjY+kCnSI32WoYDMM5WYneAnzXoi3
	 WKhtvWvHME2qS6XynZaGyJE/XgPIPLxSN31GnNRRd4Js1CHuah+mH+2szpRGO5mjJZ
	 0uybka+4zBkOt7sdroG3DdGAuev/DGC0wdeXlc7EDUe1dCPzJkLG/iZqGhJcV7b4sN
	 Kj/PpGM1yh+6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0F2CA9ED5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179178783369.24772.10981303138891432368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c79d201db7ed1c402668bb1b7d1128c2fe200b75f020d07c4c73d6a21608b7a
Date: Mon, 12 Oct 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791787833
