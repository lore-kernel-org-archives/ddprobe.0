Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 514173FF1B8
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 06:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780640074; cv=none; b=Kgu08Dwxg4WTIebahNRM/QnjApfLqH3AAB+Tp4lEI+aom+AjZiMSAfCCS/L4mT3WSW2hf4p1VjvOW1vmcHp9cF0Yq36199JXXac6asI9/OMbDTLqTe+hvpIuxjM3Ze/BVsi1aMWbaTraSDS9ycOePXX2OKlKUhDQiFgQAZ5GLzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780640074; c=relaxed/simple;
	bh=wFXdbRUvf76lsQOXXbzUq1Aaf7W3EnPbPTKTQ/PyJkg=;
	h=To:Subject:From:Message-Id:Date; b=e2bl86kylrLPtEogMm2h3nFtOAFj0asBn8gVOQhscHU5DKUCMLfJg1gbN1YvF9iulljoJDyCzT0UJiu+zMivP1kcdpZOsQJ7uk697jeDbnqXDqI0PwFKsGbKkeve5M8tFlvmC0Cid9fnfvAq026/5NCAmjSQFBblKfBtnlhX8kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A46a9oKt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A46a9oKt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B78C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 06:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780640073;
	bh=wFXdbRUvf76lsQOXXbzUq1Aaf7W3EnPbPTKTQ/PyJkg=;
	h=To:Subject:From:Date:From;
	b=A46a9oKtaGHJyg5Vg863hVsn8NrB/c7GVAh2HqxBGapLKTuHJKcJZbn6f79mrApkc
	 oSTVeiiwab0M17YQOIdfVkFZeVayo3KPXIRTacXoQhXKz2sRcDyn7V9lQRS8FTwtXQ
	 VAJXCAO0ZrIzZ/GziQhMcWcKsjXFUfbsqT5XjdaXYgI7WDTH9K6Q++8PH4TAo5UaGm
	 +C02Ds2wPj2aXg5JL25CdpIix08Rv+m1jSOrHIA7Wu4K+2E6Hh7UAvHf1KsQuCY8ke
	 5+H6JDpbOuM/quzwaVYD1+P8y+YW56MDJvS3FC8GQb2dioxd6WPe/j8rguFSjXrZzI
	 kYfRc9FJX+Uwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF75CD6E74
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 06:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178064007374.16645.5892862111872447871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b8b8d2907b14af44516700507bfc1373484e0c6faa06ae7c9d0d74d81ad596b
Date: Fri, 05 Jun 2026 06:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780640073
