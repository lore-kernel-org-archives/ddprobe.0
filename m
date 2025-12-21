Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276BB1E0DE8
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766332434; cv=none; b=NmEQimmhVYu5MMOtTbz9wopMLlzTn1V5O1P2LnKwMXGJXJYRqvwA7eVebXMvtJofczAd+zvKbigunuoODgOimNuCN9LxLGBhrKOeDuhOWB5MGQ522bcxDFlaRgvWzSccBZsYl+xMsr7/6LcnqhXpYozIeU1NZXpcJO/BHukCzzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766332434; c=relaxed/simple;
	bh=UQf5Oa4Ml7s0UsKf4Cl9M27gbRKCY/4s3PxG+E79Ras=;
	h=To:Subject:From:Message-Id:Date; b=fxc7GqLD3bHZyLKcjPK8ACIyTecUjqv9rxn+oDkTyo1EQOs4vMxOvshNEek7r9qp9SLn30eLCRWHrdIyPNOvA03dOnzEg8+DpEgdNYpQSQcLyzQ6afby+x2Rh+DHwpqCdU2cj9xzsuyfLZoVgA7ZZJHZ6BqFWfgkz515rQg8lF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZC74WLuc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZC74WLuc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A197DC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766332433;
	bh=UQf5Oa4Ml7s0UsKf4Cl9M27gbRKCY/4s3PxG+E79Ras=;
	h=To:Subject:From:Date:From;
	b=ZC74WLucRmPaJr3Bjy8gSI9Weu38ZsSs1+5izLTp08hkpPxg9oIYFxvLphZHVWTya
	 J7/+CpXOjDhKVHpuj5avge8fclDm+ZpnJLnLIkgDcwJ/1DdZhd3lL/zDH8xBde2NRK
	 TF+h2cNmkBKyZGbR3ZJI9B9fnhNSsIXcdzbpCKusoboGLAaC5tu5TWi8o6Y2/bkk/n
	 u0T+Qj/Yp/FogdcacdHza2qkwEJEZXbqlNE7v14DGWwKklQvlZSxMK3wLYgaXLPm/O
	 pwHor5DzkTv+beBo8XMnQdmNgUDJHcLMX6P2lcK95nI1ZFStCnwILqOA53X1xZq2TQ
	 zcMyCUDmasvNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD6BE66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176633243358.16825.17938798950839114354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d02984cf2002eb8f7c1d39acb074aa969c60e6a76a745fc311afba62b4650cca
Date: Sun, 21 Dec 2025 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766332433
