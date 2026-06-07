Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0481ECA6F
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 04:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780807474; cv=none; b=JnZr7Dg67kmgCSA2FYiMg7tWUzXusKLvdKI7WC4GFcmDufqj5Q1j9FyEkURxK68XtOsrDe40s4ezyaQUplehBTriD8tEPtyWeI46n/GyjGXLQRsNLGSRpc5N6iYyrF7l7VQdZUFW5zheYM9KZHfYT320kuuBoGF7cuPjmFP9PrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780807474; c=relaxed/simple;
	bh=neRdPvtohPSynh77sd8YozsqycZWvPIVMH1khdfTdV0=;
	h=To:Subject:From:Message-Id:Date; b=IOH7yLiSk68FDjbHEH/5vM39Cq/Cg2d0w0NTsVDrF9OvoUT68H/ca9xgZqTrNzNJxWvFEqtSJLH2lLpqPZ9D6m3dJsRjVl1p7g8btCPhr0TBbptDPaY03TrPzP1FCFvTvhzduLRiW8jeAVkyII8KEB+doAto2C04g/ajQUopXWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQMY6Mny; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQMY6Mny"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9180C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 04:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780807473;
	bh=neRdPvtohPSynh77sd8YozsqycZWvPIVMH1khdfTdV0=;
	h=To:Subject:From:Date:From;
	b=RQMY6MnyGefCNyZVDrOJ5PGwckTaixk/DH5ozwowwzbx59QWMbhMxLUYgapPqzM7p
	 HQtP8U46cEy6Jnkobct22Qux+05bunWNe0goBeE9KWINcQp5sPZZ8pHUBRDjOTVJ4G
	 qaMI5R+F0rcWbQB9wQY4AAqfEut7RQSVo8AK0rxvwN51AwMM9TfAEjdcS+ggfv9MN9
	 Xk2nMNGIf/gy/8fveDIQWIOUTuyWoscGE1Lp16ssxg37biUV8hdY8e4KoQX2dJN6bv
	 /5sULux75scR97TGZqAVak2EQ0SZkfXG2Ud/wn8zC8i+1qo2VMiMErqY6CxoJHrIs6
	 cAH+KSEuRH9kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB55CD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 04:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178080747370.26851.10956373415430132143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d29f9a789e3351afb623b5832daea85b9a4f2f033f75d14bc9fe47fad5a0248
Date: Sun, 07 Jun 2026 04:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780807473
