Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A66B1BC9E2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750546194; cv=none; b=c+K84glyVR1A9wZEJE3M09iJ1EoQvbhfrvh733paT/1TLPWeOCU9hL5o184snBQLjYhMN6HXnWd4t1TOw1uVDN9fr45O41aXNek2cNiScupxrZxRlx5NJS7qXH8qEC1rDcicT0vdssYDYs/f7Jdjyck1S+oQAV8lPNcoqs1bd5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750546194; c=relaxed/simple;
	bh=uRHgUsrUz8iI6mQgoXozMhB+fSUBEYz+44UgAIQ/ci0=;
	h=To:Subject:From:Message-Id:Date; b=NcdoiorQEFKZ1VaiqI6iZhLiYUUfIlAM5pJS1CeA1nx555jNBSQMFb733k6Pzwl089+t1+nBpth6czABpaOliotOfiJzNFO0ghic6+gG5P7zuamedodiXZlWJrqZzHLm7sVELNNB/B21G2yrKOx+fzkV7xaFMIebGEvJesvgjP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqERhF7I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqERhF7I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43B9C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750546193;
	bh=uRHgUsrUz8iI6mQgoXozMhB+fSUBEYz+44UgAIQ/ci0=;
	h=To:Subject:From:Date:From;
	b=nqERhF7IA9PHg96fbEKWdbOE97YU6AbaaSffQnmG1wy5IX6vPXSCLT2UZQcv7im3m
	 Ff+aw27+a1EGLcWmHJSps9g7zA42SEdFMjt0Rm/EHnk5hQQn+TBkAGlr+7XZwsmT38
	 DWQoTANMyPwOZumGKKLejCLbEHU30NtINiRMG0fme20zTDtDS/XcDNGi11oRpBYOko
	 CfkatdtXOs3rii6uNnLC/AtnPelKRwub/OLXzb22WZhCCrRnPgd3AwFMZ0P7TzT9C1
	 85jUjn4be4NtqzGPEpSTDply7L5Cacs5hv30UKQw/Ig52PWOPs4t6TBLfLVWS/R+Yj
	 jcn/k2JOPBPcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921B6C7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175054619357.23578.10912111563888864517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a1dcd6838c0b0ce036fb4cc070bcd3aabeae89ec943c724f3de81a95bc2076e
Date: Sat, 21 Jun 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750546193
