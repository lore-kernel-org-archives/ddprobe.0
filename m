Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CD528688C
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 11:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764157974; cv=none; b=HOa6om5v7sjDCKgJ1j248v7iukI9yz4Jxg+U0BygDall5gZZxAN2JeBxLrZ+yVspIIFu/UQ5ZRGX4pj59MtIanVJyKc/K40B6gjkxElVSQXfoxc+yStgIZcNQfHPpPyiQRbhQhP45KwsWtM/ZXaAmccSfL5a4jCdrYU8JIyeEf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764157974; c=relaxed/simple;
	bh=gCP3zWAZL9H9IUxm9COrynJLSRn8w62YiGEL8XhuBfI=;
	h=To:Subject:From:Message-Id:Date; b=ugNiry64OYxNHuVB7MFy2n+vqHw43OGVDS904u0Ti5WNUa+/nUp3+zVd5EnpAhMYc9uTogC5NhSJjcjqk0GK7u9lS8HNrq3d3uJ6jA9UySp3LfC5DP458W9knrEuOHdtva557iHzySB0xbSkZdfMvt7p8So/dS2rHuva2saUYRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+tBlGRb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+tBlGRb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F35EC113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 11:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764157973;
	bh=gCP3zWAZL9H9IUxm9COrynJLSRn8w62YiGEL8XhuBfI=;
	h=To:Subject:From:Date:From;
	b=A+tBlGRbTDHA/Ni00xFyIs+u1wtLOSbz/7Klseu2cxEZjE26f3yrzIqg2f0z0FT2B
	 S+4JsVH0i5w8gQobS1jVdRG+ylaSncQKWz+0ceyCUlEr7jLhjXwcHXP/RnZdPtj0rJ
	 /JqnG8YtUhd9BSwvR9vQfB0IhK/pbT5rOdGFuho+Q+PznB/017fI6saTA35u+4Hko7
	 CMLnhiUcWbWhRT0rZkshyRhP9En5V8+lxCWPosHx2Z4LkzshjIr0l28CFkSjqAGgmX
	 pJEf/uheckn+7jeyPRSTUTFzRhGPTkvX78zL6+CXFaDwtxdyW3b3JCtfXTq4fMr4nX
	 nvOtrwysPQDOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ECFD1039D
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 11:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176415797358.30821.69482737528751171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0ad32eb6af9db39b2c921ad01bfff41a0e1dc69c651c6ed6a83ed4267f4e307
Date: Wed, 26 Nov 2025 11:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764157973
