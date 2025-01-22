Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE171AF0BB
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737578154; cv=none; b=ZKvfY8UoC42e5AKXLgJwEIeZVv+Usj8ccOOHOUh9VIxQn5YpyAzi4SMuANctGl4XahrsL5v9+cvToW7Jk9T4vTQlXDt4EH8QRWBsimKB+p3l+1dPY5o9Stsp5vGWSiZjXWNWIeG8oJADTlTMybfsr9MnKSZySi8ndcPZ1Wq4m6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737578154; c=relaxed/simple;
	bh=9HMssViK8KDK1P2LAH3gej7M3EIVK64DtiviFucriQE=;
	h=To:Subject:From:Message-Id:Date; b=pTsf87GV6o9AsZIs3CmQvWRMiB2Bq4Iiszw3hPffe+mPLPF4YGjkMnlmIVd+sm4n5hIk7PoZBNN2Q8RuerYP14yId8ybRu+GV0sd35B/imI5tM2MV9GFyMHxLy7R5gdnM8oMpHMHtSAOJPUnOt6c9KTPdndE+BH0puEacGrCVmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tibluhKt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tibluhKt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB63AC4CED2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737578153;
	bh=9HMssViK8KDK1P2LAH3gej7M3EIVK64DtiviFucriQE=;
	h=To:Subject:From:Date:From;
	b=tibluhKtEqt16ZbJddLgNVvhDUqFVhcurt9yNgTR4dGkIgK6hnLwU4qY57tguLDDI
	 wGs4/y8G7mir+PBS0YElYqC8jm29HimUL/FeM4Au3kaogffd7lKHohG+7LdJilrDgB
	 D5gMewfmBQhUQRzfUr4T2+DTdphw1yUxo33VxxEOG3kRuM0Ag6rXVc0VSIXZM1oAQG
	 vYZLjBf9OAincqsCeLmBMHkHdETzV1aIZxWFMLbJAFletwT7P4ACs9rFZeHDreKI98
	 HWGYs6sOrLC2ZjeO/nbrVecezo8aVZB2eqrExLGztYqYY9KTJQykzdkwp8/bryRdnt
	 md37PAZCT8Nvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B79C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173757815360.22444.7192800179257908404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0bd25c3d64ea41f3edd943f1904d0e38c805350b5cdbe22cdc698482bba5a2d
Date: Wed, 22 Jan 2025 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737578153
