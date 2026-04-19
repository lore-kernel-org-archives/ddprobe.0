Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E05234752B
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 12:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776600454; cv=none; b=MzTZLB4mR9vu/jVVit9W/ldfK1A0vTLzcDUvRy+Y2BLGwU/OIMOonsN6gi4BfyOllTpj4hOS8e9EedaliymipVnGpJKZnH3vEdfnD+fFgDhNmK3ePehNZI9VThh3pGIm5jeQY+CmO/nrxv1C88hPGz9/iX8YLmxgFt8ZPhL9StM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776600454; c=relaxed/simple;
	bh=AF7DmgGohHgl0CkUsuomxSE/dEMT9ThYezh+1anBnEY=;
	h=To:Subject:From:Message-Id:Date; b=XKmxGUhkmiXhFN/bOhMru1MWboVhLis2WizL/4eIBGX5CFxtm75epKh0PEIp11DRve8kYPmB9aKMMst3hgb8j/avLFdqAdKUP9iz/TyjzDfvf4ZUqGpY+O6PxDhtjIhe2an0Jk51tgxcWTOiuPQ3OdZCHt//mwqy8gtLp1h0Kb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qUsmzMbV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qUsmzMbV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAB73C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 12:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776600453;
	bh=AF7DmgGohHgl0CkUsuomxSE/dEMT9ThYezh+1anBnEY=;
	h=To:Subject:From:Date:From;
	b=qUsmzMbVSq7m0DLk9DaGkjIuDrlpl7qbUMl04ixSCVFiyMuGEB/pTaej410drALCq
	 7ETodKDows0khqM2O4NasRUfL8aYB66V8eqTMJoohPvYhwYQzL6zK4c0uVhwqefDJD
	 tvrl33sz8CY1dev72nLlL5T+vRjXkSROexZHi8evAhenfHMb0qxRUxu7QQ7BW5SYYT
	 rw+FKgJsfsTkR36u/w2tCxaU7E4mXfXwWFKURhVI08n0hgSzYALtT7Ji0sdU/77Kir
	 7ZB1xYURovbJ7bwQwP8TFGxAQ44YU/jd4o7tch0QOz0iQrrarLAsZ60SROuRZh+ukM
	 JJzRiz3yelyMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC20AEA718A
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 12:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177660045368.31561.759003810933833025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce414b31519ab6da79506ff243d58b91dd784f95af920584fbe128a0ca4dc11b
Date: Sun, 19 Apr 2026 12:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776600453
