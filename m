Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 058E02F3C37
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767204234; cv=none; b=Q4U6yzdCKLgNBhDD2wwoJT6Qp3wIUBIcrMThR9++6Y8hGhYrZZB4SpyIMe1Z1ZsG2RnOpu6sl7F8eluHd+1OGvx06fI9Vejdtl9IOu74DVd2SP2q5Ti7OsV7un69W9QAshmNUn8zjC/kvnwC/Z1SB8oG1Cd5n1OuUZIsJ6d079w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767204234; c=relaxed/simple;
	bh=KjQA65SdS6h6j5405XBFndLMroH54FOl3xjmP0mhUmU=;
	h=To:Subject:From:Message-Id:Date; b=KwD/ZTcKcHiNnfsFWE8eLiL6H9BXQAlL0ZjCJYRiBhMRA3YElfYc//+jsJXitqFqlN28vX5bmmn8dPIijv52hr4I0/KgTeuoER1yLqlnZWmB7iYac1cJDdw1JLXfx46DAc3xKp8GkmBo0nlDfLogL70Z8ajDLS1K1RgprXuzNs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUuAyJSF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUuAyJSF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EFCC113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767204233;
	bh=KjQA65SdS6h6j5405XBFndLMroH54FOl3xjmP0mhUmU=;
	h=To:Subject:From:Date:From;
	b=AUuAyJSF4QUCa7nE3MoWNzAfBCsOwPN/H2RaFJj/ko1JTIY4K7mQxO0dAmMozQViC
	 qqtXHjRvf9P+AyKSv8ArMLtr1B/HILD/a+Ht74ZkcJRxDF4NtYnUdCnnbRku4RNwot
	 rV1JTC4zKMCDRz2I0AlCHhm83Koyw27Tkg16aYsXf+MKlzWNVtMrFjF/Fih8mveQX+
	 77WCZxMyUE08zTf4eYwqvR2XTkfiKNQ6tXJZ0Mt3vs3RVsj7kOlp0oLm4fAWrcpitZ
	 z0fNZepaDN77lDT3Pj3ohjAK7HYtU09CTEhe8GJ0zTwm+mRx7QlrvBzl+Neu9TDwk6
	 xkqria6XMLp5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9496BEE645A
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176720423358.28439.8979718467025262960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 707632392499c025e66bbe53547c313c3f50a657b5eab7cb5af7ebde1da4e3ca
Date: Wed, 31 Dec 2025 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767204233
