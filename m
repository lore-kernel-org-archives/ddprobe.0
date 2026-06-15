Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F01E339853
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 23:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781564794; cv=none; b=Dm6xcy3L7FrGh3CnjiuQr4/srVgGznh1ZQAYZu5hUDkgz/oN4MRlz0kYCs/SGYpgqD2QahhkXrndxMvythr75U2SLMWYo4UNxP2bSqZ0e0MCc6XRNrTfma+mDWdGhFahydFL9mgn1K8xuiCErM4ymY3JDGYMltlHSgw361orBXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781564794; c=relaxed/simple;
	bh=Xz2kKviZO4MSGO3Usc1j89W155CNfWmwNI05dqAOzp0=;
	h=To:Subject:From:Message-Id:Date; b=qsp4pE9SEVuOy11XAF5fF6BOyrWDMDeG4l07UReY7NGZTAB03e2tDwYuuxY2Ttd7c+wy0IADwjvMTlz3v6FYIyc1D1k3Do4c8jyQI3toFQZaRH/fBYwn8+2c5HJXWK6Nr1HlGiztDSmESE19CunIky5M6D/GcLlyCQIdxRDbR+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T62dvo7d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T62dvo7d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5EF8C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 23:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781564793;
	bh=Xz2kKviZO4MSGO3Usc1j89W155CNfWmwNI05dqAOzp0=;
	h=To:Subject:From:Date:From;
	b=T62dvo7dAYlcFJ0EvTRCWwF4Q5w+iUQFjgNLjsgL4RMHVUHS0EaGANx0ulr7crCOQ
	 BySOkJ3o8DzEbgTQsnWqm1C119wslm9Wv4kLJK/C20+lEfCTBPBslrpPssz+baQwpc
	 2y1LJ/x4Pm6DpYgAnBbyQmd9mhi1uivu/YNfp4Vqgs/8bCpJ2M/t34tvt0+CbRYhzv
	 FfvJPZJOqpVXZ7nRYzoWRM3ju35/9AkJys6Jp5f1PpZ1U3U6FybY3tCBcehfnmLx8v
	 0eMbYGHz20U/ZPT/ZoTC5fqI1a0D5Z3+YSW6PbZ+4OMzYgtoegTBw1HfoIibsZA4hn
	 zImh4RkKNAo4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C85CD98CE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 23:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178156479372.12760.14195650797835032959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cb047f74db69ded15bab624b8c2d47c197d81d25a6c995f574d84aab5bd1fbb
Date: Mon, 15 Jun 2026 23:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781564793
