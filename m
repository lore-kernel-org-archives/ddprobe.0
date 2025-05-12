Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C35F3CF58
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747012794; cv=none; b=lJ9EeYG+bbB6OFRvLK+NsVC3rbii3GuvaRabiiAiNgDssPr17/IjvQlWh3AnmjQMqPknaNDaIn0A3+618wE/6BZYhCwudOGa/z9M9ogWfvMHyUwdmjeUrPfCGF/SIpFHcegli6PfCB3rTfa/u95DnnBf7H54FD8ky6IKbV5WiLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747012794; c=relaxed/simple;
	bh=wkGr/li8sBOoP4M0D7BylE4WKsikIriWaZ0Tz5dPkLE=;
	h=To:Subject:From:Message-Id:Date; b=dVHbdjRV7YH/docGoOI0eIWrccMLorLIFAIkT56B8Z2i9DGdW14qKdQdc4TGcbf2Jf3g39+GK15+5+MLBNfhoj6OwwzR/Uwj2GV/82WxTbhB7DVyKri1LLp/++MEtJ/f4I+GIkeGQ0yGvD3+UvWrn7513YDQnkq42Dr9fBW7LEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZBzmdexQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZBzmdexQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DB8C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747012793;
	bh=wkGr/li8sBOoP4M0D7BylE4WKsikIriWaZ0Tz5dPkLE=;
	h=To:Subject:From:Date:From;
	b=ZBzmdexQr+/EtnBOaH4DWL6nn6qklmh+klejURbWDxjJlbpyWRJU4Q601o/BDmzKS
	 n3uLDv8pHyFegccYcEG7Vp/wj4iKf6TICEdft+WOvuvcxRe30PvKNlk4Nk3PF30ag8
	 hs4Qf5ihI8hs+l7LC/w6RuU/e+uRfPwKGB11Vthi+lXoljnpDjSY/0dFvoJ5QhwQFL
	 3q+nL4V3Yb8uT9xeHiUoIKKZWv4qtu8BcVNER97F+IN6wHYUvjJ+UV+qdXKGUglrTr
	 qm2/11DqFR4BNfyjbxTkDX8AgyuuBa7wv4B8rujlXe3f64fnAKAW2kZHYj6A/k+HtP
	 9KwPBuvhfeedA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EFEC3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174701279358.4752.17234563709793138274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9c0028f4b503ce5e486732b71b2b3561142b300b9cecf977d2fa837631f1660
Date: Mon, 12 May 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747012793
