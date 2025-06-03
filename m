Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FBF21FF35
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748982594; cv=none; b=sqJv4fX9oCJAyLZZu/z0Atf0+VsZk4NG9t+sMB4efnFg7txv23YSLunGEx5v+6uxzQFa+3mZ8azlrW2THNCZO9/pYIi2f3FURXjPABixc1MesE67x3FoKNi04oTaa9wip3XMTVPSwsssM94yOp2a11b+0zTCneYhrpH4ziDNBLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748982594; c=relaxed/simple;
	bh=ecwkHrUEjrjH/sI9LQCMcoSm2X4nTRXJDWa2TXXlD8E=;
	h=To:Subject:From:Message-Id:Date; b=RHSEQoqYUOZ8xEgdWOgtEwNmyGX5pYzoU8BTxBcTjRcE1xW9HDuJGBE4v/ypXf0nQkJ3JBE7WIYFqysrtuGHkBjbCl6mWwytKf4fJAtO676hswdOI5+/UB5xf5/sPemg1gSOf0NzKdPz2hULSHrxK/oW2AYgjluTSeIzpLNZSGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iVIRmRuf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iVIRmRuf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12E9C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748982593;
	bh=ecwkHrUEjrjH/sI9LQCMcoSm2X4nTRXJDWa2TXXlD8E=;
	h=To:Subject:From:Date:From;
	b=iVIRmRuftocyCutDhT6PpyjuGLWm8Cb0nrysosiY1BDaQwuDmv59QZKWZSgAUyD3k
	 qC6V1OrFILKYZfhX0bd/Oteg9xo5ng9hz5ZzQY/9mDS+ubr8eEfIfE2SsvqOX1YU7m
	 hT+lgmqRrIdh8L1qMKTa9cD3TFdyTvCiDfGZew9a0frdCqXMTy6XQiWVrGLlWpaSLs
	 ZRu8WuWaBswtut7GawfikcKK3e5E/fuf0xRph7KpVk1XF9ONuhrxAfIjLVPUB6AwA6
	 XVnMBN3s/eS4tGzQGk+xnY2iiULHm49uMKkjLIY+ZAX5hXHXuo2dfSIjZS1/9ixoBn
	 OQT3C5LylvNOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1B4C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174898259357.20023.16867796259822837031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e4904435dbd23da7bd7a80e639bcc63794ef03beb5efbe65f3975d025161948
Date: Tue, 03 Jun 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748982593
