Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB5821638D
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771095894; cv=none; b=AHYtRGgt94NA8E45NgKA1XUVhOfwOT799kEomxjfrFqT/lm6E6YYgAFVpknaFCq3Dodq51dDOre2esEVpYCFdl+pCr17l9ydoJ7hNjwrXqCvvm39U6ROobjRaND9/q9cGcIX08oCnUxZFtQ3vqu8sXtV4Qi9NHxQc/u02rbXwjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771095894; c=relaxed/simple;
	bh=47NklXQGdZ4l43zy2JUwJ9djHom08lGm6VvgfXqymFQ=;
	h=To:Subject:From:Message-Id:Date; b=oMThGIdeEWG8OtNUY67jOmLbzw66DK44co0mnNuAi1RO8ZXTup1IpvPyepYw8pGJ80r6RIso9tU/ikZ9x/RB1YvBNaqNfFHLrDPk2kSeHiEIlqSKWNLLKFZxexFrTTB3gIPk44DFEQ/PeVKyqoIR4ZME/V5j/Dzlo67LhRAknn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G20CH/kd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G20CH/kd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B294DC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771095893;
	bh=47NklXQGdZ4l43zy2JUwJ9djHom08lGm6VvgfXqymFQ=;
	h=To:Subject:From:Date:From;
	b=G20CH/kdm0kXDhisIs0q6UAT6XlgpkG5ahyvWQInrtqvTwelIwOUvPoIuZb72ZhDj
	 1TJVJAIB9iDfngE9fMfypZ85n24JdHuQMuG6tKLetRhZSlb5AMqWzFMVe55BUDIyTT
	 PY2X17PE3697wZKTQwLJCyO7P+4hsjOlmXoER9zstrxF/yPuvT27pzMBbIxgB+kEuB
	 5ayQzGN30GOBZtr+yA77ozf/VjpMIJbasUdXeo8rL5BDh909i4CZYJl9ensBcLxxoa
	 pwGWnQUAKmP1Lu5rn94AcMyhpRaOBnm5Obt0i4IcQP0+Kmojbu4v+43HtIL9Nt6ofB
	 YXU93ukR3STQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE8FEF584C
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177109589360.3378.13015486968077568678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 888a833f0bda5e8933f0747dce66d7a6a38acfbb83d3d061595a63d4aab46c2f
Date: Sat, 14 Feb 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771095893
