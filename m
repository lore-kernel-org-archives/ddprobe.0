Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4A017D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724730354; cv=none; b=m8XteZkx9xcWGlp9AY80TSbpr1KlLz2/OFbNCu7sR3iPrN1hKC7ZLsxNOVr1olpD2gxLYGi6/OKDwAyxl4dGx2C7w2OxZT8KWkp7lulLEscoSE8p8ayxW7ODUIlwK/vU0KFIJNdhPv8BuuNlikEdCYFoPDmWw3CK2ZxPQlHshhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724730354; c=relaxed/simple;
	bh=4cRnj/CTKA0hNCtNIQVxAMv9a/G0fbzef9dD8Iq373U=;
	h=To:Subject:From:Message-Id:Date; b=JsOVMFVrGKpIUcQsBYRSmGnH652bhn9Ab4fk+Xj6enW15W1S936lfWeAmt9vuigmgffOeaZgXacTUu6tRsMznMdMgl9T6iYnGaqL6orl0Vghrqbs7cKWTNAY7hubwRLMY2wAd8t3ZH/j3uOOXaVjSqD9Cgjwp2Q1ZjfCfNHBxAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YUjdpscT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YUjdpscT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE986C8B7A1
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724730353;
	bh=4cRnj/CTKA0hNCtNIQVxAMv9a/G0fbzef9dD8Iq373U=;
	h=To:Subject:From:Date:From;
	b=YUjdpscTlIypmRwOkgivuig04DQAjG1nwd1BUiHGqEdjaWYzkiYr81SIKhMGLhvzW
	 5U3Ir/6mw1Bozt6CqZWpxcFWEoULlPCn6Z374PM7yOdXxRtD76msGnPUB5O6RTSZ8I
	 lnmZEEeDbyvJR5EdHcsd31dShvso6DgW2kXpXscKEcQY9IuzKSCs++YclZ4W8gvEW6
	 U1IHLv8mWpuQQvgLlQCsoKEEgExeXIqF4YIdwrL88NWPHX6Ujnfxkf3P5CbuPysQfM
	 jhyMhPjeQQ4gRPYE4cVkhw7aiA7MyYIix/aEL8TsbvkiqcTfdiBksNwspFg0tXF7iy
	 rLG38pwtGgB8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B456C52D6F
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172473035360.31198.3405349424272662339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 201a89d2b54348cdf6d81b06a76e35fb2fc7b01d257198d7bafa57b79efc08a5
Date: Tue, 27 Aug 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724730353
