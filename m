Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40EEE374E40
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788336634; cv=none; b=QByVpx4o9lTWONFznP4yLI7jeh48kPhgzuU0T2ZiS6eLb7dwU/XsOGtC9/KRNvCI0vh8krdz2XumTsnaYBzFf51Yq4X9X9VE60jbg3iiW5gQXh21lWAQvtnZ1D1RHfp19K0bgNOzhEU8wQUOm2MNZq2I35E/8R3zk4s1fjo4gMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788336634; c=relaxed/simple;
	bh=JvtTwwZbjODMIeWQXyJ3C1Wb1jZ9P4J2qfboEXH/OpU=;
	h=To:Subject:From:Message-Id:Date; b=hXXoC3iDzpV1x0dx0kEKdK32QNLiaAnGwYk80/mFdbKabqJPATtoU2rDpSp44oiAvBro4nlnVj5Tu3uECtw2n4CO/v6Z3wWg9H5jd8uwUQPUaqLlz3rssj5tvyQtOrMlSw+Vxv8P9SkSDuiGd+EK5hZdjiS40iFuMi2QEJi1ECs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DywPAuO5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DywPAuO5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5ADC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788336633;
	bh=JvtTwwZbjODMIeWQXyJ3C1Wb1jZ9P4J2qfboEXH/OpU=;
	h=To:Subject:From:Date:From;
	b=DywPAuO5GLDeBjzP3GT8y+CyDMqQrWxuY7Pn/uLvgb9iLj15ma0nUktnjNLbnsdbm
	 1GCnTsvbGRabafCS/Xcz4xzj9iufHX7uG247Q/aYVK/WrgBZkTrF8+BgypylykQVNj
	 wEgHhcIx8jmuF+TQ9Yl7Irm52FMV7g6XjB4YbJYftOvka9MRqg70i697PClUAWw/rb
	 kkHCvbI+ZQfh2qCAO+joaeGlRQ7G1ufigzVr2UBshdQ/a/cRu77dtsO7/Q9MLzZ5pg
	 fyRNqL4RHxb+aUafKglWeirVFoXShswXJXuCLid4qKJYme52O8Q7We1vczY+Ufoqrg
	 tVlIiGAicFwHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAB6C61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178833663369.9313.13974922203702385664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efc4d77b3590038af69373726dbdd97d68106e6998d619fcba385a22806eb57e
Date: Wed, 02 Sep 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788336633
