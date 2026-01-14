Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B02378D81
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768380834; cv=none; b=JmplJLadjfMB2l6boB6l1sXr+8nT9vJXmVX3uxaXazihaaLxZzvxTOIIavOUGbwGT+pamuwJnqTEz/v7PskJBsYLoxfqkGpwg9Rt8lIkVCKh0E0HYJXHTq4u3dE+tGkKlYNM/KHcYkDa/dtDgpcLj248h+K2Y+f2cJwI9+awfas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768380834; c=relaxed/simple;
	bh=+5EERbFWpPYdlD2s/HTQvFOCoB7xtdsTjqfbn+ldR2I=;
	h=To:Subject:From:Message-Id:Date; b=Mw04g5jhG9q5qolKVURD5bV3eafEye7XWAr6RqRYloQFlqc8YSgQaP6lr84miObZ61dKlzL8nTa1ouO6oaZkut8Z24LNgC5bqeWmMdSnyVoqZUS/JGAxhx4dK4DqV985/KNP+1ku0F7ea7WyW39DjmOX8QWaM93YoiBNuQco9P0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9XcWy9i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9XcWy9i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED98C19423
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768380833;
	bh=+5EERbFWpPYdlD2s/HTQvFOCoB7xtdsTjqfbn+ldR2I=;
	h=To:Subject:From:Date:From;
	b=M9XcWy9iOnY5BB1xxKlPnaXibEm1J4yFNSzebukbLSmSWuzq889E+z6Se8xxRlBOp
	 MOybRHgBkUBkNqmdb6CTXceVrD6jgTSKFSvOe9tiC9R8LJHSGcheR+M+yUhY4JZmvL
	 +0XjO1WsCAoWspeCoctgOLl3WSzI/FRLddIrqwS+u2OPZZ7M8VtQd/2LA369vlA2sx
	 JwJAXu5dETeGB6Xry/o+oeRFYYUxPTcVqHCUOmp0PfXwFn16hbd+jNz/oi1+HCXj1H
	 9XakChnvi1uTOKZHJQNLznSSDXX+UQoghzd4YjIY9zq1712reHxfu6/Vv7UfSkjtPj
	 oZUOuhB1WTEqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC01D31A26
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176838083357.2034.13996471291775607223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c463c8a3f0afd3ee8eac1221de0dfddd46aa784d20ec5c6ff362ca651802c9a
Date: Wed, 14 Jan 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768380833
