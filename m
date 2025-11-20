Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D6F29BD81
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 21:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763673114; cv=none; b=LV7mPhFgbmE1gnAkQQVDTPq3bfA8p1ciqrnMSSSRuJknhML6lb/rBIb/uEFXhsBL8vjxdBxWm2/w7BpjinCoxgXGozkJ8Tn63w+f63ni54D4QShEDGerwi1P3FO8OtNhAs4j8rms4MYh9EhB5YZh6f4MBWdXyYFZ8zrtfntjON0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763673114; c=relaxed/simple;
	bh=nnfP4YWIEOiPSn+nDXLtaY338H4YDBIgMb2qvMYOGMo=;
	h=To:Subject:From:Message-Id:Date; b=MgDNJXAbS/kIgKJ9Mx2Lv+9mSwrKWSxZgcg9n3vBVorOHaB8X/ZDecUIrV4+ppvu3SBkhS0R7m3qvdSlnEtHFkzjgy8Ekzd2CR/3ea/mXEFXcsAufG/FHmifZ5o7HWHwJ2Dez236U+0jWhIhU4Jgbqsshn1plT0SmT2F8kvxA/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o7BvzOed; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o7BvzOed"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88D4C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 21:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763673113;
	bh=nnfP4YWIEOiPSn+nDXLtaY338H4YDBIgMb2qvMYOGMo=;
	h=To:Subject:From:Date:From;
	b=o7BvzOednEPH0aQTq5caW31JmCXhQYm7xeGSf5aCMOQkZEefuWpJAVYELVZuHbwHV
	 Lec84+JgqKPY4Ap6ViRmHtMxRosAHCkKRn4N6Y+F1p7dpdfKavHBWojhf9swE9t17u
	 YMa+MjhRDUsvJKTloDtaJCSp7aHtp+HZjyRbP9nKJqsZsNS+0yhoOrjtT1gSqPQcF8
	 7oAjr5ppEfwSdAym50nFK85jQtKWWx/77XjuGK7YF6iv7NnbmuO21OW4kLPeMUA1aR
	 PCqZkUIy2cEhbzNUHiXhiu3so4pilulxdbkznQ1JZ/MW4LYr90HwKFr/hCchday8Tk
	 m2umTbIpmaK9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96329CFA447
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 21:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176367311360.14751.13342069292924498027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fda5711a880f267f18e765e417e6c71ce626df36c3fcf88e15ff43b64489f45d
Date: Thu, 20 Nov 2025 21:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763673113
