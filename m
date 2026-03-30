Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2251F20FA81
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774892094; cv=none; b=kq8ES68hmuTXUsc9r6UZTFkwTIblhjudCwPGdMmx/zIGW1jM45EKRUmwkLLW8e34wiQtQEBVQY6zR2hrMG7WBhXXghbtWR9/l5Hz93rC+/t9UAih69nnT3Mm34olAGjrwH5vFLb2gpQJKmyWFYImiW4bCO1e50133hpSY2+mlwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774892094; c=relaxed/simple;
	bh=St3eyhfOTiEyEr7YgTWNTlOAoCX2Ohenq4DZC66VMzM=;
	h=To:Subject:From:Message-Id:Date; b=gQWSg0XJUmDblAaJoEgNMvJLw4wlRrpWBg5h8xETZTMh54l/mmU+QBaipyK9MHVZOaGPGIIUCCnOvNwrIDUMpm/dwHtxrfvfu2GNUlAWGuovOOpY1MPBPF8+gpDqmfvOsqTd+hsPFWyj7//dCIKf2UYO3nh+BHV0CfdVMVD7leU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NIWhm0Yf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NIWhm0Yf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB51C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774892093;
	bh=St3eyhfOTiEyEr7YgTWNTlOAoCX2Ohenq4DZC66VMzM=;
	h=To:Subject:From:Date:From;
	b=NIWhm0Yf4zjjNwvb7BjiTWzNm0zrpU32hkD3LyH/UgalNR/ccM5iXRCrj9sZrms1G
	 JDUTSxtfVNSWNfWapqzXNBUCX7ZUA1jVafoFxRtWsoIJboTojkaSlFboB60JkHdckM
	 QlPy2ioO1X6BwCfQ1IMEKyq/JBopjbxFegqtdjybQCUeSsdV6e511z8Fw+ufsYCUl9
	 6Gl63jLZ5jILgXkGmuUA1inE9ieL+oIzaF56MZB4ham5ylOD7hWxLt3ZCC2HjJ+omt
	 52mJPWmPihhOaDPxDHvur3K4q+VSspoA/bdppZ95UCEm1JT8LoXwjWOcGoRX6CQdCx
	 TLwHx+IWGXKkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951FB1061B17
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177489209358.12097.12970623615566880875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9f8cd0e3adf12c8d156ad9fa683d9c7ae6aa4b0869f6f59b0f52f14a61ef8d8
Date: Mon, 30 Mar 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774892093
