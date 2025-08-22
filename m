Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D92EC2FDC50
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755867593; cv=none; b=AUIeWswCGVrDD6cWL/8RLtFCpdphcTAM80fqLE4AIZ7MtuiNhEq29OyWJF9VujOuRG/7QTNyc12fpJGpWpXmiMdXXjQkE3Vkwrqh3BO+5/SeEDov+1IZlM7FgHik2RwV5F1Dc9b1sjWHkeVPvjyMPee22GXDoSXO0cgmwXHXL9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755867593; c=relaxed/simple;
	bh=VkkeTU3XYSwg8mSOBA4Av2hk2gj7p6L+bdzCuVNAyZU=;
	h=To:Subject:From:Message-Id:Date; b=Ss3ear8kD3TxFgq+4XtDnAJvavH6NyoWRvFgmCAdFPvCg6+ObaMWf37DhOwI7fYyxnBUKAKEAZgz9fFTtKSsKdd75g08sqSxvBDEQNo3b2ymDuJCDzIdPFGv/OftrtCMuKCQxcrqU2jWnOD8aW4htqX/YiVZm9W8+ADJE4AKjuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=otQVZTf5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="otQVZTf5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F50EC113CF
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755867593;
	bh=VkkeTU3XYSwg8mSOBA4Av2hk2gj7p6L+bdzCuVNAyZU=;
	h=To:Subject:From:Date:From;
	b=otQVZTf5CmbYWEjJMdTmmjoE+2/zuUUA6alFxVQv++WuG9amdjEouiqS/LmE97t6G
	 /r11mN/A9AIWsvyt0Zz8i/bwPbfDq9OKW7KmQAToPPGgEFAnvpOBFpyZl9YnbXzJ++
	 Y6lATGhnG9884MYub3vybx3u31O0CXHau+saoT2PrOMLj7LEx+J6yGovBbD54Po4Wf
	 6doeq8jgYNBwTHxt1vD0V7nRRarjFR7lyXGXNBRd81csJKVKsJaAMfh3fY1qqsMY1H
	 c+jS2MVOYmSZTjniDrj952SlzqacUDjn3BkWZmLJTdGjJN3z6eN6C41Qr+iNRDXyPV
	 FT6PJPRFTiB1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB0DCA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175586759357.2305.10972856823960445891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d72621ffdb802fe4650ff4f023940e6acfd9024610b840acddeb7d8616ba1bf
Date: Fri, 22 Aug 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755867593
