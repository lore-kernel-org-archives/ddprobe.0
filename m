Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1F81C1AAE
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727469354; cv=none; b=bu/6/71xVRaptgluXwr0sBz1RtfXT6/nbR9isEA5XcOW8vkWFStwKGgN9+D6kZvA1UQo778qGpluQzH5ca/Uc0tJzxiVqygrBf9qGJ+OKSKBErSvlC1XinXpcT0xhahkkGIklr2aHVJE6coWHCbKS8zHjoXXQhNFssrzovf1k+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727469354; c=relaxed/simple;
	bh=KpbRDni5/JgtIYzPvGN2RvWfHQMxBCQkp1GKYYN2fak=;
	h=To:Subject:From:Message-Id:Date; b=DShKC2TF9GdnvX0oW4aMknQchGioxnlt6Bv00YzUdie1eV+GRHyFPj8KDT7KVfHkhVpTw1glu686Yqh+UiDxq99W43TLM3c5/2TV/JHQIvxQhqiePR7QqA0zW9RfDYd5EqqdVkm89fmDQLX+SmsxVFtxbVQu0YViH6PF0/cq1l0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=af4eJN80; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="af4eJN80"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F60FC4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727469353;
	bh=KpbRDni5/JgtIYzPvGN2RvWfHQMxBCQkp1GKYYN2fak=;
	h=To:Subject:From:Date:From;
	b=af4eJN80S2TxJksxCpo3cBe+yt/+uPuM2awqXJYJQ5tOTYO9sWL2sPgdCwuuQ9rGj
	 +Yper02m+4ayUYtODD9F7bdfOuY65b+NKskzOji8u0zL+PdBvzTIL0qFHymf8+jgZG
	 VuL1Xn7RI/Lp2jiE/XJEJIkpcsaoyf5LB4F1oidJyenKt1ejUehPv+e4PUj4bVe12k
	 UWECQRyDYAcXHtOPF1xS1h7RJo0znyzd6/xQ7vWIjqpdyBsNqG8TG0/EzcFI41F/+g
	 ACdCGTZn3ML/38h3YlsxNRkMz1S34JwaQ/rUtIZ17kEZn34O5azI0fMKhykiImJwPe
	 kfEPK0GHV9cgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909ADCDD1D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172746935358.15414.2223600036785428891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8e68daa7d7b4bf509649af2adf757de440a1beac2800a39e5c60ec4b8dc17a7
Date: Fri, 27 Sep 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727469353
