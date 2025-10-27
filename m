Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D2732E0926
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761588594; cv=none; b=UybRV/5SU+8ovXIpJImYNDVuxpdXa6n4XulEqRhFczGRzlHRnVIv0KQ33d6amTxH4Sawk4Zk2SiTFnuKQ8R71wRD20KMDSwYtUIuF4DFmqYuqXKR6W9AYLp1bh9Yn6IPu6CNjynFgJcPmYcpnkVNLLX+CVdXvCc1Ntq4FqrUYv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761588594; c=relaxed/simple;
	bh=TL3fKWPf3geUaiRFTddDxjaiW/812RmkFw25/iX7Fe4=;
	h=To:Subject:From:Message-Id:Date; b=UcXqhIGhURlTHH9HXErBoYZNAq9tgwyY5Fx3LPwjOGr+22rtUSgUnOyiBkVOA8uCODyvCDp/FB3CPJf/VKUscs+64xlrzRhYmbNCUDqH44zBuotBvTA7gYrSMZfgXHlsqmx+Hz8VvoqPNdayeED7UsRiJ0S+MkT0W0EgreQFN+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bsc8kH2M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bsc8kH2M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DA2C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761588593;
	bh=TL3fKWPf3geUaiRFTddDxjaiW/812RmkFw25/iX7Fe4=;
	h=To:Subject:From:Date:From;
	b=Bsc8kH2MqLqNB3x4OgRHFI2I7SDGERuXytJ7bzy3jGqcnlAMoM43DhWYmb9hNXi8Z
	 Zj8y0B+hxdf07CDTxHFtZqHuBShLJQykB24e9fJxH/QYv3datTTSxeee5rKLVhu7+r
	 bSAncwwxhYPFiIwnw0hHlXWKooMN9WcUCf6ZH1T5iAnxhFxzEWn59zc7r70exb8Hu6
	 it1NBGhCre/vH06uMeu3ElmhRAP04hk0eQmvQG4hD/92TSuhqjp6zjsfmB8f0wFyT0
	 XM6HgrzvG23I3jy60h4g+UJIPGxGTuoMwFYk+L6XRy0+woOUf3qlWHuIb5oDJD9UEl
	 h4+N/Y3HAcULw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F60DCCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176158859357.31073.15540714604107494929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b88796c356901376a0f7fb4d0d9d6dcc7fd2c4cf9f209c98d1e241a34e11e25
Date: Mon, 27 Oct 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761588593
