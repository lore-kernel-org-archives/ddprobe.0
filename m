Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 630E93382F9
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 21:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782423454; cv=none; b=UZHCClM+Nz7tPdk9BIExYaO/vG0Nb+S7j8YnhL8at4hWJyDDVwAmkRLsYU2VLzM6kYhBLFmXmrzx4uWzWNfeiPOPvUSL0J7krjfKhVnI0p06vRLKoNsRcREfozOrcIbT3OwNSfEUYVGqafTTlZdbO1ucpPgPvXnUCNha/rldJ/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782423454; c=relaxed/simple;
	bh=EStCxYnZum9vwcJklH2fVUDjWoXASXsKJstcrUrRJSg=;
	h=To:Subject:From:Message-Id:Date; b=ukIdwEpGz58sV4eoYLr7C8lCMD03qMpqzvbchjhN/mI9+KbYzOo2GzYizpC7hO7qKmaY9C3PReE1bVDWcjkWf8H2urzEIRjYzYoW/L8f+sLamP94Vj8GAt2SN+Skb70pqJ+/ACYAjVtHfnMnY4MF6usEierOTW58WKCEP6q5qeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZVNpAekB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZVNpAekB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED1BDC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 21:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782423454;
	bh=EStCxYnZum9vwcJklH2fVUDjWoXASXsKJstcrUrRJSg=;
	h=To:Subject:From:Date:From;
	b=ZVNpAekBHIvwjSQjr/RVUH13mDw1pZp6c3jK8g8YkNGu7trAH/4rQB+zRnBwQkeXL
	 cNHlnOuN4YLUMgXYFIMf13WCxrh3akt1Onr24EfCvQszM/E9f2h1zrT3kszK/Mu0HT
	 ye5DXYMGcYy5zcNk3hoS/sff+AJeRjuE04orYOQqPbEKF//hTSlVIeQ5cJIoSaYEjo
	 cUKq0XBxECWSeRV0CR7rGf8mGgmhvaTGU6+gBP33pa75CwegYBrnz8asYR6sCmp7Ij
	 Ocgmt+W/5Z9UsG0ZceQpF4XXEWUXwCP38HGw7maGzWml9QoVaoRMAphakJOxiX6FNj
	 FjqmuTz+fjSAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1BE2CDE00B
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 21:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178242345376.21645.12496132902764040047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a7f7a507ad4b2bae0ef47ce0d2413b93979db0750b9dd7d8bf0db835f7bf611
Date: Thu, 25 Jun 2026 21:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782423453
