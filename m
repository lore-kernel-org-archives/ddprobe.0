Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F4B17C
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734626754; cv=none; b=gZbH5y/uLbzXmqjWBvLzQSkssEV+fh97HKuanOfNGrqe1mT9yReWm8HBuyHmcpJyp06mEMpqQ4DITlGgBXBOTx32LZMl8DYS6ZaZy82Iy7BR8tj94uQThszIXDotaXPokK5LPTaQdkpAqDdFYjiNB0lw4AoumE3nkfmlg6DiGYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734626754; c=relaxed/simple;
	bh=o8kpzBr/Jd7PRnvko5OmyXgBqyjaRYwMy9Tx0Q+9vGU=;
	h=To:Subject:From:Message-Id:Date; b=TbMy5lDfctdz2PoSKYCqZwg2uYiZEVQDbzq2Ak0yCsTo/eNzxqTxb+4F3my6D1VBGNDWvOmYWKB2ZpUSz5pgqYKZkK/nUkpjk/QyDaUVsgyQYxJfmOQkhsj3yGfrPNwF+nDUo+8NG7wDK3eKh4JQXOEVRJ/ga0kMDzGpJQQqJ2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/bLUjjU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/bLUjjU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E78C4CED0
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734626753;
	bh=o8kpzBr/Jd7PRnvko5OmyXgBqyjaRYwMy9Tx0Q+9vGU=;
	h=To:Subject:From:Date:From;
	b=J/bLUjjULZefu38YetWjCOi/XgbWO4LGGIScWqLAoncKiiOHP99/0wgSZ16/mcSdI
	 L0C5r2Fx06JGq8x3czKHKUaMtcsxHEivPxyYWzO4njb2+x11OYMOkhEh16N37gQQVn
	 FKNaep5f/3irGEryzuFuXfAFHRI5qYnHe7naaB6GrDX4CIYaSuO7xt2L+gd73Tbp8C
	 kF8KUxaKR+ZQnYspuEOD+i/eqBdiIJMIMWJAfIlt/lTR+3NzzEUkgqETUvOhfchIOv
	 b3OY4+Od1FdeO5mEE6XKzQIq4B/6N2/cbDkUhcaeDdZ1PRXdlCZVF39tkB1E788Q9D
	 szbrWbGo11JzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0797E77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173462675363.20209.2193093922584286262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3c0a4541c60405d9727a0081cf48680167cc797fc9f38dbb9fea0f4a532e15c
Date: Thu, 19 Dec 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734626753
