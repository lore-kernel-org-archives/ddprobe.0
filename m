Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C97E271443
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753257595; cv=none; b=BaSRP33qZUFswucaiSyqhUZ9TunjLLHuTKseTlxUMuuZR7R0bek3P7AJf2JEj60gBln9upAtT0eNlOzzuHeUDwcxbe0+YMlH+ffGWIWx/dpdtVM17PWH3HrCCyjKaPxn1Q3Pk2Fpqgzkl/OGneOeQeoErnPukImFjG4R5SqWbu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753257595; c=relaxed/simple;
	bh=O/WIZ4OX0H6pw3h1FP6li2Ls2159rY7wwwpsPhIt7XM=;
	h=To:Subject:From:Message-Id:Date; b=geLrroDymunjUYXJQ7yZt649h1YNJAI8e0n59wSdD+7xfxnlSwWLyq8EuYj1GV3ADvWWV1v5IX/IIDZGrRC28TUgIiSvnL6/FPZhtOXrtq3gbUElVlIb9hGszKHHDdDFwz+U4uAUgj+N6r6nb2KUisZO0iOjG+d6Rs0c9/k+gDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WpC1HpZk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WpC1HpZk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E374C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753257593;
	bh=O/WIZ4OX0H6pw3h1FP6li2Ls2159rY7wwwpsPhIt7XM=;
	h=To:Subject:From:Date:From;
	b=WpC1HpZkTh9UZv4++C1Fmun3GE700UOHbw1TQ4oXBQMBuNe4jNGSaupXJV4DS0D5J
	 2wUzOl4sWuBDxIv7HyYrKsmKyOOkpTJDo+35t/fhJ4nMPIFiC0sKvR2y0CMqslrF/S
	 IXBdh31k8bDykb9s2BnSQzjrq+0rBBnAFLO7OuTLbIZ3nuBBqKktwS3r11jmTRrNKI
	 gELku91XEktRPKH4rqAX3dWb7eZxMVs+QBcTzkCPU5w89hn1WW5Dd3ldeBXdo27NY2
	 MXC00ugg0mmvFsunB7CVql4m6qdwjUUau6zASCXTDHT1xGsO82zGKQ4IICoPW813qW
	 EnBU/MAha+iaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3A4C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175325759357.20896.11098905813003590517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72f8f5a0ce131b4dec2d54de58199a211e85e45a7cd27a867bdc8ec2f076a676
Date: Wed, 23 Jul 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753257593
