Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A5312C497
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 21:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715203343; cv=none; b=hysk+YtP7xCUFdGwzt7A1mG+pDjFK/+8OgJFWUnRUvriIqF/5vzjNabTKNmDDNGVZYpnlmti7VVIjwAeKKe2LCbpaQksysGN4KqtFEZQNmh1CwHDUEIawCVPzAfqqN1qxFiri+RFUkNuFyRGX1oQ9K85c33uZ1oAnoHJIyUZXLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715203343; c=relaxed/simple;
	bh=USIfox5engooud/1ofQF0Th2Eq6gWNow0wOCJuAR6lU=;
	h=To:Subject:From:Message-Id:Date; b=Ni5XUL+8m6D0mHtbO7kCqceB6UKyVclIBultpaQEX4L6mRDnigINFUbguqOe4oLIfxC1wcXh1/vVp0FUhDZ1NE8U/kJU7Mw3NJCcY0WaMb5WS3IDSs3EVA92klFZ7Qm8j8mVq0vzphuB3qy2pC7Lp/I6sH7j6wxPS+AXS038N7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLODEL5F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLODEL5F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFFE4C113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 21:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715203342;
	bh=USIfox5engooud/1ofQF0Th2Eq6gWNow0wOCJuAR6lU=;
	h=To:Subject:From:Date:From;
	b=uLODEL5FQhVwfO/un+Yka2QZ96GlZLBF8EFqWzQyMJEGhGMOKycz/Je5kaC755Y/4
	 nd2sR0vIXQ6Kz3TEG5JWCO9X0+gJBbTjs/l70PQnSq7ZiyCSgilIqoJ8aWAOYkPCLm
	 /WyWSQxpbc+oOhP9SMkUxOhXrr8WTHGiFihWVklWD5E3ddMKCkOYY1MIFBOIHA3XqV
	 siQs4b/TAcH7W+c7hRFy7+wNQGN6KHribEFKsh4z0dx59YGqDtFqzhqZcq9tTV+UQN
	 Eko55DSMReodoXKV8VV5sb7a91qWjeMiDhLhU2LcVZ//ve26Fw91OhSl+k2RL3NI6u
	 I0GnzK/+cR3WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE07EC04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 21:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171520334277.7887.3165277475620511967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b8c07ee8cb106b00abda2f01c231d7d5da88ff8c7014d1f91b64a457116851d
Date: Wed, 08 May 2024 21:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715203342
