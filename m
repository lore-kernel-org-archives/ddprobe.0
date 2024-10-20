Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359641373
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729384554; cv=none; b=LkYcwLmYrKz8xf0JA7GbA/O7LgvieqlHKtzT5yQxaVhGVFYNQJoOx/4OQJU0m2kbTAjHD3l/nSV7OK+Cf7pybFbl+D3k2sMSNqCn63ZT6UUpuHuHhRiYHZZqwtPOy2TyMbYSDMDkPqHv9w5NpS7QoWT4LlWiEgNtOZQaC2Fjb6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729384554; c=relaxed/simple;
	bh=tuv4X5HAdSSKbI/P7V+D5WPnOW7i3Oe3Q6jQ6MsWKEo=;
	h=To:Subject:From:Message-Id:Date; b=q7G/dWFTE6FjlzfBp6zx0Rwx+4cyZVH8Km5fdtmqwMgJ/fytDKpyEI95odsCSnhUgGQwePSUpwOtZP2Ff0QgoL7bkQQxPx81+RwHWHHGQPc0h0HvcYCAX8Hx7yJcUdfttA/NxuBbDrtR8lxAfTB99UgCe3Cw9FV/1QBKwDGGdbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iabDYbs3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iabDYbs3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B733DC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729384553;
	bh=tuv4X5HAdSSKbI/P7V+D5WPnOW7i3Oe3Q6jQ6MsWKEo=;
	h=To:Subject:From:Date:From;
	b=iabDYbs3c9TE7Ypx4jNmoLqzh8o/AlkLhzeA0laqxwePg1KjQOKT2+KpZxdOm6Q49
	 khH07ZHkvHfdt+HYsz1fuDOxRO6WoHZg+X6QYrSNNcwMXidACTCsaUh3J1wipWB96M
	 Wvtv0TCGVokdF9ccjP4gcZ+tIE+1laLPgfxZu49oaOLKNelyGs9HQK8CPns21ZTvuL
	 QDvax3VBVI73AcTqjrWoPon+mFWcfV404B/wZIm2xeOQuKPWJ2OFOPOLM5zGSOYX95
	 dMrwjzfVYDiBN1eQSklgQKTXyZx2YhjeyLT24DWnRTzNMiQtRfIquM+DSh42rv8H9f
	 Qpnf594+TRB/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF77D3C927
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172938455361.29170.18436075506914186900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faeda5d574016bec771b67fc15ef99d9a892ee4d84db1a3a5b08521b3f8ff9b3
Date: Sun, 20 Oct 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729384553
