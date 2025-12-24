Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E73D29A300
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766601834; cv=none; b=oyoG5dYfZHOdTdcKQcnEAZFCmq1pFa+3+7rxB1V6t/J80XIjsNC0vApz4f73MWtQY7ttCGTB3Qn8KGojOvcNDTjU0+bAWSC1eVeoLI6DYthRTN/sw3Mq8hcyiNqqF1ccVc0QdIBLedgxurMUMQAaDtPXoAHx2q5UpDy+jL2pMg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766601834; c=relaxed/simple;
	bh=tuG2F7qplK90wgyGJll1pdZeGPc9+iaYZwcGopmyyug=;
	h=To:Subject:From:Message-Id:Date; b=D8crG0GKNpP9mAuafy33UqrW6vtCi5fJ8sP2rm4kK7pvJQvxnJR926UxsJNbExei62WKJUMGjqqdFYVKOYY0RRfTLlSwv1lxsmybhuCCZOkt+jUW7gng1yTuuIV0lRACzY3vgMr9mdEr1Ols8yMbUjnd7BtT1oyrzuigeXlin0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KNYAmHZr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KNYAmHZr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AAFC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766601833;
	bh=tuG2F7qplK90wgyGJll1pdZeGPc9+iaYZwcGopmyyug=;
	h=To:Subject:From:Date:From;
	b=KNYAmHZr0PBSyeeRSCpy7UacMtEk5y+pIUuS/PddkwKqmq772Y5+dwh+NL9AjyqA8
	 u+NrjIWr/kYAEUoY2TJl5ut0hQk4zgf5msGoJ53tRmA7dII+Gl1U+ATGxc7McNI2HL
	 kogKTY/yq4ZZhN661Sqk4+ZYbcRiJXyejiMzO75Y+Z/k928S67JXm+NybwFEQ7vRZm
	 8E2/XYCFZTWHiIxqNV+cp9+F3jmz1aQl2XGpx/qXrWpEt67NdypvUaKe0yV4b80KGL
	 cLxMg156JxV7yCrnyOtr5hIkJ4UoXj42q7fvr1hTqOF1g6jbOSIs3u8OWGZVJUYV3y
	 461Ymu9kLFTCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9643EE7544F
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176660183358.28377.14044903858433849720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 895a440f9ba3e3979753d92e605c7f32f508f3fcc74e8d98b208cb2e742b43b5
Date: Wed, 24 Dec 2025 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766601833
