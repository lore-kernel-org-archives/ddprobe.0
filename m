Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353042F9984
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755113396; cv=none; b=ZzuuGKXHyTJHQsYNGlA35bmkOFZCJ2LVmL0fPeLs+RWwWKn3w2seYLvCIJLLvzun/BKcJp+2wn/6ozTxArjjF8MdlrIhF91GG5hLDjHG2SQvmrua982V08NyzPGXPfllFEo2CH3xEdjG9x3/+WYjXZfrNm6JIVDPE0ggUGQVR8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755113396; c=relaxed/simple;
	bh=oQQea0pD+DGlt9Itygm8sDclMOxDVrswNW23CnN947c=;
	h=To:Subject:From:Message-Id:Date; b=lx9/9bxZaHkP8djPSlLEJQz2mXFLRHKocI6fkr/JqPMI/7MxvTRd0pozR7yxk36jFh/n5RWtWRX40VIicZjyOV2B4Lp7YcI0Rgmltp7T474bXPkHhweJhuXitgqFXpFgXN8sKoufVzn8Sco7KKsA/P2su5h0kBgo8q47B0Ef5PM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bEc/fm6C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bEc/fm6C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72C6C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755113393;
	bh=oQQea0pD+DGlt9Itygm8sDclMOxDVrswNW23CnN947c=;
	h=To:Subject:From:Date:From;
	b=bEc/fm6C6o0awv5A2N0+w7VPzclAiQDdFE9HeoXEPLKnKoB5eaQZYSXbQwcuSC/0s
	 9znJCtd8EFqSj60pffgPwNfyKBjpKlGHAisKnmxGIpM4R16QMChv/MC4MTyR9i8V+L
	 9g/E9COl52qtKDCrfhOSvc6y118q5qW4PZ+UWyIHGzz18AVfhZvXXFgpBrxZDZDBKv
	 8Cc/7JnGXR/aQz8JMB+pL3IwEi1TwtGDfyQTHQvyjerUW1XO+Fuw/r4WGkOeRzH6uv
	 h5lnbp2LFXOKJc7ytKOSTm1BxpwSmifnnJw6tClYqKCVQo22bSedyflOAISSoT1wfr
	 3GB1VyLdWNJ9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9275BCA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175511339358.26469.16148428259772480761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75249d794569c7a5f31ef21942244ea3f645a9ef90b83b0d34fa6ebf99d6ccf6
Date: Wed, 13 Aug 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755113393
