Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0421714BF
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734039954; cv=none; b=Ax5UEwnzs2jAVPidctvG9wECiKro4wLN0+2yt91PlFp1pBp032c+n87KPodCiBSvR9tr0POnFuwGF/Z/VXo5jrGebCLRUWA1slNo8/B4Ycb9fBGfgL6Wx9AYKyUzCvw6dj4p4dZzk4RtO7yAMqoy4yQH2z5ZH1udodfdnWQ4VvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734039954; c=relaxed/simple;
	bh=cG/JVlyEa+tTZbTxl0MQCQ7iqqHUijDdQ8dfUw9bsQA=;
	h=To:Subject:From:Message-Id:Date; b=lMEnJ9/MYidDsy5+JExIHEkp2828/DJv36BW4D9s0CXNBtuLFa/+EvpgllYKQeiXiclCv3A2NELtaHT//lsmff0iuAx83bPCmEm5ez/fRVqWTVcDlfJ7Bb9Rg1UalvbEprYVVAsy4+zkxrf7M0Zlz7WB61hxl3y+FjvbC53xVRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Opvn5qrc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Opvn5qrc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC068C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734039953;
	bh=cG/JVlyEa+tTZbTxl0MQCQ7iqqHUijDdQ8dfUw9bsQA=;
	h=To:Subject:From:Date:From;
	b=Opvn5qrcDdhnpdfRLP0prmAVst2Z7qixxYsUT8AFN+LknajSeqklErIJEc7BXdHXe
	 6hijKR/eODvC3+ayYzx8TNb362YexcEqaPFLnji9Vx5vmGot/NwI29t+JSr/3o6o0M
	 KMnBK5UotBfD3fTfrr1tGQxeogTFoOooVmG6dagiYHI87XColQdHNqErvLS8WuEg0v
	 locEbwp/NqzsfnN9ip3ft3GVELu8sLiCPclhJ8wMbg9unVZcYE9zGRl1YjA8XH/j0e
	 MlkxaCmK/s163ZjDwmRoUvnJPnxPNY2sRynHI1rWfarAzXWdsDLdtr24Euxg8SkGlE
	 797prHQh0FBwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A11DE7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173403995361.23731.11281828427284123954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e64a8065ad17d339045136a0f4f4fd2b4171fa8a8557609d4afb42f555b590b
Date: Thu, 12 Dec 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734039953
