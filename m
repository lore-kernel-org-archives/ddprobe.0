Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2FC1A9FAF
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767834834; cv=none; b=NfdrRNJo6t0CTPOh/FvJJ6it6rAyKwn3X6dZENfZYP96gMQaYOFvoY/X6X3LcPMNCao/FWLG5c5TfKqj5baXZ6YKZ90kukSPRgiUqtKSic0Fnp8EwKJGX5DZ6buTP2384VtFmA/v67ZZxhbXno64CBG8gZbGD1zteumXBqpHVLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767834834; c=relaxed/simple;
	bh=ZHMrT7U7Kt0Dw+QnzPnKDiba/FVDZMn44nGAXKuyjhA=;
	h=To:Subject:From:Message-Id:Date; b=IYbfTJfDpfVvvuWiUzb9Ey5am5qx5tL3hJPwH3yCopGjjzu9dAsB0GXKW8EltKrgm0gBKlKvoBJmpKxPosnH6n9wHGEZMpyhuZRfbY2q0EqNs6ix92ZhCNpwm4246pgMqJpybBGwq++NWxhyAbK1Dwbjf/oZeTKWZkRGzVP4eKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BqbKuGgo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BqbKuGgo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70A2C4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767834833;
	bh=ZHMrT7U7Kt0Dw+QnzPnKDiba/FVDZMn44nGAXKuyjhA=;
	h=To:Subject:From:Date:From;
	b=BqbKuGgolQZLFoOL1EbMu6Ht3CK/SJz7fYr/f6ojYeSV62k8rN4K7nZ9VJ/CE3dOM
	 +cDPXXKzw724ry+H/z+OiH5x//kv5SgUJS+lIWWsSarg1s1IXPgVTbfP2QtjDdMGKX
	 isUFPbljsxsZ3+RZ8DrmRbauT6Mcl2c61ZxS1oR0DEec11WWd6wlNXqULeB3DGIGnO
	 5OvjBWgFdLedCz8CtOus1X3YzGxImw4K95opPlngeA9vqj9nmUqZ2WDI/chaDh0I5S
	 G95PklGZgqzFzYlJlx0CJDqshepOJc6SWTQan5S+Gvbfjb3PwYx1qYXmJjwaBOUveD
	 co+MR91AESF4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95621D14886
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176783483357.29300.17117855394287537191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2589f6c1b59b9578b3908cd444dabb4decbc8a0d78e937f42a8c69cd129a344
Date: Thu, 08 Jan 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767834833
