Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D28B8313E36
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771859093; cv=none; b=EP7rnDTlYNP8Un5tIuqW2cqhqrj57nw9FgEM4t8GGpOiOOcgX8CKOB8Ant19Mav9BQe5CJCh0yt9yWmuBfKJMc5ULnw+NwG/bIyIPcL1vxgjo9tvSN6FbxKGlT73u2OEQ8w5j0tqJb8TM7spy7+hNH6wU1SGsfWni2hfOviPwO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771859093; c=relaxed/simple;
	bh=HupfJfnuzDxqPUAwfdq9HDjqMu6PlzCgcNmovciOHRs=;
	h=To:Subject:From:Message-Id:Date; b=hNizEm1rF9VEciBCaoCNfdh/agyCeCBtGmvRxhzRGsYqSqXxVDO6gSJ25Gzp2DnTS7Bs9j8kG6uNRZSxZ93JAVcVqWd8ZVXN3/SkIH4ODC+4owANqcTjKhYdU7c8dLKYwJy92UnNcbYF2Jz4ETeX5BpCATbrfXAbubpqyVLlC/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uUaxxHII; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uUaxxHII"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA50C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771859093;
	bh=HupfJfnuzDxqPUAwfdq9HDjqMu6PlzCgcNmovciOHRs=;
	h=To:Subject:From:Date:From;
	b=uUaxxHIIYNiwRd6QhNwBll9RpHlPJ4x2Aqi0O+A0d4++tZI1kDQuLTd/efl4lfFwM
	 h0FNABC/BcT6pOdUrcGxgaBPYvBfYf3T1mEzUyJMXrW4543IZZWoWQX1tFoqP5lnGd
	 ztjZ/d6aJJDgZDx6C5gYiDSHOrRYicBVlorbtMDm7gX3uPMP9B4irciz6ie20tLfGz
	 w+7jgs/8BXKiR38v8OI/Z6SRHz6mU2olEAHcH8SoPb58C7XfNrkU06hZiqTUfdjcnp
	 LaQhq62GwRBicjS3w6JYMNHJvmuqMAwwwQWXMukY5g9gZbn6SUrZnJKp21ERqfHsr1
	 OEjYlgKLBtH3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958E7EA4FCE
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177185909359.12964.648568570604845654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db1925ab05432dce4eee563c246db489301f7f449ee8b1333f06cecbd2f05a92
Date: Mon, 23 Feb 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771859093
