Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E8D2DB7B8
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788049834; cv=none; b=kLblUIh9fXNYF4Gb5tlQWGiK6/Wng5ojlVT+2fHA2+oUx7ZkU/ZCPuuBV4UZxJT9vzR5u3fO5aE/Ls6LX1RkzBV3I6/buAnEhAhd78s91git7bc4xHSDSYiL2sJ4muwWTqmzLdJkYfsc11SqAcAs21QzJIlLcgxlxcWm3obGbMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788049834; c=relaxed/simple;
	bh=EREVwLZ4BTKiGGQh1UiIZmv5uEyCP9IXcj68Yvm9Vqc=;
	h=To:Subject:From:Message-Id:Date; b=nTlZE44Z4wuJnk+Eqy/mESCQa/cWk2F5QMgyZtMX4uyPE+/E8b9vt4dkUgiwFfkOn3UF5Id6Oh7DzuVJnDTRknVRCtPZtqSzBFMWVYgBoCjtatCvZNHwfSVjO31B14yhrqRBE+evMi/fsc3/jokg1+5pSXPAT0pCC/nbHb3Qxxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PO4D3tNj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PO4D3tNj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2615C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788049833;
	bh=EREVwLZ4BTKiGGQh1UiIZmv5uEyCP9IXcj68Yvm9Vqc=;
	h=To:Subject:From:Date:From;
	b=PO4D3tNjNyyILHqlLyJe5egP8+qT7DONVAquag3MDIiAHtYXSbcAoHPxLPfbAF2Li
	 mfHgc3aftjj+P7XjdYIXjU7lGEDpwDB7hRQ/E/N6fVDHtkd3qM7AFXDPMMkfe8dgWV
	 JWEEQ7VaysVC44Rdo7+hBx8tq054kSFpfTpdQPiz1jAiv5ZO3Kg95C1qWKQCto3oUl
	 Z8D6upsAWgBS39V7lM0C6Z3mo8ICPqtJWpH/t2LVHtQaoeB7ptT9Pg6buX3uT1J66G
	 3g3UHL/TLBLPM8tHNo9M319H3XU31vrU0nV2a24TluwllsY/uKYFdLGWjcZuaCcpxL
	 TCIZobvQQVW8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE49C61DDE
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178804983369.1321.16814892931541751406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4966e8a643b74691dfa9236a1214db2e93d2242ed5d864e5a55e045620847297
Date: Sun, 30 Aug 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788049833
