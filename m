Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4DD223506E
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752177594; cv=none; b=PaAPzj7jurYfOsyQjb7JWOwiKRIa4lHI1VD0TnU1xrasol7AWyclUPc41gXqW9AHNM9FxxMpJAavETlk8vO4sGym7P6qJ3nlVyqbqeNmVXaTQHBCx2Q5J6RWE2jn8Fo/A/s3RNegwa0jppXFJpgV6chPkNhV+DCdgl1Lbj7mKHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752177594; c=relaxed/simple;
	bh=DPMZ+nFFHft+o5B42cKCybUAyGX/ZaCY3EP0is5qsv4=;
	h=To:Subject:From:Message-Id:Date; b=mLN83Nzi1teIa6FksXJARZDGjisRTE0hXI2/DrS8yrynC31Di3Ak9AtFjMcRyqejgjNIXGxn+Ffvx/ZFAb4UW8ei1PWTvBgRK17vClrsiZD1MN4dkh5yoqcG97Q4Adgt5TVQF+SmEK8oz758jednjW8VqNohM39TbncZeeZSoi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgNsVooX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgNsVooX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E81C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752177593;
	bh=DPMZ+nFFHft+o5B42cKCybUAyGX/ZaCY3EP0is5qsv4=;
	h=To:Subject:From:Date:From;
	b=cgNsVooX5ojyESG44EFXsnRVwdifqaRhxym4JykMg/gX+Ou4w1KmHX+F8oRiRTCwC
	 TflQRx5o+We8QlcXBw+H4eDCnqYMnHh8FVZ2e6xdu6uAJrA1XG0rBlMVwcJiyBO4+x
	 4BEQ6AAJU6QOh9NG6+8iOyk5VSbmFPcQRP5rNylpwx4sxURcMjs56fdyF8WEch/xXJ
	 f6NUYlinj7nopfgA3rZDwJHnXkiCMWlxNzZpZ3N0/k/JE+MMQ2zC5OPp5G2dWRlzEC
	 tt3Ycef9Y6aMNe2CyqwgFUHLoaxigVtFDooo9Ww+wyLRBUJhmWtTCNM3/YwyAy0QI9
	 jpoj6/HPjswkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1731C83F20
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175217759365.20647.11574801616382502815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45cc966f14057f600ab7ce7d5537589236e48f26a0df610c9fbc871214d0437a
Date: Thu, 10 Jul 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752177593
