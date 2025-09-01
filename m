Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F33E1C8604
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756702194; cv=none; b=ENZJwgWyKvS7RdOU+AetCMiDtzhdnyVR3QuoPQbsejKXT/cHodbBtwV/iAXszmqM7+aCtIdDrGdhmYSTHRs4m6uyBe+nsCjYGKvBrM+SMr8c98y3go29VknX+P7uZPfeA7zR9UDTWtCxdia7HaXuLIzp/HpMTJ8o5YL1VT0hXmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756702194; c=relaxed/simple;
	bh=gTVglPhxezB4gY/f/N2zeCWmZhlYwyuIZXIQ6JomKRs=;
	h=To:Subject:From:Message-Id:Date; b=LDx5oxeiNHJR9bH15z96PZ5qV8apzXx09wSlwOCbhCiWip6UHpVXlnUN05cmNvunW/exKF4K23V8pC/58Ninc/HPQgONVLKg0JgCno7p904R2ZY5x5MHfh3vXT+zKCy1ARcGmDh7t83Cw8qJ5z1YBITO0JIxsY/t1rXFeGf1A/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KrPk4WGE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KrPk4WGE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5ABAC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756702193;
	bh=gTVglPhxezB4gY/f/N2zeCWmZhlYwyuIZXIQ6JomKRs=;
	h=To:Subject:From:Date:From;
	b=KrPk4WGEMvi2im3yZGOvpr/MInBBzsSa5Vbt0Vlv9gx9fIdMmf8bO3VXS0Ku6AsIm
	 jil741nxq/ps29WOi1ctj99qtleXB1TL1L6MwwUyjJwe9q2pbY7Y93758aelkXEg8h
	 Pv1/gQux8PsypxHG2JiY26G5i7qRpJHutGRlJmBM+Hx5uiAkqcs6sMXx75J+Qr1S2U
	 WrfzjbnwEWRUP2cQFSgtA15sKgIM22Cn+G04Y2GP7yOVjdiaUoRuP67i7arrc3RzwR
	 aws3TAfi/fmru1ncU7YkQEtMxnaMsZ8O4CxjGWKZAcsrHkY/PsdZSsJ4qcgDZzHHmW
	 cl1ARWYXb/cYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913F4CA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175670219357.17000.12577458309450864379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bad49391f85ce1677e8d202516419bfc39496fbb487e1837900ab65c1e58616
Date: Mon, 01 Sep 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756702193
