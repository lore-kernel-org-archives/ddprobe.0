Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2960D1FBE9B
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756436996; cv=none; b=TrQpO+AiGR8qL/kMfev/uFWKvU/azXW2TLOLxDvg7olW+pA7uv3G3Rw8GW3myr+0RLQWtZJKSGiVBFjU7Z8YkKe20It2cpc/6aHvi3aytlr2s9ZA/WTnR//Ab1gqO1JRhDKzhUrgrXJKOX7nJKYTUToEd08m5iUXd0IzQBS892Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756436996; c=relaxed/simple;
	bh=YG8UFj02ECb4xAXeTPLdHpWyN04yCFxz0GJ0ihTlJYU=;
	h=To:Subject:From:Message-Id:Date; b=afqIzBrDVY6ZzUhptygaAFLtb6H6KppDAxWxB5YwfTlkuBguezX5sD1Ck/PCmwmtbg4CXT9xqVM4b3TqExrLSTrwYA7HsunAnb8wBYVZFUAsYN59INzTznZ7sKv1XFYwOnJ8DIAjDQdtuipUBjPh5zX4L/bPLjt76TkSiK0aio8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RHDiXDku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RHDiXDku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A435AC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756436993;
	bh=YG8UFj02ECb4xAXeTPLdHpWyN04yCFxz0GJ0ihTlJYU=;
	h=To:Subject:From:Date:From;
	b=RHDiXDkuHjhV21oYgEMVN2zPKkUnBXfzEZioW6xZpXTxaYZkQHfm4BScHWVv+xz0E
	 yNgnEcb2tQKUNRZ+9pk6j+EN2aMijxTglUPvQ8+MjheQ2x2QCrVAnownKxrbGQD11K
	 +WNWakr3PdiwJxvzCEWZI17DzcPtXx4xTfM8zha0G/6h/dig0yqq9rbcNrMmQFcj7+
	 vhIN3/zphznmx78FxZZvFvwDjBJS7drQsaCeEr7i1/etyqzZr9io7G5w2H7TL3FVFy
	 hXBoJySdfDkk07tKVpPvwIaGkij6db4lVpfpBOkksvPOA711JiPyE5o9HsI7AocR6Y
	 uuCDP9ZciXEQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBC1CA0FF2
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175643699357.1636.13268714267546568967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e5311cc690cb3f1d7ff1c493c695c99542899ba0b4ef60f63258a312d965e87
Date: Fri, 29 Aug 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756436993
