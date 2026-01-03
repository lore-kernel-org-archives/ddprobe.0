Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334BD29AAE3
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767446034; cv=none; b=aIiY3mD/qowcBcjPvVC27MVf0y7D7vdr7/lCsLtIVA8PDMr+gfhm1RLN/ezhpGOOKyQQqI6yrqsI4NToV6pa6G0GmdyAGtYVnmN6VQeUtmhIbeCg+TRVnReY1cb8akU49mQivr7cIbmaA/9JJEvkwQpjNKh5gpUvIpL1Nt+Eibc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767446034; c=relaxed/simple;
	bh=G64DF2UshN8GMkZadZ+sTlknlRjhHawcd4zR5EVTD4s=;
	h=To:Subject:From:Message-Id:Date; b=laJWPioGzlCHHenIaCswNuTZZqnkpwFsDRCva4X+iyOU2bmdZX4bgsIAYp28uWiaND0P93qaBVlsY6nkXmYHPWokeH/ba87drhdlmuXQGgzyfEad1ytTK2Hulq2gKT02nGwYnm3FEvBoXKuxMmqHGSjFTW//UuvyEElSoJraAFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=an4b2LG9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="an4b2LG9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D33C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767446033;
	bh=G64DF2UshN8GMkZadZ+sTlknlRjhHawcd4zR5EVTD4s=;
	h=To:Subject:From:Date:From;
	b=an4b2LG9itdIZvMjzDN0MXOAtsOnva7PmLXqZ8vLkr7v06VoLJ38uPzuj71yfpA+R
	 Na3XQFINvye9RPKuQYj1U5DMHyxr8EuCHryKNo8GB3J+P8y6btvRPhaoak+qQPAzOv
	 hDm9QWzx2NFkbM+FCyylKAmr+8ws7TKDD9XAN9mZCwBcW06vMWgnVxHEGP2V1Nf4we
	 hEkdnrNOtLKXhawO4Y7HPVCpmsBH1NPh2ikM45GPM9mKvlb8nLu2U0tFzrGDdwDmkw
	 CT36EiYMfUR3Nva3u2DlC/EQl4bvBQAbwF5vpXwPSJR1mLikbQHCsbeT+pxcyMhlB4
	 QGkh7t6J4soOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949A9FC6179
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176744603357.10243.6090788940180683253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a06bfbb02ce4ccb85decc7dc6ec3f3ebabec80e648bcd9069cbfb67dee8f7a0
Date: Sat, 03 Jan 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767446033
