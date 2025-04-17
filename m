Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288CC22A811
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744885194; cv=none; b=T6BH/bifp4IP7848wL6PtDOUoU0bzGzMUntCBSUkXT3nvez4RWmdW9/QWyjm6Ds7tl8+rSpJXzpU6q5roMs3sQUbP6ws4dPy8lEeRSLTAxY7Rik4R7GHh8p1HrzM5j/bEwIOF9lQHV8j7v8yWx3Ky3yzhvG5Z1r+kBvzpZ50Zuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744885194; c=relaxed/simple;
	bh=SidMEUgVLj9/uAUx2E3fuNrVXnsXu8RmMXvC6rNvOsA=;
	h=To:Subject:From:Message-Id:Date; b=H+We7XIiKHX5dJ+2JacENK3Fs22adXUwD02w2EO8WWr2WT0scEti68ImADiZf43uYPZNSgU+qkUQRcFmCItsCIl4y6ICAR1t4DKRBnIcWX/W7nR13RW9yzwNhNgVNbz91mdcJJZScJjbxQJxIbbNABW0I6jTKjvs7rm4nNb82AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=efeCVA4c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="efeCVA4c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F03C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744885193;
	bh=SidMEUgVLj9/uAUx2E3fuNrVXnsXu8RmMXvC6rNvOsA=;
	h=To:Subject:From:Date:From;
	b=efeCVA4chouLVz4y2vN2aXDnSpuaGYAtzFMaUUM8rn+zAJZ1cNbjP1dfSaIyho5xh
	 xbw45UJmkq7HJy+xvi4yzIUHrpTSAwBZ16SV53w9aoy1LaUz3J36bmf/jI8jkCZS0I
	 ZALLybpOb2z8alxB5F2C8QZHgGtG25ZJPVfnKbe2okO92ZWk9wawDMzdU7n9bIqgM7
	 DhvCRiUihRRI599K7Sk0PR0zODTA6l0wyyBzBPZPYM+vSGJgm1gHaimk85Rbl93cC6
	 MJMkMEN4HpO5WS+Jk4gcuOt9VwYx4ZnotlKD9eQ4uSY7p0Gzqer4EAPep/sm4e23gD
	 8DCSHOzIzQG4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922D6C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174488519359.13502.17941134919973290609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0197180812bf14e035dc84736066554924c1aa0aa20224262faa9a80d414e72
Date: Thu, 17 Apr 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744885193
