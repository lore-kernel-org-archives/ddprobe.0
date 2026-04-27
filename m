Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F70C3B4E95
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 10:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777286854; cv=none; b=dQQGJcTBaf7Brr9wv/xvpFyAIg2+XOCM8cHcJh9hjwDlkhmm1UHYk8vpEYpZaTgbVkXRjeHa7JDbU1j9lnfNVTVmJlhuOA9KvHLJZyQnSLHkd4cYdvK7E0LPvg+I8aUDXUfVpFBJiUCdh3gAiH44LaGXDKZR5DrYfIKEKuCRFrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777286854; c=relaxed/simple;
	bh=OYKJGI+/H3SFMm4qM1K4ZrgfYtjJkPIqyjHhEawigkY=;
	h=To:Subject:From:Message-Id:Date; b=hca8sTIJgU8qHZWS749eRJddQbg8QcTieYuO4cahKo+r1NooSvN9hWet4RV/nIXGI/2/MvR/nvbdK1veL39Mf12r8HdcklLyuC+PhiYMTBi4gMvcuLdGyEQP1DO481nPdoMqAxhtaMZXrDhQjWdJ28sDsvlNAKyDrBYOV3lp6Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2VSbdQC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2VSbdQC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B90CBC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 10:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777286853;
	bh=OYKJGI+/H3SFMm4qM1K4ZrgfYtjJkPIqyjHhEawigkY=;
	h=To:Subject:From:Date:From;
	b=V2VSbdQCUEtIlRBfxtl9MEXHicAuNM0tElCkyAJEO/Bn340ENG04PmnYaKObLGGGN
	 xxJI6r1C0JwvLlZgKzRnqMKhy3KGca3+GSdM+bNNcKVcKPc6/QVt54C3sIH0eJRFS0
	 SLIYyXPdGZtvXDNkzt6ya2RRrQmX0lUN7pN96vWerPvnESLE3y9yCdaleIFyBmVy2S
	 CYOR8D2GBNqYH8LOzMhkqTHBgpq4wKGrWoxSdkYaDhvqGFzaHelA0LEy3FnKNsC+GD
	 d98DL1CA0rWxh8Ma3EZ+MHpwfOhKDkHeyu9uS8vNzxyiuYYPJtjfiEkKxBoh1nmDmi
	 Q+AfN6fF+54GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C92FF885E
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 10:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177728685368.15624.378846977189989433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 926658580c6d1cdfe95df48f0db9c8b4a191e11511819ab7651adf65b72d94ac
Date: Mon, 27 Apr 2026 10:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777286853
