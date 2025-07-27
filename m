Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516593987D
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753595994; cv=none; b=b5onUW+HtRs7la7EFeAp3JG2Q9lWzd4IB8sTnKTvIIofsjGUti3GzSygMfr0VigFM8JobyBvlivx9cBG0zoT9QXi2cdgTnCsdQ5hor1tKCW+vfO19A9jnOT64ePFryG1DlTfoQPa73jJLTmm7xnFjoyC4NNlgaA7aBpO7GA3cPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753595994; c=relaxed/simple;
	bh=9sdwhpw1UzgKR17vyxum4Ieh2/hPxsjz/itO+YuHPiw=;
	h=To:Subject:From:Message-Id:Date; b=M+wrByZbKWvQqw8Vd7nQxr6R7bLf+kKzTlUTuvtgVGQmSQZ+HjKQPhmR6nOkGwnjII5TOE4T7jxnPMrvJPRiyFjXvalApLBysQ5GPd5JKrtFZgEddOO+vkW5xWD9J+ZQ6WNYVZk7sh6OAJup7Pu++2HxAewd00hPfqJev0iqGNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B1WxlFD2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B1WxlFD2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3901C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753595993;
	bh=9sdwhpw1UzgKR17vyxum4Ieh2/hPxsjz/itO+YuHPiw=;
	h=To:Subject:From:Date:From;
	b=B1WxlFD2GL7dA5BOkB5LlhjwpFV6vKtQEqiFkNRCti5+xAur7A6H4kbNM3buD4rKr
	 h+e64Y1iE3zHGSAIb4Q5BospQqwDoqFjSWf3LBlcppafp5o6dW3/ZerIaWKFA7lrOw
	 cbjzTT2z1ZZA/V39N/WagrBH9VgwuMrO6rBYNQIUUNEZpQRgrdVis6zCVLqKP+CwVJ
	 965rUN3tL84R4UnhReVSRKM+aWOhn8rJoCmPwqPdkX3Lexv3+OV9bud5dkmaFQiIXW
	 B9ux0AQ7dMAMtHD4YqdMnQB/URwBQFVy7Y/XtrhD4YJOW3MXTX/uTpydEdjcALw10e
	 aPiZsP92dj/hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A25FEC87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175359599363.14106.3074599266860650568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b14aa9050e0e79d024c800a74fb0a44a0cfd938cb6852b6340ceabb2e729f340
Date: Sun, 27 Jul 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753595993
