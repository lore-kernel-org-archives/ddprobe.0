Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3031B0420
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759010394; cv=none; b=eQHkObzvGxj6bbcFDnxCIlEX7dGtP8Q3omKdPB9XnnDhgmCy9uA6IHxV1xjf/F0Ow10hOd8kqK/L8dTRXRPsMCMn5oEVr5pMk77EiaD73mKKuJprpGcGZxFcOJcOWpJ35rvPJmaPQGrL1SGGYl2aaC1WyOLKYDB4jYc4Knnr0pA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759010394; c=relaxed/simple;
	bh=uDxrlLQVC8KxNBk1iOFLKl3/qfOHt4xvmFhwcRSUjvo=;
	h=To:Subject:From:Message-Id:Date; b=EVsv4zLccpzr/4j3cXUaxJnkrH6NDvLRG6sFOm8clN67AlkOvyuJNXrZ1JSPZrt28EN3kTjggAGrNYRpAn2uR7LhVM4StrA24Vn2VXTPBtgT4BVU4Hj2PLm9G4dUKHEKPTCORVUeXnoWW7G3/RCZUkyHs4APeiCZZEh/GMIw9EQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXUlxx1D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXUlxx1D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7027C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759010393;
	bh=uDxrlLQVC8KxNBk1iOFLKl3/qfOHt4xvmFhwcRSUjvo=;
	h=To:Subject:From:Date:From;
	b=rXUlxx1DGGHRXpxwsyT+JPMvw/2In35HS8cd4CI88eXKW1hRCT4rdy/c7azSrleWg
	 lwQvnKH90/3vOy8swiexepUNNvDYjpeL2ix0z4BzCJFBQa3t41phYHw8lNbMeDzOo8
	 96PR80AiW8KfU6qwhIV0QcC1o0o8wgZhqXeOer468VEOvck8vd+pbovFFbhrT308T4
	 oj98T7+0OFWJPCzAA3NA3pZ+CyrbgMg1JURo/QnL+BOhr4bGmhVCmllYEfSSC5MPuo
	 oSOUOXQ+Psna0/wIiBpLmLH7UmSKD74WlaNNC68leT051U/Cf7vd+eeH1ggtjCICbh
	 VvX3h+brSr1Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925FCCAC5BD
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175901039358.6459.13296529668117596881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2371c88dc3e54d1760b7278915d0d5a6b84179b2e7f3f55d53057444ae4ed814
Date: Sat, 27 Sep 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759010393
