Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA1A3AAF54
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785344434; cv=none; b=i4U+G5ayZOqBqkrhcQToQGTdBH7kw4K4lSERFV/ITb6bunUwP5gIg1gvhE/EgOUDRNzlFfTFfNqAZ/sL+yjR0NLE8aHm8k5A0rhgGaJ3ry8hloyWpnE3AvSFtOnaPPAlh/8Lj9MZ0z3uqOwq6FKHewROcgFMqfnKZkoQfnJ3JSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785344434; c=relaxed/simple;
	bh=bHtOyqJafstkUkM3HQo/sivd38zf5ugwhwA0dd9EzP8=;
	h=To:Subject:From:Message-Id:Date; b=WF8yhLOqhthyoW+Wx8Xiq3IUG7ArNMToPBqbOBNzPaqu65DNUQTeGtU0SjLv/B7kiqIAQLZ/K0b9lwUJOU2OThBY3pVrzsSe2MYMzFuDKtWIdNb4mPwSCSCuqnX1sUdNCb+XPhDH+HlQNtau1j6xFp5WRpGZJ1VXq1mkaLj5gVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d6QwfZRE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d6QwfZRE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C1CC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785344433;
	bh=bHtOyqJafstkUkM3HQo/sivd38zf5ugwhwA0dd9EzP8=;
	h=To:Subject:From:Date:From;
	b=d6QwfZREGsYo6p3wcoUYNYjaDQipuK/TFibwMgUlMbTEc5cR3qpvl9hM+0o6AO1Q+
	 AA8R/cOCQh+h3ZqeuTSH4qP/dvkAgaJlB3CGPgapi3CGer0maNAIZNgp9SIZrmyD62
	 2DjSk7sEC/6QYoZMNVa0i5CMxg/cLUQJplafhZlowz0REhQk3KzNHOwbhHK/vXzOll
	 EcuDeqITb8rUYT5goAQfDcpGHN/wJObNXpt3oDmP9Ub1VXtlIkkRScQDPVzF9PEWve
	 RPT3gjGVZos35Un4jEOh1oDDlrhFTrfaxZ22Oc/vc2kNh/gL39ePcykXE4QvuWu+X0
	 N1Qi9ReDfLxBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC536C53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178534443368.5088.10374660085047204853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beb61fcdfe8205cef1470a1c7fdd00c2d203c3e13bd0e829acfdda753d2281b0
Date: Wed, 29 Jul 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785344433
