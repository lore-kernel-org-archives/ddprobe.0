Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370402C178D
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756320594; cv=none; b=KqppKaFoPYE8mKxOmEyApnSNGSMPuIR21iUrnDDffvTOxXQhcHNGtGwhADvySdm+5nlKPbJsShTr2i4OTy3KnbyXH7HGAollv/Qdetnsi7F3RQV5D/w4RwXOoyGaqO7BURWMSuMsryo0dxIVZ5Tv8OtcUA6K7MuJr2QDh++0om4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756320594; c=relaxed/simple;
	bh=6BpYUnGX+xcZMIa7E7a/Q/AqorV8JBOkguuwOR8KI1Y=;
	h=To:Subject:From:Message-Id:Date; b=UeAhLFGPo0NYJ7QIv/4dZ1f49fPuBadq+PYNPy+fx1wdKSNAzXYAgFLW5Kmmgi+hkuYs6I+c5aEvqJfL67NEXsAORibLT0G5UzPcZWQsMvMvB+qJ3yfVbekOnxbwiAcrlr2Ah5vMtsnyNIoW8M1qq0vaNJvflIkBLGKDYHKG2ZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EAS6v4JD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EAS6v4JD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB7DC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756320593;
	bh=6BpYUnGX+xcZMIa7E7a/Q/AqorV8JBOkguuwOR8KI1Y=;
	h=To:Subject:From:Date:From;
	b=EAS6v4JD6r3on6Br9XkbVNtmSjszg6Bd/l1pSIkenJLWbqS48uFeyTrcqMjobLbgW
	 s16w1E6X0BIonmxjCCm3ajfPGGU3J+s9qIZYvupxXaDgxDV2w7wVZdY1pZnHhtbjFg
	 vTZF43fZjTXlwdv7iC58rx6RklTQXfMtHA0HlDFFjHvtfG9/0YxBzWlNVYXgdvyNe6
	 mp/Gnua/W5HSQkt+w8NJRorJJatHHLQcU6W74MtU4E8H8CKAI7RnZkiO+6xId0vYhh
	 XiJuKauyoTLpHzHT4SZrV9J0iW+Qp0CllPRa8sUl5cCnVgtGj2+lX41bBS7jpprJ/1
	 ginPT7bqEbjKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D65DCA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175632059360.12649.7015405130341112777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a38a1fb03528ff001bf47d0cd6700c9d9f4f0ac0f089e1c8962735a43eda77f
Date: Wed, 27 Aug 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756320593
