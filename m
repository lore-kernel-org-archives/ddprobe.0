Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A232328B76
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 01:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768526034; cv=none; b=rfgWtyiQswpBUYmydD0O3oneW+yt0V4NO6h3P+fC+Qg9M1joT6ekuKD4Q6bnfK00HodCodCA8uTgNo9yZO8TJfTtvVpt7xiFUGh0z1iBIPWI0/VPQLA+SElEGJ6aOWD5soqkOD+e+eXxcJLbhfCpmQ1B/pC4yAudXK1I7lOjET8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768526034; c=relaxed/simple;
	bh=2+Zq0s+cSQNRxxieDYc7DA3mwYcYn4W2QWXcYaql2SM=;
	h=To:Subject:From:Message-Id:Date; b=ihssVi9fFUprOpi+op2cTeCV3g/OwstmECTKpddl7P2X85emj5udHF3ZuZWOVGLkHzRfnhDj6nCXsOyWB4KdOELvMpBXI8MjEPmHaHEbnsf2OlsDXo73tRDLI+EZYB3Sije66E/OpL3EoCovljigyJsNx6xDTyKlrdkkxldbEkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qui/9hE3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qui/9hE3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8B7C116D0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768526033;
	bh=2+Zq0s+cSQNRxxieDYc7DA3mwYcYn4W2QWXcYaql2SM=;
	h=To:Subject:From:Date:From;
	b=qui/9hE3tMzEPwDwkaplwga1WSL9+oB1xuPU6Wttm/7q9gvoTN4JJ0jNlhZu+CxEh
	 /GU440o1b9tSKzpKCkrK+OOW+Om2he1IQEzbe4/bMDFe3k+HSfpa8Ah1C+Qn/3ejaq
	 CXAeevIINYj5ubeTvR4s4ZER7nnjbg62iD0k1ZXDYQklYVSDtP3wqORTafwRcwH+xI
	 rG8yMXt8teobuCkgnhJWAhu+KypPIgZcZEiqStHrkHvq/ZszR9LKq493zBThHtjWZy
	 rfo7swqJzVRz4xxB3f7h2N3hOZShwutyTEccJ1haQ2WxVzbXAAPrQIaoe8vg912orj
	 A/2cpMlx8VCpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909B2D47CA4
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176852603358.32566.11639652375593084550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c2883cb1c0cfb330cd3ceef3a7f232ebac848b82117199ef94146b66c595333
Date: Fri, 16 Jan 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768526033
