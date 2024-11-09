Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499B48C07
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731193554; cv=none; b=rS/rVbbXriDYK/3RvmaT+wCB2OZfVFZv5n7b+yYrrahEBXz6Eh1O5R01NC4j4YihY6uc7OZV8BMb2lKxpRS+D+4VUGIOTsVa+jL0gwDSHs2z4DHSQyOtuS0RPumrvh/9JD8VRAqrNYsbGvoMawXB7LMic4LdUuhVVZXvtxn2z4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731193554; c=relaxed/simple;
	bh=/oecpkix4tVSMTZRN+ytFR1Ltf0+ihuZJvTYR9uv3f0=;
	h=To:Subject:From:Message-Id:Date; b=e3fUng3mWQgjKPWKmNbnT3Hmv2C0LdgEvSZIAYvNDWG0fbuCu3Q+gY2SlbrnnJOzrfIsqAn9V4frnZuekK70vA07883Oh4RySUtvQ6sl7LpT6r0LG0RVQxJy6eatn0tLCIw7fz6yQ7/BP7GJpaUgilLVRln/Nfe8+mQX9Cbibmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rElw8QP4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rElw8QP4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA05C4CECE
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731193553;
	bh=/oecpkix4tVSMTZRN+ytFR1Ltf0+ihuZJvTYR9uv3f0=;
	h=To:Subject:From:Date:From;
	b=rElw8QP4GdlFETehfxKLUzVyMnC3vvBAQKL0ZVUCJqLHFOPu73xcq0dX4r9BizpxY
	 oQc0c6cT2f+qgaDWbIYONdyOQNCO+mC6+mYQln6CDCfYiTkldB/HW0b72PBRmH4CO5
	 ZkOXk46oT6rzVedU9WYTgoTDrUib6k37MA2iksrTYf/LymfcuWy3nzcly9hN7VSAT5
	 6qkNekaQDOM+h1dV8XBalphMZVXzY+BUmr+IQtm1+GDH1JTyFmLmcYUBv2tgB1yW7S
	 mAWPa0cmUqEuFwcM+HT+IFs01eT7nNAk7XBovO7fxWkcrc5fgLCyZqAODFpPdHw4Pi
	 mw8DEYT6lvU0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A67E9D5E388
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173119355363.28253.13730913659869961431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7018fc2bc7ff1facdb612da801854a88c367ba8746742dbd03805a20d67734ca
Date: Sat, 09 Nov 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731193553
