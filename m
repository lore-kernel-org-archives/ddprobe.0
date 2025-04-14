Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A0D252285
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744642794; cv=none; b=aoT2GBiJpJ6IRjVaueR+zLHg3bsSDHXJIjLzai87vY3ywFv5WRc637wc7xt/IjIVMgYdWPpawl6axLZx4eR1UReshmF0VEm3wpQrT53pVJ1+CX50sh9AeWClb5QMjv9lJedab6JkzRFmeeAohaPxXuO05e36+rXqtbr+2GRFx3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744642794; c=relaxed/simple;
	bh=vrP2gbwH36pL3KhMuvuAUFIQZlHVXYC8I5LDS0Oy3yg=;
	h=To:Subject:From:Message-Id:Date; b=U5dDD26bxgr3W4M+22wqokF7MEt5viHhmL5yvI/waHWIAJw3VGT8oWs3NJheBHicm6UexRVgRx0i0pA1XgItpydxkBzC00SK3ZV6xahwyV+gAQQsmVxvCMctZp1BndMKOeHIfITiJbswDtzcfA8ZwzzRP312zvnctVjyjNSlqAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDfXBK6p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDfXBK6p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5527C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744642793;
	bh=vrP2gbwH36pL3KhMuvuAUFIQZlHVXYC8I5LDS0Oy3yg=;
	h=To:Subject:From:Date:From;
	b=jDfXBK6pBvjXoQWM3c+SSKgvV4Nu8gPWLPY/w0VpqPoGFUUwsO/oSLNLYadHf2adJ
	 z335cGUoi36JImyPWEE7+lVxLAOaJehWJFgkllQlgV+8Yz/NbyOEIbf+StTYIgRn7M
	 QiG1GmdbKSRhtwIHjqp6wR4mEYxbrpmRxLrZ9DfYgtp0feLh723XBZn7Nqa/yyLXod
	 SyOzThFm+jRIAJ6AWWqtl8kF3N7/9Hj6bVx6gRSGJl/JyIDoUiSSJbe5i3+unPYNNk
	 jvVmnHKfxyCzJYtsoCN9+Q+sB/FB/ZnwnSFHW4AyBA2F3QVL5yW7iREyQBYKgwj8XZ
	 6inPoIO7J6ARA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922E7C369A2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174464279359.15509.694776812319244490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fb6c09901e585f5496fff6a4a22a358bc2e5c77f47995e6e47441063baf35b7
Date: Mon, 14 Apr 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744642793
