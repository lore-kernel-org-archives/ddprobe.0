Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B4A155324
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727968554; cv=none; b=N3WhtPZ6cRs/VkYii/nHtdu1o4NsXtvXBk7kdw1zPD81kdwMz9h25gutnyOBzFwvhkxkWZwLaiMGrPFBKIYLJiYyadGsi5oKJ68tJrhgrar0bg9rAAZ82isUVIoGEM/abZV5wO9yzx/ibuK/IR2VU4uM8HPDTEsLTpyDsm8d3f4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727968554; c=relaxed/simple;
	bh=+9doFjk1yK0iDsg9dHAdb58axxzwphKfoqeT0d4mNfU=;
	h=To:Subject:From:Message-Id:Date; b=nQ/wxzeL6CUVJvU0Ae4oLdjrOmfkOxXgL4civTSuzkpdJsd3fCfg6Snlzlav2Kvl1o1FAqksgUAZ0kU6mJ82AAh6nfGSkf8k1lO6SLumj8lC6U4SclHiKb4svDFjf3gJfripdHs1FmR0E0Fy2Cx+m0wEd4u4aknUWwWWDNDwhfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PWVAMIvl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PWVAMIvl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D12C4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727968553;
	bh=+9doFjk1yK0iDsg9dHAdb58axxzwphKfoqeT0d4mNfU=;
	h=To:Subject:From:Date:From;
	b=PWVAMIvlszyPnYcfB2z3Thf8rgm4FZbEcUaXNrCWwsJrYYgEsIAdsJvy/6xe+csEP
	 PMU49bmUXI1mtUWxAMqTqjzPE6iHmjb/9c1UpZLu3TcKYRfEMEc1Y3Slwj/dSS01gL
	 yCKGZK1/Xrkra1FSVTMD4AjEXcoTv50C2Jj+SLo0/Wj+kb2sv8HHvf6SKWHyOPgSFC
	 ImqHGojwmzDSbtrg+UgE17NCdNOwS7XM1Xd/nDbQg1a3wqAFZ1HYKalfD01DWYlK00
	 u4cNomhJTFddH4BeG6fHXLVuC7KoKJc6nVnD8lkLXoCrci7Pii/JOZ41clVTCXKPZH
	 15uYyyDQfRPoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FD8CF34A9
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172796855360.25583.9073656625839903145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e788f5370c96599dec9906a2a423e822dc617a556cc7f872cb8b9b68acd7465
Date: Thu, 03 Oct 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727968553
