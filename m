Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0829D431E6D
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 19:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782935914; cv=none; b=OOOnhZOMqsBU1VfIGm4oSuMDxN09sDQNIHchpblYA1QBPsSdnk5kEYtEt7nedP7p+caxbdtHOzRh9ucO3QcTJDHSAuZUvU7Yzmzw830nSvazT85/e1ELkDM+2dYkhIPyTHYcDVdC3vHSUgx1uZmqMdXvRWUH11ZkeS6dRnsFB90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782935914; c=relaxed/simple;
	bh=HciGaKvRkUmy5NrZFYIwD+JS113SuqSTDy+cORRTSuQ=;
	h=To:Subject:From:Message-Id:Date; b=oi81s9I76InrZuNVY3imjmfrr0LwRnMhKzicWm868iBGBG8DgWzNyUzPTdvadp0WeHnbbpctcYdjJ6oMSn6rV+5tot1J0GMCqQwsR0Dhoe5eM9qMtn8LrAi5sW0AyilJDFz0JGNxG0kHpFKFoXt27+56vFEMQYx5DIGDZIpJCGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hF0muEHv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hF0muEHv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C566DC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 19:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782935913;
	bh=HciGaKvRkUmy5NrZFYIwD+JS113SuqSTDy+cORRTSuQ=;
	h=To:Subject:From:Date:From;
	b=hF0muEHvCPMmNREO8kRqVvFDWSazt1643l8DI6IETZbRIq2EBlztEihLRRpIqTb0G
	 3vrvZxeV4jffbZoo4h5+QzRUlhJR1hiW85qgEfZtO+PoKReoT45bPuXUru4po2DJiS
	 bbn/zKvyRwCshVyDodu1QT06BqcQ6daQvpWCJIG+Nh5h4m26iw48nfyA0QjrCHetIg
	 Q88KjcnR80pp0eh3Gyrmn9gJs67l3Mn/FPmJFTE/vpFNarQdbEw5xpaulYOo6dVJ01
	 gthS3x42utVgfN4mrvP1A1QkyWaQ8CEh5GwV/ZjGS4jJOxS9YX+aqcwAlnMmB239xp
	 n22xuvCNydF1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD62C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 19:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178293591369.24820.13442147583487726676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10a9e90f8c6c7ffb33e230dbff381d2f559322237aaa1f7be1d53176f1935f6e
Date: Wed, 01 Jul 2026 19:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782935913
