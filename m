Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B01C25C809
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754560794; cv=none; b=ulmb+eGda+Xs5jNx5Rqx590rBweNihUz9eZyvn0JmM5lt52Z7/vjLzXByVE10P96vdmueun1KAzdO4n3MkcH203kxgtrJH2naF+a4BuxFSZW0N2oFvkCIe5O2UlwAX+uePkt0jX9zNW2KjyLej/jHXxhmylxODPCia1R2m/FpxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754560794; c=relaxed/simple;
	bh=foPOrddvmKoKXEOOrQX42FXe1LxACbIxcRwOG0WEXhY=;
	h=To:Subject:From:Message-Id:Date; b=lredksztLlRG1os6wPNyVaGTtjNlDq/siUTA87q1go8gSjR/Jp6RPeoVNtgkjr79waNwr+JV7ejeIK0rID66v5E4rX61LCaJRVnRjYL+1yki6biQNGtuZ/02P33fyuplUJjcsjL+cJSiUyZFUCQaJXrmZXqz8QZwSR/Cj1hL1jA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fh4YdoAd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fh4YdoAd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4C1C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754560793;
	bh=foPOrddvmKoKXEOOrQX42FXe1LxACbIxcRwOG0WEXhY=;
	h=To:Subject:From:Date:From;
	b=fh4YdoAdsXYIrCEVTKGCRLXOINMyzMJA2Q8nKpzXDWcZbzcTEU8fKx92G654u439s
	 af5D3YNP2Y7LC2R32lYfFCTFYAWTROwo1QZMkKRPaO50CtK/OKCvXPaBBFohvEVwZ5
	 zR2xlqN/gAbbcbokpSeJQeacqUEWplX9TiOj23DiShuT6cuUJf9dspUtdRXd6OJ9WI
	 Db6FAZnsUQAQKkJSsU3m4QHhLDuyg/ZgNSJwEhT+zKal9SBd2CuaMdK3R2xpyOR1lR
	 k/MkzfpmEearX7gKjfKfCjD66bXgW+trMVmFAvDL90umomFpLLGBJ5HcZb2WRqFMIa
	 WZxESDiGgRnTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC84C87FDA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175456079357.29949.2829121878561743272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c68618f78febdf9bbeacb07a8c9ec24cb922282bf27c195789246305772a97a1
Date: Thu, 07 Aug 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754560793
