Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C1C351C0C
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 10:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775298334; cv=none; b=QB1HGxQadgtDpJwD0Jjl5SEGwQ2E0LFIl/pBqKTsI2pSRrZ/3zp3zYy53rnxh1RypPXCr+jJvkYMeV79osbvIaB648YtFRFTdQlbXd05WYsgB4/1KEAhL6bz62iYlZg6d/SqJwwDc/jrFD+9nbqb2Q7vLmmgkNo20vEaRbE6sCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775298334; c=relaxed/simple;
	bh=6jUS9kgaaJuSvJ5Gig11ZftRnb2AQxJfr2W5cr33NpU=;
	h=To:Subject:From:Message-Id:Date; b=dnftO4EL1WFCic61ecoppcNeSdWRLmT8h58Hk1/p10pFuSK9aG7sg6qhJr6vZt1AfuVYRoYLWMss9MefxwpCPGveI5g7S6r1Hm2KQWC4Pz1FcDwON0Xhfs3o60rGPSvGaOu1eUkJI7ryn3FNgrWs2zXePGhz43Mgbqagnwo71F8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ahfd8JwK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ahfd8JwK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D154EC19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 10:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775298333;
	bh=6jUS9kgaaJuSvJ5Gig11ZftRnb2AQxJfr2W5cr33NpU=;
	h=To:Subject:From:Date:From;
	b=Ahfd8JwKH6ofAgOXjWW+WWBGssyhOBV8RRu3RMkpY2JA/i27CxBC82vry1rmUDjTJ
	 Ths0mQyBQp3THJy1QnziiYR2xQjpRb6rz2WXRhMDUKy3LYKYMLhf6COLUmXeRVe5sI
	 /BkEsllXmP+LJp1GspHIGMfyJKtXx0B4vaGxYIXV77hIElrgaTKw0esSU1O4LvPUP9
	 YURAKgaGkHmN2LUs0OAVL+CNKP3PvX5ZLhVCxC5rPk4QzWNTdhPiY4X8rf/E9qo5MN
	 2rnBTkZCoSPWrNN9xGYlYDIiKXVsw3tr06aDptccPxcK+rllZII071VlU1j1WhXoZi
	 F55Apn/zJn04Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD151E88D66
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 10:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177529833376.6026.5419688167692579411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1af39561d0f04e081bd0f9ba3cf3999f170c49615d1a93e61a7a4e91a7188ac2
Date: Sat, 04 Apr 2026 10:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775298333
