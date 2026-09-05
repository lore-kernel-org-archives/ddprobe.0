Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB804371876
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788615034; cv=none; b=FMcXbPJV4iK0ltN8xWq82q/WLF15huxAfRcqyuN4JRrdhhv1Ggi5SWzuSU85qI4A43C5eIFcujwt+dY5suwxk4GiBcyK39svU1K9J67jLnpH/A4dlKbzdZ8C2qIGfaBoECk4u3lAJ4cJSsZ5jEydlI6gC/iYNmxaB6dlS5PM/Bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788615034; c=relaxed/simple;
	bh=32/jZ8u/5Lr6i7T6NEla1KeerKGHPCwHWfIyqiYQwew=;
	h=To:Subject:From:Message-Id:Date; b=Wz5dXNnqtFvaavsxxzdhdlS1ocHkjBgJ+gS4oBVgsm+OK9+iUm1V4KZSrRb6u1qoxb2LtauZ/2ONZl7pI4vY9rY133IeIKKlyfBMMtyVENiyC0QU+kwFa0pe8Ujhf1P/mKuysrFD+hUzzof2WqH4eewGfduiMBR5j8T+qEYU7NE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q07LHC/J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q07LHC/J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD620C2BCF5
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788615033;
	bh=32/jZ8u/5Lr6i7T6NEla1KeerKGHPCwHWfIyqiYQwew=;
	h=To:Subject:From:Date:From;
	b=q07LHC/J8jjlFUbV5K6JLfu4sPMnw9hdvCztSyri5VUGAR4NAHeBRpf8DU31jbouO
	 m8DAUD5AZuslFSwR0G5Lqg5kTwdGlObYjiQarvcbHp9PJYDEDHYBgUeUrIZy2KhRXT
	 UtTx9tYM8EJ79Xmk8ZktE+i+t9t7KFIIdD+xyGal7xrUnvT35EZl9lYdbh4mKqdadF
	 XYzUnTcKJDccJYXzNSgLohqpt2dEtFCt/z6CVuszxllQSJXcr+8onJQ+Pplz1XPikt
	 HEWZ690aGOBVv+xEDC505qUK0bu8t4JxN+mD1C7DiVU0537LtO+w5ht9mUR//gMVYr
	 1ZPembHIYpn+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA05C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178861503369.2369.11373002974613912107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5391a46bf2c878f418955edbcacbf80b8d1417fc9a3fbca0d70e5148e1eda29f
Date: Sat, 05 Sep 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788615033
