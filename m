Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316402E11D2
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749951594; cv=none; b=BGzzC7qMpVlm72Tlebzb7zwFyPMvKzOB+mFqeE3hpd2G+YAsWQqmxYhI6K6moR5+nGcJyYKcXgDa8RWqlCa3wBtIEO5gnuWNNbhcH51pPnYiLMr+CcevZ0ugYojTg39szEkN3LTXcjP3NFjxEpLesarAvdgfmFsnnTIaULHL2nQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749951594; c=relaxed/simple;
	bh=uw2Dtygm2doPXPy9j6eYPy69OFv83Im6iwC5jZzuXZA=;
	h=To:Subject:From:Message-Id:Date; b=H0AQhfzoTe26w2XX2caB94oh8EiVrPKZEHQe58BFb0ZzimbEm78JgyeYZ1JWb4u79y61klyZ9tUNkedJd14FO7BmE9C/YmjYwaY3YyMqus2zeB7/05Vtuz3VfdQ5O7z7Cxnl9nDWfrSnEGblATIxz3YGjs/LpVRdCk6glPbhpiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PRoJYQ+C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PRoJYQ+C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB52CC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749951593;
	bh=uw2Dtygm2doPXPy9j6eYPy69OFv83Im6iwC5jZzuXZA=;
	h=To:Subject:From:Date:From;
	b=PRoJYQ+CYwNTNgEgTAwOQJixYpxHkjdFVxLXqkAfas9wAWlT6vaDcI0OyJmUgVPwq
	 xD/UaQ5KjZmUIudeM8+EAdxkNNyUsxB04AxSvFIGYbBpIqvvbIQ+Eqpfp0eSNxwcQu
	 eIe1A8dcyKxCT8VIkH9V8vxsiGnyVcdgs437PCieTd9q6nUlkrVKOV/amD5w41cxyS
	 2ocdFPb/O6Y69fXbjyUASgSxvZjgy6RrXK3Hre2+LQ2/UE2xx1qwNyAp3TQ7IsfZ28
	 sfxX03qvRHkOhvCG2ErVvY7Seis4RKf4Uzcs/hyf1CAgyiJnHUe0PlB1wa6TZd/NGP
	 Se1jdufuLgosQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98658C71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174995159358.1405.3908141790359744870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ad562b99562a67a37682fb9e26c4ace6e5610f99e64d3042035005cae867b35
Date: Sun, 15 Jun 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749951593
