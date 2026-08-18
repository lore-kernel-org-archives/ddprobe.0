Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4362F4734D2
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787058634; cv=none; b=Exj9odOQwTqUddHxPHbb0VC9M5C1MmRI4mUy22RWzcdWOUMpmXNu5Z/UPeOMIJf0B9hznLYnxU6hBGkU3lvYdrOuJv9dmAhW1msqshAWgJJy7fkzknS/4EGd1wVvIE2X9kVq7sFLeKw9eYsmvepooEUqhTJY5Fu3671Xo4U28vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787058634; c=relaxed/simple;
	bh=+KY5y4/S9bjO8glGmNS6IZfC2sBvspEtVAK5q/d45Ns=;
	h=To:Subject:From:Message-Id:Date; b=YRM+Fv9MBo17z8sxLQswKnn3bz0wZZeDX6UaZd4VgQG/vUHpWjoFRYEut9pH6leTt21aGCfuJQ9916UjGSKDCwAOXzf1j3K+nFsMAQ7qZ6ZfsJmzE8q/dzPXpHV8I0w81s1XEcquoMflR9g6Ya2/f7zmx2J2QV5QSi0mFwjMxOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8kU+KnZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8kU+KnZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9BEC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787058633;
	bh=+KY5y4/S9bjO8glGmNS6IZfC2sBvspEtVAK5q/d45Ns=;
	h=To:Subject:From:Date:From;
	b=s8kU+KnZ78GOOkjV1wuh4Cmf6Twcz1XxAeTu8ihKeA8XKmj1Ty6V3fYhcrwXV/wJR
	 QtgrY5jrFbQLqSb+hKk5XSahjDPO8Xe+kUFyl8ILYlBofqp6C0Dq/T1IOtzUyExtgi
	 PbmsmtCyFq7PF8Y+2CAz5+qPxS5VLQpli8mIrckK6lQDsC8CiZ3wIZnjba4yWz+YRN
	 ORke+eWgZiKVoL/egNNv9Zsw5tCZ19ihX+TyBG8WsO2z7h8jHbZt3t95zDPIt9ojtz
	 dHnhTRNMuyJHiiLn0vxbTJX/S9y9Z1Sbe/o1be9TOviz6e14qe0G+lpWhjB+Xhngbj
	 TVEcTy+1ZzggA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD41C5DF7E
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178705863368.3694.14392196895525127681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70dcefd78bb8f188ae3af7e1a6d661f523d73341de203503f047983ea2dbe45a
Date: Tue, 18 Aug 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787058633
