Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189BE1FBEA2
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752945594; cv=none; b=nyBkbmFZCU4S0ZqddeZicOBRBCibA2SFKX3mKqiScB0NEKQL2dxdGNvZoMjZWwhxNFYSKiK1q+/nagCQ5tkyzYxqAsX1LtJmrnjetevcnR6WhmqjJoellhNn5ePx0MyaLJC7nyps+X26I8eu/TVGiIMa0yu/PD3WMDcng31mM1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752945594; c=relaxed/simple;
	bh=kHogzJXw/7mPnOgQdidjtxCPREZ5TlC4hGleAhezTRM=;
	h=To:Subject:From:Message-Id:Date; b=e0qeeaCFkU1chhcGA86i3BuKXgTZYH8Rt5/7k7msQLqSdi5F8pQBkXqUE7tq2HWsgAt3auf6KoF7ANq/FDo6jqr48gnNM7Hv0hOw8I6VzZq3VAOyqTGS6152EWDT0nkm6ah/lmMxq8zJ6mAp7XkijbBbS3hNDbQZlq4VYUfGchA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lFcsZW3V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lFcsZW3V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A5DC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752945593;
	bh=kHogzJXw/7mPnOgQdidjtxCPREZ5TlC4hGleAhezTRM=;
	h=To:Subject:From:Date:From;
	b=lFcsZW3VUQHf3Nh9A4+C/6j/8bBNg9u8SVEwlqmb36MIVwZCmtoQdAtKN3qUgrISQ
	 zua7apNFf6AStgogOSn+B+2yt1m0zENpXs1aJw5xRzkPqVm3f5l8wOiYA4vYR/CD8d
	 8fhRRZe3z8V0UnxRF3vwFfq2C+WVewqwr6zWvKzsv3MaKAUL2ILES5ucQeKSJFPYwp
	 VzF5uGb5WPkiAoBifwr6bSpFBizbVAmOGkJMDR7YxBpQ9fwkFC2tNvgYRJvCnrgKpZ
	 f5PZmbuMMoJmKy3uqE8yPBfGVTKdF+rgaRSi8R2Bn/5iOVkJAwJqBUNBs68ulQFRgQ
	 h2ISZMv6cwyAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E57C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175294559358.31775.1133173942997560186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0488a6f1969590dc7061edaf2b85d2d30fa31b57ab34d41128c167c199c83429
Date: Sat, 19 Jul 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752945593
