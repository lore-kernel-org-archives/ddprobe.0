Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2170C21C17D
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756795794; cv=none; b=BwDOXDqyQ6YS2UAuzglAwMPOGGQoMrQ++I7xfpEYC+Ym9+QSO6riOzrnJCSxsZNbBxbAvRivPyrG24CAVtY+ytwpbb9PWAtp+5MGHsFT3Aavm9Z4mZHKWYdGMyhQCDOpXIaPTMg6+4QX2KF7xj9lgRG/ZDnbq/X0gwsjzGSjzFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756795794; c=relaxed/simple;
	bh=f8CvA2XlulATC/9Mtlyh7ZSwfaYmrKdoXHt2F3DC6dM=;
	h=To:Subject:From:Message-Id:Date; b=OqpZhPl7GR24j9qV9PDDCe0/815fS6TW/w2NqS026GFAl/6kfLaVFzbnb7xRHwUzSeBFnMO+B90aws+zLjfj43mbAgp9zx0OwHb7WYCiTNvJCHrM+wImpPubzVGROpkYWCZcoCKnmgB/f4Pktzl74CrdPKCxOtp3MlB5Mg0n6I4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ma+0nB6Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ma+0nB6Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3752C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756795793;
	bh=f8CvA2XlulATC/9Mtlyh7ZSwfaYmrKdoXHt2F3DC6dM=;
	h=To:Subject:From:Date:From;
	b=Ma+0nB6ZnjX3u+gLdet9gJAGt5pNqTKpK9OWiZzxLYxLMvayIGioNrDHQ21Olfnnp
	 KJJGnUeVanAs9MiH37pGh9mtKxerEEcb16pGgA/Gy98OsH616XC2rk80EmosxBLSEE
	 CscYb5hGBGvZCMkGF7K8GhpeW/ZmJ3tVwdG1rUCnYfLgFsPZGobAG3BzpWb3Wyk2sn
	 6hiLMm5GzEalwAZj4d22lcwnlw/wEn7Jo0pL0KqWFPeaeyhQ+u8vzE5xxPG+1p8wVV
	 E/7E2lVnOmQIP5TfI7NoGA7bgHe6gDlvzsEEnWO6P/knP+3NRnmvL27Z5R+N0Tioo1
	 0Ml4WvsYv0raQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E89CCA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175679579357.13773.12061243466604838982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7533e2ddbe65d327494b52b2d12a82aa9f75eca4a69a5a0737a1747d304ccd66
Date: Tue, 02 Sep 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756795793
