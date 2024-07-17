Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2972570
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 02:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721184323; cv=none; b=bEr8bgmPv3dVsRisRY0CGFvpnOI/NmhbLFiWBn7iBJDjSR9jma2TejYDcZ7pb2ZMrQPjft7DXHdJADN1FFZhDCs6F8PgeQSDN7MClIA0SmaLeQdYIA1No3V/DdL+wuavcc0FN6P3BUb8CRCorSBrsIx6qGvH96Dr5uHUE/2+zp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721184323; c=relaxed/simple;
	bh=vxgZAJnebuXihmNM0MJBRoESDbC+7QYCrMfny1hNRsw=;
	h=To:Subject:From:Message-Id:Date; b=i5UuwDSCMHpVsbhxzANVFD3TKo0tc8OMcFKDJOpSOK/7Y1wxSTQ2/+ozEk5/qTOJ3QBKFXFl9KLzqVEdq7imdC8QP5KDFx9D6vrM4eKlYVaggfbwJq1Pz/aRsF/Unudo1f/JLhigbz0s4v84OMWkGgqk1tPd1+Wjfew+3QzdZk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gMXR9Sxq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gMXR9Sxq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0779C116B1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 02:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721184322;
	bh=vxgZAJnebuXihmNM0MJBRoESDbC+7QYCrMfny1hNRsw=;
	h=To:Subject:From:Date:From;
	b=gMXR9Sxq0+TI9pjWlavWxhT+81DRR6nJwCdn+vMXkVJ68fB3QD3F6aCmVI4e6dV6Z
	 K7WsZsu5DBKBRdxWhQO13FCKu8v+KMw22wuFnBtP+FeY1vUOanu/PagwuDHuWNilil
	 mGiB7LAGvgf5lZRHkrrmFvUrEZQVMpmUnmpXDwSEOSENKMtVAR+pGLbL+JB+ZkhQyj
	 TCHR5TbU7odHNgt8QBWiMjF06EcR7w7pgDFihtfA5Wbomk+ICJHBZTSeFV2agEAnxy
	 4k/P+XFAf1woQja9/S7eI14thtCE4IM+My5xwKppDq16n5KhuIxG5TaqWoQhoSERWq
	 ZsbtTjE9OBlLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5E08C3DA59
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 02:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172118432278.27615.10404655344710789463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5acf4d9b7aa12580c1cd4448097c8982511a9987de3a43af9da8e3aa63ff455
Date: Wed, 17 Jul 2024 02:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721184322
