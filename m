Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2055828B7F8
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751301594; cv=none; b=J1W+DTcdP8PFxGTaUAgUIwKHM1FZxKxDwPBKDw4NJaQ/vDSppuWuwnL08lp6e/jTj+GuujsE0BqFnUVtgS2NHZ+y9I2ODosIA/+QmJ2BfV7pm0gPYOlZ6KxYrCnF0exF6Poa30TMpPSlHlB7LRi8WT+i1/TMkWemcVhB58hfbRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751301594; c=relaxed/simple;
	bh=+/ycvZ/JDrkpyWMFGGY9jxSIJRjZ3MjnWsAC0HMqV00=;
	h=To:Subject:From:Message-Id:Date; b=M8gBGQBvS/Ezt+5D1ETskSk1IxeB+2pRmyrvYEY/woo0XoFU89pzlYeOs7YhqlwjzPEFdGEYYlttMzdQ5ukIlf+qGLzLK4L0+iwCEdq9aMsN3wltB5wJu8wRxNR+WS8qJzxwu/14duGjEpkVwL0YWt1SKtJ3a+sLJa5hk7Opa+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BYdpJ/lj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BYdpJ/lj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7734C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751301593;
	bh=+/ycvZ/JDrkpyWMFGGY9jxSIJRjZ3MjnWsAC0HMqV00=;
	h=To:Subject:From:Date:From;
	b=BYdpJ/ljCbyuWPx7Sl0KiLqrRsStNL/Gv9TgLjwz9lGie8jLBHCMwmyqLZovuV1Jx
	 97Dd8kJBnMQQPpkNNeQZll/vsSfXsO1cwObv483cm6CvMBw8R47cYM1Xk9zt1JaZMi
	 UFIG/3c/jAEGcPmsxoW8ykHLnCZFwmhGsbT7Qi8hFFZeVTqDkvgMhW2Sdzjpu0wflR
	 0L1LH4jIWTjkQauISlzZYUyYCjNRhyfTW70XOKtxVW/RdgRe5CVDKTvOXJc+zJPDo6
	 9qpf8GIjqud1vB+k2uT8t9A3te5K6MKTvlUHifmvsaay0nOddC6KPsfXSL8AXU5eNQ
	 7G1U0+Z477tZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939E3C8302D
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175130159359.22474.18396352450293545883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d2e1f4d170f0ab2f7b4c6e035f948386b227d927180033a4c5b47d1cf6c2df4
Date: Mon, 30 Jun 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751301593
