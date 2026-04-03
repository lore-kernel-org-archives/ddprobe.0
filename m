Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB0529D28F
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 23:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775259334; cv=none; b=iafo9wSFU+l7jOKoALxOXKBWD9A4ELZbPYC7iOHsdQCs5eHx8Dv/m6niDPuyVhFmHQ2LIt8T6psAOWd316ktu8yf9iTtb81C9QN+sbvV72nlkEWTTYN+JyaWc0UAIOSlCdRTNxS1fjQxxnKs4vsv6gVGWl15Yzyh9L9YXc6akLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775259334; c=relaxed/simple;
	bh=IHZzXaDvuZQxT/ZPjF7YmaOxUE8dit+LBx9hOJIAS84=;
	h=To:Subject:From:Message-Id:Date; b=WCX0EUTo+tmpKfQbMBlJam4D8kC+kAa4HEnKO0Jo5P7PFxnKXL/17odheRM7nRRV90/W7W4vWFq5TcjNStTDTwCbf94Kz3iALLnhT+OfiLWTndyLcHqr6YL7moX1kwufEciPKE7/HQRtNCjCXQXEXZqbJ09Qz6Or1h66uzPXEnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qpttO+8u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qpttO+8u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD463C19423
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 23:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775259333;
	bh=IHZzXaDvuZQxT/ZPjF7YmaOxUE8dit+LBx9hOJIAS84=;
	h=To:Subject:From:Date:From;
	b=qpttO+8uvegvwGlSpAUpC5SO0pqy1NdyDm011vxREZTbxMwA6kgkpu+ac+wb06g6R
	 hk7Rx1nZqNSrYQH1/PlaR/aqV/rIqrzXvgiC1F5m5cZOGeaVLgQO+wSKYZlbS30ynd
	 PAOhVBVdCAmNf4rwAH7m0ArzMIi/UU8aqdCJJWFM3PiiakySP4g26ApoxRgVUx22bM
	 R/F7o/VeDhnf7gbngeTuwWs1q7khHMpDQXHXo+aQEg5iXf+XvU+MuAx9yTFKsSxvD5
	 cctxbnGKNJo0MlTZLmPFoc9mb5i4P4bSrWhDqqzLg2LbEM6PDDmQKrKZXrE8i/CUoT
	 xworXjldsnodw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0A7E88D72
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 23:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177525933368.27915.12574685383828106004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bed65cd27fb017f1803859b4b7e386cddf1fe0630df9dbd0010f54f103028519
Date: Fri, 03 Apr 2026 23:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775259333
