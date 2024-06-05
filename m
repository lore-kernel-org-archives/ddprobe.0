Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C5D1196425
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 13:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717593383; cv=none; b=EVhroaWoKfYowgbfS2VUOTTe/3uMIVQ0sDyqXoawA+jioHlZzkw30rDVf5O+Fip6WCTZBj5YlDVUv99/ZZKHBzZGLERA4gMCKknm4ErgbFFAAy6DRzF+ujhVXQkNVeFldnUI77yjWYb+UyWx6MOHS6H59mj3uu0XoqaJye+TOwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717593383; c=relaxed/simple;
	bh=jx2WCr/+2dm+nH5jQWpVHkZobyMKXfynuTxnPbrJT2o=;
	h=To:Subject:From:Message-Id:Date; b=LEWGeB7o3f1IKb1RosqzEeA59FNHXgueC9lixqYGOMJ/AHnMz//8sG66C/i3tR88sP6gQdCzXyq0MsEpNKDxiTD7itZXdZiZm4ip7/vlkCHH1KHOu9GwcrxznbxJEHzMFWj+AePTkq8xz05hLWgzTV1kH5fJ5K3Wa52CSJuOLig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ApwFesQg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ApwFesQg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06A06C32781
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 13:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717593383;
	bh=jx2WCr/+2dm+nH5jQWpVHkZobyMKXfynuTxnPbrJT2o=;
	h=To:Subject:From:Date:From;
	b=ApwFesQgzyQvyDSnep2YmOuFVHQkUXpS9pwp3m8yLMqXPeGBzWJYXKsifqXxeans8
	 mYHq5lt8qPQ0ZKWxgJK2lOdp4lBUdPpZo5bYPVUYsxQTxYOy+BGuDgFt5Tt5bijrzZ
	 ut42HsSOUYtF4E9MwckpNUGSRcWU6aQ4EzpXBaXfJs9B1y0nG6Hs2lnyCU4LaDh66r
	 SeThy4Kqz+Ki9M/XnEtstLvcIH5IT70TnY8xGAGM6IsHU6C60IAKBqkIiMcSvkPWhf
	 TH4pMktsLFiDVcScmrR5o00XbqXPCaInfXONGcsGz9F+lMWU6t5bWKyyxMDE0dS4Nb
	 RnpzZglVmscvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E182DC25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 13:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171759338290.532.16636714963912412988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 053933cfb4a8b8e6492108752be72bdb1daba3c0a7eb0fe69cbb4c2002ddd440
Date: Wed, 05 Jun 2024 13:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717593382
