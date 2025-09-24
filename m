Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0273C1E0DD9
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758734395; cv=none; b=lLCQ+L/XqcrNDI/+2k7yN2jCWsWFF9z2sS2UynaB7rJYGWXXioDGY+t96ggUMRFoYUecZcwuFqB3jtBCZpjrqJHb5wScFNKwvqK8ZRz+PrFLrlD08WM9kqdboTyXjpo1x9aFEDrdc6m5wklZW8ysbN13W9pPgPUBiAEzvJaWhTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758734395; c=relaxed/simple;
	bh=vOlgh3Io6JXganPo9lA9NBuBlGNgzCE5FLfo7AuM+U0=;
	h=To:Subject:From:Message-Id:Date; b=ZukVTNF0K1mYTMIgnzpDCEYffhiQGQjFcwqzC/J4AW9zDpymsj7oWkTDDDuMRLBHPZgy/Y6H/3u+ILbKQ+gNf5jnXo/Ik73NmM24FTVRmdo+mp5lM8S5+MWj/t3j3ISDfrJM6Mg+XBN33QGVJ0erd+xGiWGytbp1hIcFGOeW6EI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzUFUYVp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzUFUYVp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBB9C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758734393;
	bh=vOlgh3Io6JXganPo9lA9NBuBlGNgzCE5FLfo7AuM+U0=;
	h=To:Subject:From:Date:From;
	b=lzUFUYVpbQlaeMms6IBptu4HkfJNVw03VlKc3iIg+SSo6GWNlAeQb35RFooHpXbr0
	 wKp5M0yoU5lRhcJu4VhceFJ3DqLg2jmf1H9ltTVeHrmJwNeel5Nl00+D7QOVIPBko+
	 EXYMVwa3hCC+NQnyz2TIZ1Y+gZ+ZvejfdGZa873Uq0P/ghSINnzENX4zp0XnQDDN+2
	 rWk6IxqCBGhbxNxj06OUWeUvMSRVkzfhPtl9LKf/nCYdRIWlk+tqDsK63Bru0+xODR
	 7ov9GEUPs1fp432o1J1Lcw/9tV0mEdmhtd2gpEri3iMChsf+W9zJfCfXb1DhYO5zF8
	 508Bz135XI5ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6E1CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175873439357.12350.12848364763599720162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e89da2d0ffb7dc045cc0b44ff7c85cf5afde49aeb08b491d1887b58dec1969f
Date: Wed, 24 Sep 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758734393
