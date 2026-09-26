Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C02853AA510
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 12:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790427035; cv=none; b=bpW51F3qsNQwuhRE8TH4FL3D5Lcs1cUhNcedrnRC9ryRt/7w23ATPcluQR4i0OTvP654wspUY7eZ1eH0Oz9QPTCX06qRFeTnEp2wuew9UDJIbpK3T01L04xHmG1so3KPvsveWcr7xfoIarVUMWdApl6ZCVicEf2mLHQ6qAxukzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790427035; c=relaxed/simple;
	bh=Mu5QulSP+JPk/8kfT3SDCSJrCvcDgpX8Oi8Ekq/3X2k=;
	h=To:Subject:From:Message-Id:Date; b=BimUHFWNjhPvVqcrs3TRHYxn2Az0FLyQr/sF18BiIGobkXhMX9LvixAukS5eIID06Nk/gfQ/ae5u6wQWTWe/Wp7MVEMKNQnHTwo7VbZVuk8x91LBUBtje54+5vORzBB733hBo99C29Maf/ZIFpV+p8HtMLl4EOiwP4QO0djMEM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qEc3nVSJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qEc3nVSJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD6C8C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790427033;
	bh=Mu5QulSP+JPk/8kfT3SDCSJrCvcDgpX8Oi8Ekq/3X2k=;
	h=To:Subject:From:Date:From;
	b=qEc3nVSJ8labug9IgKkF/WjeL0NUhjePbrCQzjTL4d+YjUYGEIMrh8nuYUEqDk1bk
	 CY6MwkOoNnGoQHc0C/4CfBGpocxa1DLo/j8fwO53e4+azYh0CSkMCZTOVNfvutaf5K
	 0xu5uNo4jlquLq0x9SzzYKPzK2lLtWwL3oYgldmF+nw1u0NE3RI5SzIICdO+XdT2ED
	 lBjfr5BXCapinBPaXf1GIrfCwimxAolg25UHyTUrAiTbIBR2W9Zbuw/BB/gnl8Db7e
	 SrlByudvaDWQD0LxZbD1bDSJ/95GzZ/mxuEKdr5g8DnNstJMzF876y8+kzpiqjKvhA
	 jnL5SF0850gBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBCBC98328
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179042703369.19362.7865083214668036376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b23fb521ac00244e28d2a88ba27a0dc3603a56f8096a865d407305a5c0a049b1
Date: Sat, 26 Sep 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790427033
