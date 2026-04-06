Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4971C2848A7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 11:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775474134; cv=none; b=fH9xf16Ihu0I+Beef49cQyIYnbzHDehud40GgIDLTrBgftAv20V6bL60RobpBPgeysIiCAdr+4bUqB8muqSKHfPxF8+oblZHU26vfxZx5Dru9b0mB4y63r187hTPc181tdIOHYoceY8KADRPidjaoUi1KYVjuV3u9u416Edn5qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775474134; c=relaxed/simple;
	bh=k6Rk6WOFCzniLsUU7xPQpschRe1g0GknmiT1555OxXE=;
	h=To:Subject:From:Message-Id:Date; b=KXRP4XdmYq0MTcF7S3sX24x43ORLtG0lV2KTMieXRM0VmCeHsRbp4mK5E7Hkw3vFhpuhastQv4CGOuysVpD7dL9cwtMmBuabLPWvy7zce6tiaSjjeic3RMKcnbvmnWm6ytrU52qbmfTCxVy8nB0885FuUDpELJf/zqnaQwQacOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DKOcNNnB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DKOcNNnB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8EC4C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 11:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775474133;
	bh=k6Rk6WOFCzniLsUU7xPQpschRe1g0GknmiT1555OxXE=;
	h=To:Subject:From:Date:From;
	b=DKOcNNnBuxMZ5uBTrdxRcGkDFxccuaB9wL+04AH/BYgVN4P1aTzT5CjiEglzReULJ
	 kScQSyg34MxjpZaAL6JklRQ8/NeEOUuP+oLAsvCP6QZq/BpvpZz0UAA3MJDkFtYdXR
	 obbZ+Lehpbu3z2CHLFbs5aAd1z7oOA8DAYmQkQPMXf9fyv2YL/XhfN6bypxLs1ASzg
	 sBea1Q6SuIYE+6cJdb03aewNZnk3ceZTtMxenpCoRehPwsLqpcL5eIoGC5svdOAFud
	 Wt06XUmNGCnAz5tmKuAOgxM8MQkRdBHaj+4NM2NKMOGuFTs9GTpSuV48PFfX7bLmSD
	 MDo74v9XXC8Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B23B0EF4ECC
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 11:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177547413370.2743.4040503472122360047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e5fcbbb547ec98a9f2da142d3c610ade2f29ae7bdbc7474e897fcc94efe2973
Date: Mon, 06 Apr 2026 11:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775474133
