Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 649E5637
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 18:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714329143; cv=none; b=QQzQhZ5f5fHkt3m/GTgDBOxpxxkCCCA/eTONrKyEXYeqI0HjJxE+8257wa7SpOHbxZqP0KVFuRvkXgtUvUVLgyiI63jWHSITKS7Yh1RSfyV/ipwKVT78XZtsZIITs1tHITXPpZLuZkTSb/SzWUXswL1LalWhMKbg24bnYx/wAMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714329143; c=relaxed/simple;
	bh=re3++FgUJ3gdgxwH6HfRqAU3vHimnQVWXgt4SGpXv3Y=;
	h=To:Subject:From:Message-Id:Date; b=mSQ9+eVT5QScgb5YjC3HYy7rjrhaFOab8qUgp05uOESJiJs3N5kOoEGOsRpsS2mrvezX2VkINeEJVyc1/EXVavOLzwhtOKkFPzXJcCwxCPzSZbVKJc2QJ6/+MkY3iCcmrNXX0Ej49TP+CCOn9Sg4EddQqFYl6pzo+EVbbdj3Xcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VKICcrc2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VKICcrc2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D89F4C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 18:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714329142;
	bh=re3++FgUJ3gdgxwH6HfRqAU3vHimnQVWXgt4SGpXv3Y=;
	h=To:Subject:From:Date:From;
	b=VKICcrc20DBrHCTNFyytYBuwdZhaVlEnq+OArkCdobylgD2OUTLFmSilvSzsS5u+R
	 CzrUMcPmE3ODOGz2SvtvXGGoaJEknKI4PMMW5MLFeE2DKPM5FUsP9q/xb2Lae1dVAr
	 zzdh8eypudp3LoulDYxT7Eg9ddFNmF4U4kkmylTlSMu0jeXdtTK4DEspFR2YoFYATJ
	 FIvM5pTVfIlBL81XJO74OmXHsP5zpy7+UxHONexeNdd0Sb8E+UnAO/gZjB8NHvFTYA
	 ShIZ3NZMeEvU+vf8UOyV1aPAVRRC03w2iUSD6lw643yAqmSpm8mWw38nv49MC2fG0l
	 tXrYuCQrScvCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C02FEC10F1A
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 18:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171432914276.8005.1119707827890835525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9a01016f97f731d56297272ef216ad2029811b92f674a91a29e92e5577e4152
Date: Sun, 28 Apr 2024 18:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714329142
