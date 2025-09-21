Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41EF98F54
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758466194; cv=none; b=IlcaJ1Gi0CBpECLojDRM7qrpnR+UQJdt51eAIAGW1qI5ERXZwCHCehwpLaHzj/2uIirLXNFqtTJhZQGi5sDF6oWR1F0osnLYAZ5hVJygbheEzTlv/gWwqtyhjkYODAp9R6ODFV5RWq3RS7lsChcYxssNR16YS/XqQNnreUTD3Ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758466194; c=relaxed/simple;
	bh=d69nT6poEErmJxRLSWNyJfyg903g5fUQNP9cST0DSRM=;
	h=To:Subject:From:Message-Id:Date; b=j4X4HzKoU2TYgcLqOb0NGFWBSG0Mn/hkdpxhj6h5w5SlInRUk3xWOTabdpptuUL/aEBPXIQgZ/tV+Hl/7FXaefMr5gi8fXh7NYFdKRNiERMCAGokawau/av4ICpKj7BLLyP4ZTdj6Mr7hdZN8i02P/Uw1lfj4as3jr0iUgZETng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tazixHPy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tazixHPy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CD5C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758466193;
	bh=d69nT6poEErmJxRLSWNyJfyg903g5fUQNP9cST0DSRM=;
	h=To:Subject:From:Date:From;
	b=tazixHPya4RY/iGZJQ36w4uIhSV4Ldd9fOi09q/mpw+NalCRESBq4+KgWQVP1DzkX
	 /1gM2NigOpLsh+eIWlxzCtBh74JDrL09PzdKLCsIYEnNOyn9SHL1bvjScocL1YW5lU
	 wfiAyXU9sHbg933yRwte1jnkC0G9kT1wDhcNi/AxyunUqy2aP0Dio5AjB74UfVdF50
	 iz9ldSiY6IyCU/P0Kbano9DkGiMuRuRI44lZhXmMwwFONGDpYgnELy2y4xC2H3KkUW
	 kmRhr2oT9mO14lNcuBSimJebNwCu6CQR5iLCSaKySHvn2RzhH0GiEyho5rhpAyZ2X6
	 KD24kW1K7GsnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95035CAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175846619357.27274.13866909402134021297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6f3c40f729dd1cf60c0e548271bc4e0e9fd1fe84a879ee56501877a86e31765
Date: Sun, 21 Sep 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758466193
