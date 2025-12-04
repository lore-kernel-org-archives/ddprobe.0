Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13AAD4A32
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 23:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764891174; cv=none; b=VVjxLxLzfzFFUbDAxi+G9R6lT3ifysEUsEejRN0SmD94pX0MR4rDSMAx22oPRpK2TxeOYy4C0PJ9nzsZfvbDUi5lKYLSkXVndPV4LZkiSaf5/r3sHTbPERQOOdNQrnVdQS5D5ox5+UdyXkcYYNTLj4L9XXIsMPZL5SKi5ZPy2do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764891174; c=relaxed/simple;
	bh=TCJzFJd6sYCqh1eRBM9X9Ynlu9wE0zfGMFh7Q8KDaNY=;
	h=To:Subject:From:Message-Id:Date; b=Tw7WtmftVCCljyfFcZHL8IOJYdB8vPz1Qpqh4rEfeIFBT6PM3zkh9XPRUNVe3JWxtAFXcbg44xo/yh7o6zMQHXMVVjNd+wwVqdq7L+FyaUjoGVDQvxIsg1WRPiL0dMzgSYXi6jUXn8MGLCHB/3vjLXvAx8GMMkt3kHPLSwgHtRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nhsxW7ei; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nhsxW7ei"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4346C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 23:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764891173;
	bh=TCJzFJd6sYCqh1eRBM9X9Ynlu9wE0zfGMFh7Q8KDaNY=;
	h=To:Subject:From:Date:From;
	b=nhsxW7ei+cXexCR4hHSiX3S3TlCDUQHChRclp+mAYThnweHiBTvtxGqCub9gUJYBW
	 5bpOokLe4smp3YIwDOxcUUDUaGrBwkOGS5LXsr8KVuE/mKBnlqQ0Z6VGJnBeu51Mic
	 JNiLm3oYFprKVF0jCg1qbKSM8/P4svrQSSQLlwFmdic2AU9K13MH98n8lSushYtSQB
	 JaUjfUS+c0/3lHa3tnDTx6ppbnAbqFy4aBG/1YnzDtu9ECP1qQue6mpPrIv6XPqwis
	 geOw5VKGiLziAgessgdreClAAJBpJRRkj36GDSYEO3q12Q2FRobhbQxAL9mO5jX256
	 1mei/qxn/r98A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E86D2CDE7
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 23:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176489117358.15249.11230002889009989117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59d9a7696657caa3f59cc5533ccd428fe20400a294377b62ef111edeee7d763f
Date: Thu, 04 Dec 2025 23:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764891173
