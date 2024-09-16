Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1091EDF53
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726466754; cv=none; b=O3m2KHXBCs3S35AzoQXcZPpC51Zp3gO6MhHUPuJUiNhbNGjq9sFNFdcfVOfooKUNESLh+PxUg3bWRRfLtmiuhJzNXi6JB0EYjExOQ7QZxslmY6kjJzB8QoH5z6dRpits1IeyNm/s1YPo62Q/TSWJYj/T/bXF0EMyV+VUqz4fo1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726466754; c=relaxed/simple;
	bh=ViPrXDpsQ8pa3s6+oFO/CxL5RN1phNdv29lFo0ytmm4=;
	h=To:Subject:From:Message-Id:Date; b=RgLrAdA7OOkpXTkdkQE1vdZ0uFaWAEd1h9GakJRMuRd/wHI1RYKrbubbBQixPeabb7YqjnQWfI9zcVo+nu6/O22pMhgmgQKPsZyl/oGZWD7m/c4Z4fP4z62tMSY2fi0NLEvlPwbYREbaXGMkFybn6wY1BW3euC2hBkfZj/m3qq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+ECOEso; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+ECOEso"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A43C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726466753;
	bh=ViPrXDpsQ8pa3s6+oFO/CxL5RN1phNdv29lFo0ytmm4=;
	h=To:Subject:From:Date:From;
	b=K+ECOEsoBhjj+jBDcs2OW64pZL++f619tYiporDgtrTySnwzlC7NaEse2Md4VKSCG
	 uvRRP0kpEGMlmniU9n+t7C5ysmx3+DhZ3RN8dh1r5KiONQ8tZl6H19bYDo6D2e2VGb
	 MWO9QA2H8MnFrE4fnYlBsrwulleFfxhCYhh4Yo12L7aHrGcU7LwXof8ngWb1zLf4jK
	 MDPZ8FreTRc2XrM9cDk62/0qANJzlzmUiI2rrJ1r0XAdcTy28cBsHnYkHd12rWouSi
	 kQt9Q2UBAcmOSJk1E//iNa2DL1oRIDvKMJt3bGMjtb3iobJc6aPQKDLNa6qRx3nVKa
	 MFbUUZA8At6pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961E5C3ABB2
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172646675360.7660.2555462834114120627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f38c9fa677f7fa1f327f65bf7962213db28694c51f4736d283b2c5c6501755d2
Date: Mon, 16 Sep 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726466753
