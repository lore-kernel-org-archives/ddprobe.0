Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2460E653
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732602954; cv=none; b=CdTmKjefXV0665ctdQ+b12ZDnYxtzcMoYaO0MclKgJi58zQfCJPupXkvOVlYlxzY9tzWJ/65CbLIr5n9U6jGLI3AY3kjGaNaQz1veORfWy2c9cejmvgrdX5pejL7OepBSU9jJAgVgvEXyJPtRcRnFgXhFZLF+FiSQOU5vxn6gFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732602954; c=relaxed/simple;
	bh=2ppVJwFQf/uWcP0u+I6giUxbk+824d80a7jxGpT7k34=;
	h=To:Subject:From:Message-Id:Date; b=noUYBRRcWhFa4Zt0ITGSaP2knGAUiIPUGQ1MDIg7iWCD4Kv01NBXkx5HoeJ82WNjk04PY/vo4UHTYAG4FN7DlP2M626ME7Wof3dOHBxqRlpV88ihTCf8n+FgbfLtBwKGaZCNgrBVA9i+w5oNhIOG0MPoyk3ucqVeL4sBC7IRWoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZF1oDAXG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZF1oDAXG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE96AC4CED2
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732602953;
	bh=2ppVJwFQf/uWcP0u+I6giUxbk+824d80a7jxGpT7k34=;
	h=To:Subject:From:Date:From;
	b=ZF1oDAXGPBEuYFulJm5axPMSy9T2rN0DsLBZz2G3qh7ZcyMiumj+ekzHTRi97uuZs
	 1W8OrgkQUmtN0Gux2UiBrBvacY5hUenjVJSVLxVKf9auWewijVo4z3nclezIogVWRC
	 jAwVHpUpTkBH7yTQZpKjo8Zg5DtUbTIg3nlSw+jdNbx6i4LTlrWd/mlFhH8TmVrbps
	 rka4/lelJZ0t8wFEn7KR9yPDgN59WRvMeTLVGhNGpdUdMwIkRSpt5QyPXTxJ8jpOj8
	 oHNLBNitfua6LFLk91+rZEV6y2Qfd3E+IWISZG/wxsG8Ptuv77HH3Cw5c4xl9gNpdr
	 KyVf1Ky4V8ZOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972B8D5A6E4
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173260295358.31784.6138533435595662170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b95929a4f02c2d9646d27d10fb5f6df9267d495e75ec52937dec57577026047
Date: Tue, 26 Nov 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732602953
