Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D40F4327C08
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778728834; cv=none; b=MlZ3eWwdTiFyYM32NRBAuyBO3oRYjQokgrj5BH9MlBY7vq8U2+SF/w33dXs3GzlCOcjDoIdttmyzWwfEVLlxUDVMvPe9oUIKvLvF2pQvUDvC3ZZcE2yoCv/fMko8KJcDuppY2YSctiCsTUsPIRynQZUqsK7Dc8DTmedXFReNamw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778728834; c=relaxed/simple;
	bh=ZkntMg8AXoEqOY0ytdMaK6+4LEDmVMU6fsdptpHjdsk=;
	h=To:Subject:From:Message-Id:Date; b=T1HZrNAyLkxtgVuVSaf2QYAvnCG3q9Vgt6g88g4KGBeXqRNH5r1huf62Nz4V6/+lgVl7NOo40wk2XiOPIVItG5Y/CiK70HE9qmFytv9C4CtFiNPMQhuYZd33/QNWLCRfCrj6zg0lARCC2M2GsOYNfyV6Qsmi5P24rPl8HZtsPy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RDbjDZvT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RDbjDZvT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBFAFC19425
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778728833;
	bh=ZkntMg8AXoEqOY0ytdMaK6+4LEDmVMU6fsdptpHjdsk=;
	h=To:Subject:From:Date:From;
	b=RDbjDZvTyCXAVkWiouBhzoSUwRF2CxZ6tQR8CUPB2HbW3doTeW8R11kogWGXoF5Rq
	 Vlrzo3K44ytyqXJ85y943IZXB+xC5X12NTZIOIfJxMhYfvteWowADBE8dRbcr1I9hX
	 uyYWe0vPNTY/9gPzhaMa5+nYrlwxmhK26o7hrNt8p48TAsspdSbWIZa544y67uXqnG
	 WatmzgmxpmabMPkM2An1WnPka1/VrvcKRzKuPGojrwR35Ac7b+rKXUPc/c6qeB5bG/
	 TK02ZAYDr5e8W1v305ovQl7IlpzsjyQhLL7aisKQWs2BnyH7+T+b4RRbMAB+HQ+NqF
	 9VWcgQAyL8V4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0FDCD4846
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177872883368.27207.13661357203440989590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7d799f5aa3a3b22cb5e5fd841f4161e43692b410c89b59323e95eba96956d3e
Date: Thu, 14 May 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778728833
