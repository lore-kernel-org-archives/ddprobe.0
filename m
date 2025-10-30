Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DC8A354AF8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761829794; cv=none; b=t7XDVON7SK0raFUlMTuGDghQltb3WK2QQ3u8wHHVggICwjzQm+liKIY24rYxbufA+nH+ndzSf2AQgkGtrps/ATaRUQZkCkMgAnwPzdrqPOmvj4ky+SpugE4XVJoUFSEWP2D0XisVUJAo9WOab1tA1+ig09hd6ovI3drebBiEI5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761829794; c=relaxed/simple;
	bh=ZRdle5TolfvVCs/hpOQZBAEDenuwlNVymwhqw35Bg/g=;
	h=To:Subject:From:Message-Id:Date; b=XE2LFySD74JeaR3H5HZEN3D9a2Yb/a+7NMaBIrqeAM0h4a98utEArzm1LmKnS3CDfcEbz2mBfmcfbW6MqPyp3z1CuWJaemU+MtKMqfMjiJzs+j7+AIMt9Ba2xGEgrxaxFpUPkg5wZpQcknjPYUVP873qZWOJjGJrEV4C/PL1oa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1qSrIfR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1qSrIfR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C88EBC4CEFF
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761829793;
	bh=ZRdle5TolfvVCs/hpOQZBAEDenuwlNVymwhqw35Bg/g=;
	h=To:Subject:From:Date:From;
	b=g1qSrIfRn9PhWP+/W6Lx9rLMDGW8K3wDK8hrT30xAm2uNr/7ALUeSh0vDevcvnxkw
	 asYTOyTwJCiWiMiZMexxCDtJHRCRJ4j/+ReXgoGLGhmVBBqMeKQ20UFGFtxZssVvAW
	 ZPvTgxXkhQ6zs82LIXqRWVEmS+eJL4ur3VJbZbHheXUEs28hWbqjCAoQ3f2bgM6qzM
	 OKMZIrFJOtif2hkpqy3YgHkm3byEXpaD8EyElTwnwS+zn/GUKmObtowPnm4h3n+bRt
	 NqBzfX0zlCfXkAyhKYq6GXiaEhcux2bpwCgft4ynIRbHzLNlfAWpnuXoYmdmO/3R3C
	 DzhI8dq6t18mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5A3BCCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176182979366.30082.9332108988851165418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd5b822d25a36696a8a27a8fa4e1b7f6e9704177b54cda24b39c89f81fbe84e5
Date: Thu, 30 Oct 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761829793
