Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E94252080DC
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736550354; cv=none; b=elYFmJ9i/AJBhN/8Sn1w7Eif8ncfm1EAMJhihllVnx3d1NSQR9ZeWv8+82wnYigrdOFBZ9slOd8kgSvTiFCoK10E9BG4Xj0yuVOptCaL9N8qkh6JbusvBVxbQhZYSlcT9uKyIQTk0DjaKkI74VU6xxloAFvRHz9nvEYg5Av99Ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736550354; c=relaxed/simple;
	bh=fOLimT2r+SwgjZMFGQTK7sF05vQlcCAEDbrMkp3QPW8=;
	h=To:Subject:From:Message-Id:Date; b=bBTKBPjF1iEtnXEJUJIbt6zQ80G3+tz6+0yckYQjvhx7txixJapppHBo0WmgfYoydwQVWkGlptqeC+FxlBho7BvC6Q1YQYfLyb8X15tZx7R6tjVof11JsEr/1cXT2VZdWkUyeYIUq4htWR2GUghxsHq9runnErFQY/1WNe8UQqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUK4DZJP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUK4DZJP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B47B2C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736550353;
	bh=fOLimT2r+SwgjZMFGQTK7sF05vQlcCAEDbrMkp3QPW8=;
	h=To:Subject:From:Date:From;
	b=VUK4DZJPh+sMy5mcAMgFdPgKmL+Gx+U82UXiMLMq5tJadpr5ujNBBxyllHCkps4F/
	 y9RIphSWzPtGSkjWanY8J7xURThW1Yuxh8xN8gEohylAvP3WDWxuMM+GjiLuD8brS7
	 ZpXhUk0Udmne8D095o4zLyhRKUspEbqoQc2TxWbA8O+cEchl8+F59PGUPDYn/f8q7J
	 MWXcNTk4jvn5ZQ0AxgOXFaQOLINMTrrcATJfAdrthAoxESQilU5Z1zn61rijFZjFrP
	 CORiKzhtjjt9t8+685M6pxjIBaCNclPuKP/52hYJf7A9f4KupRmj2e35ocYa1MEvdd
	 vfI8pE0o0SmQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B294E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173655035361.26163.15934890924287301038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70addd0ce230aa724917ac85f8ec8bb360d7e5fc57c29f9f2fc659c7151709c1
Date: Fri, 10 Jan 2025 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736550353
