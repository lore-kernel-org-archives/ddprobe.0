Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E323197552
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733746554; cv=none; b=N0IxRAuAvBByK7faeLO5rnPK3ZZv0ViUAPoPmMqv7MAWNG+VaKXH3VuHkn4KnpfonjdBnVX5FEB4YDmcFKkimausgJJ7gPxs5jna6Nh/q6LDPavy9fkIARkCTUpdyWDTx9yNmT+A2rNFtxwma5ysZJlXmVwrD4XkiEnO5R4kkb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733746554; c=relaxed/simple;
	bh=EAqghP9rH7wjEtVfUqYNQj6K1Jvbm7yjJjFqfqFJlOs=;
	h=To:Subject:From:Message-Id:Date; b=rQOlN8jSjhC3g+uqzUQA7vNmcrOL/UgKrF+MKmIZCar0duRe4VIwIqa4D2hBnjbVXzR9sezUMQ16kDNBNPTeUisN2OVai27qeeYResgBSK69MfLMnJNDx76YAFRUg1wWIh76usV4HvIf/oYS3Up5EIoandtnN+VA5nzct9a2SQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=okxqJUy9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="okxqJUy9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4F9C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733746553;
	bh=EAqghP9rH7wjEtVfUqYNQj6K1Jvbm7yjJjFqfqFJlOs=;
	h=To:Subject:From:Date:From;
	b=okxqJUy9/TLtpKVzNRxVPo9g2ZFRXDiqgfi4wO6SjEiLbNss1nfWHw8fWhQCyKIxC
	 y5dEDc7RJaskEP3xl71aeVRwStyRLIrqnHkZHegd4HfoKk9cZYqidqh/WupFG4Tpqc
	 O4m+u0hbb2buf/pc1hjYrJppvPm4mMHTfEJnXfrUOf7x7YHa+p13yFs5YXE0ijGu0n
	 g58iUPwLQR1+MWanZTYn4nQbYXKBxKA7ax/11dG+gp0IzRbALKt1C/dud82dtSN5Ek
	 98cyauph3tjwo2ZCTGS4588QFkgFrh6MrzrfKvqMdnHQk/Iy68zkYkIUjsPRh7Wakv
	 mzddLkmitemcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955B4E7717D
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173374655359.15487.5786988683493323152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 156e719b85a713781014263ac900a8c0ffbfba580a9083f5a03e9249b08fc773
Date: Mon, 09 Dec 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733746553
