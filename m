Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 179EB1D5160
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757458194; cv=none; b=qsAN4WpiqqjwbrQ8CJ2yrGu0M3NpEyASKm3S6ZhP8GHRxh6N+V49QxFzLWroDRnZemr5B2xqV2XYCykCTEcWYwCTuoX4Z7H1GRiqab/i8wDBU2GADKNWunj/HYVWjXjsSorisdHJuWTh5TkK1C59a1CWYLtR1n5GdlVAbfnFztc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757458194; c=relaxed/simple;
	bh=LPLIZAAR2b61ycG6ScYkeCvH0nVAQOpqY5N6Lm8DRLg=;
	h=To:Subject:From:Message-Id:Date; b=O/erpvntXJo3w7ldQMQNraQj9coqDR1i/SZzCdIvNB7WSy2cmojzz8bFkqPoyZ5IMFS9X0HVhV4XzMmOVJzyDnxB3EP8YdU68kgHEZZO3mCni0p/p9H7AOtuCUp0okORsnP66Q06ZWdieumge3KXJhKuoWavTT0ZReMTduEpMjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rp9CNseJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rp9CNseJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C87C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757458193;
	bh=LPLIZAAR2b61ycG6ScYkeCvH0nVAQOpqY5N6Lm8DRLg=;
	h=To:Subject:From:Date:From;
	b=Rp9CNseJAw89uz7eby2zkD9Q8jJ0/ll+ocQbeEBEBRnSV96a0Mhy5ohMWQOERQMtt
	 OH8Gxf3XGLaxYS9umsjtXth8btsJvGwhB2RuLQqPWUePF/vieRqq2aEOr1l9Xi4dif
	 PJ4ywi7+WAvG5W1JSwxD8ckIZ3bFAlyz6UkH52TidLavLsbzFcci8bLJAjuKAR4e7Z
	 ym4q99Ox5to0p6m74f6nLCw9ajlgoa8cSkn6MyIqCY7jXLTGttJz4BZ2U4WA72/sKz
	 CMHNRVujz/JYP1cP7YYZr+d1nFuhg8/m3A3hyXOkb6l6LMmdDTaidFtodTBaBf2qXD
	 5chgjaFii4QhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94383CAC582
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175745819358.5131.7100298073399474293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2778edecb6f1ec9d6501a8e6cca7742d3ecfcfa97cace92ca609aeec135327dd
Date: Tue, 09 Sep 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757458193
