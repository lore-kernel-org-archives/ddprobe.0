Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1A33D544
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749381594; cv=none; b=bB1rnXNElFzHoWkWK1K4sOVXIHVn7UesRKmfKT7+3WROMl0Ei2z2WiHpSXgRvSc4hBXdVEz8GTpFcHkR72dDhLW3VOBbyi4Ic8kNYBWKvSyLSPkQRx4B6vnTt07Jfguj1L+5TaPjQIncsERUftMkMUtbOtZGlvtv+tjhOGwq4Dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749381594; c=relaxed/simple;
	bh=98cnqINFvLpMIo7GtBzsucldoeyRnFJL/gSDzQSYlUM=;
	h=To:Subject:From:Message-Id:Date; b=VQ01KKhJJqcX5McZzPtxkSCiayiyey6aiOvLyFDMX+eaaNHzneOTi40X9SWdvHzmoxfxEBINa2vvjz0VgozkWaETdcW4R3VL1n504EBSR2T0UgqQJMWGdQzVbBR4MaEapTnUVAx//JdwzyMlkDnKNi1BM1R17YQlr8i++G3H/B0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qhoq91Sp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qhoq91Sp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE4CC4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749381593;
	bh=98cnqINFvLpMIo7GtBzsucldoeyRnFJL/gSDzQSYlUM=;
	h=To:Subject:From:Date:From;
	b=Qhoq91SpXmvHfbdYVXwtORnQd0trIDzrMROPquVNWoIKpI5zwkhTf/fyzPMhzj3E8
	 1NB7zHIgkLQ2Z8x6OezyDDdXwJfQiJh8/I6wg+ndNMjcKyRaGYozjcqEvCAO9Ww44U
	 oQ/mXx7OZUTW7N7vuMWzmjehSs8jvJi2lVYRj4eGilk/tnqYHqv6WqLYvq3vFh4VtZ
	 YDLBIgcY1+OkF4TlvuPhYUtgfGy3c1QsfmejET5syqo1E70PwB/ZIgOowOBnVLNCjq
	 aH1TlAsbDy0p6ITQOvNBdpIFR704UsuTei/sh6YbJOGPF3CT65yO9LTtfGawIgOqOW
	 IyFnrPXudu57g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901DAC5B552
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174938159358.18187.1985176290528497087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53d4b302f52bb1d4f6397968155c5d9cab27ff034ba63e96f8dd938a1d8b4647
Date: Sun, 08 Jun 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749381593
