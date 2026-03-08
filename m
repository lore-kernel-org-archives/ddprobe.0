Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CCF202C29
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772947494; cv=none; b=K5jec6kmky9N3HQ7f5rL+mguT/jntOi4pxXQZzEAR6GLYOjyXY0SE88TN/uQKyesrUtbvu15FGmpR+yM/V+AvuBdv3S3nMgIOSbaqPmUi6yFUoMUmPupzhbxpecGtw2BdPH2jLb3xfoMHHBINW+PyaEWSJNA54Urtm7d5jNdxfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772947494; c=relaxed/simple;
	bh=6YBjSWHOx1h948dnZO56FXeo0ik+LsNQC12RS4USny8=;
	h=To:Subject:From:Message-Id:Date; b=Aetrelb1n6DINqJwbB7tT0vvuhH8zJyN+spkAiV6/ZK+6AnGPApkT2moF71J4G77g5+ALkuC6mo5YFEjFs3nftIv762VNDfySmQtlVGThMGmOF2rB4MSJKR349GahBrH/zWCNMN9NHDmN+IdqKXeynTvs/3ICAAQYUiGt9muZrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oiIrjDr4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oiIrjDr4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AD1C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772947493;
	bh=6YBjSWHOx1h948dnZO56FXeo0ik+LsNQC12RS4USny8=;
	h=To:Subject:From:Date:From;
	b=oiIrjDr432uP0jf5juKE5KAz6l20HYUt02yF2akb6a4otFoVsS0cpHwSQRwKEKgTN
	 u/GbH8CKU+b7FdXnpHqInoNs0Qx41kzGJE/qs+aQvX1WK9Lau3DAaQCLXSP0WTu/V8
	 Dpob1mSca/LJMxzk3gGT26FzZA3+a1bRIk+C3BbI0EOU4JOL1QJY/5PuyE8N8QQypu
	 0W0golVzmdL6DBsds0nX4G5/hJHNbj1u9udUGbANCtJsX6h5Gg2hpuTVWlm6zAo5Ze
	 e1mYGB9IDVwdzgVhSEkDoBsl2YWo23LzlkJEXuWogGwWFcieKr+tMFQfMcKor0OFSF
	 uQD+UbfS8MxWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929C3F55130
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177294749358.12819.4754361425399015458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da2419e8839cdf7f51582f4a9b7d07275a639980dbcfcbede79ff15fb147bada
Date: Sun, 08 Mar 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772947493
