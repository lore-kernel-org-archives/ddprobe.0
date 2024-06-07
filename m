Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0EE1411F1
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 21:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717796843; cv=none; b=UzQXVz6vRo/9JiNkxptGPuvDFrLpoNoMIyDuIRtVnpQn2iTyZC2PUdc3tEUDbfpH6sm2kmZVVg5SIYD07X1be65u+1h9+TULs4U3JMGv8Jd6U7N7kaITWQTBmIJtlyFu4frwddBhlLp0lTPAicoASlbEgQZTiNy/SvljoJz6AB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717796843; c=relaxed/simple;
	bh=miIwFDIL79BN+bxAHyevTrc1w9RIvwBLKGvjJFtBCzg=;
	h=To:Subject:From:Message-Id:Date; b=dpho7Gw+iWMQF1YixN4hz8edpt67lcuM9vfAIW7HBD8ztVBjyqGmJ08i+rUe8RPirdUyGLwASmKSwkjW2cWNKMnFAxlNa+e0quT/q4NzgHjCEf+j+EzjzRn1ZjU9i1ZKHfo+g6H6PNbpc5G0yZFr9/95PhXT4PDRlcD5KgL9YbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DkUQKB2G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DkUQKB2G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3E5EC2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 21:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717796842;
	bh=miIwFDIL79BN+bxAHyevTrc1w9RIvwBLKGvjJFtBCzg=;
	h=To:Subject:From:Date:From;
	b=DkUQKB2GpIvPH/xmTFlQesVac6i75WXsbPbpo/M7Cuu35108D27SoMcTuaRJ9djp7
	 5F8GUsioNrvo4r69oi4dVECAogE3oBT1G5oy5F6tC7x4eV7GSzG50FR+ZOjaZEPUkm
	 tSz27AIlgiGHLUDFMPYSXgT/PfgAg2tYI7OwR8RHJ8z+4iRuqyq03zyXG34oNELdLm
	 lB2Sqw6iOveaLdlob1HwCkwVuCtgoABhCuiooCpeioGHgY0GrMnQLGN1mIt8/on/2x
	 jnJkl8zk6NMz1y02UqyE6iCIwse+VHkBM+zHfyOUOa1hHxaSw3wgH06P00uobPVLBa
	 P4lNKtxU+5syw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7DD4C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 21:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171779684280.7020.16750752274905342721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3b73402124f02f6fee7affea54cc8fc0e3e9be68f0f631f12cb1d57ca413252
Date: Fri, 07 Jun 2024 21:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717796842
