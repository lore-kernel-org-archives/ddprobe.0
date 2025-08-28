Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD3015665C
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756398594; cv=none; b=BAqlWHl6prfVdxCqJhm02TLe+5aDNgmG+JAluOGvXyQuwy58bjmU++dZaB+l+47jz+VOY0B8oc5slL+j+fjv/1u/c43uJnUQNzf7fgqpObatD0lrQcJCNLpSgzHJ9EutVTliRonlbRkbTDJw1m41UEVoz0R3ducYDyo1FvKexT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756398594; c=relaxed/simple;
	bh=4VRaCG2WFZYU3ygOFBvRPtkenW25rYeTRMYS2ZH1zDA=;
	h=To:Subject:From:Message-Id:Date; b=hMMiKGqsaKnwmgFJfejfmlMvnBpMRU6ZvSJHD7SUWhliABqFLPKYGgML8KffX3RW1l6waaO+t4uSu5hIwUFc16UKBjrSsEAK6IwUuOQBuGYKZ3C3eAPflOGAxw0JxwOKtCt0DJbm9binhncfnjwbF/A7xWMsLJtj+VBAtay/Cuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rdWUaRjG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rdWUaRjG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03A1C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756398593;
	bh=4VRaCG2WFZYU3ygOFBvRPtkenW25rYeTRMYS2ZH1zDA=;
	h=To:Subject:From:Date:From;
	b=rdWUaRjGY1KzEKwiWt8M6I9rGmx/zIHm87nfvJf82UQfyVhppiuXWVIcMRRDMFu48
	 TJrztzpBOaVBiTqQRKbAaJ3hHA8zA6cHpSmsYf3x88uatT+zFPO1SqDj1DjUugGaWm
	 8hoPaugDm+mP5gOsT7l/kDH5ZuqalU0M/LCuUR1WKVP/oD0WRLdp5ksdVbpSsufoN9
	 1Ey/THfw8v3rNrw24svs3f7RlUwig8/35AfDM3tNOxZ2sxKOkqrlcepsLGfvryDINv
	 QvZ5qhZqMptkDVGdmWuKAnegYEpngrDG5K8xDvh2s3eAqgVamcU0FfV8em+XvKgBcg
	 W5prMZJydrGWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8F7CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175639859357.28937.1483646431349119437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a717d616c3570f8a55def12c2a02dea8038a41f2b8b7fe0d9e8681696131810
Date: Thu, 28 Aug 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756398593
