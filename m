Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EFF92F745D
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769721834; cv=none; b=dggtewyRSGY5khReoYRe8Funq2RPO+oMdpJoP0aU+7iBfsagU+IXh1RbHAc+Mh0i4igSaaG9HnsZSGUSl3Ksx1kFkwUmsJkbrzGvMpXMr8OUdYfAQGMPklsC2pGRxS4Fm92jwxL+dpdNhDI3ErX5PVLvnZ/kBO1i/76p/mX/XXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769721834; c=relaxed/simple;
	bh=hpP1n0ulroFG0jd+8kxTKK2lgcfj/sJRJIgrug1Ub+A=;
	h=To:Subject:From:Message-Id:Date; b=V9VPdHL2su+zFwtP/hdhOijAdgCdSjBBxXx+ACd5MuIqei9dKwkjg/q3tenmfJMBNbv3KKVG07PTCmPBP14tOmPW5YSM2ady+YLIJ9grScEGDqLPAUqrkk7sU1tPN+cat91vt1JfesMvjgucs/4XFn1N2H6a/gYBFvONuBp9pag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CvvKPdiv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CvvKPdiv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A574FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769721833;
	bh=hpP1n0ulroFG0jd+8kxTKK2lgcfj/sJRJIgrug1Ub+A=;
	h=To:Subject:From:Date:From;
	b=CvvKPdivjD962S1plDR1KcgNzvzsTl2VmxJTBakdI0H4hlLETDHna8o7oytP4hPuY
	 OdFBxLfMz2QzJpMrPlltB1Q9DnqBxcP0eM2Zp+B1yvlY3MCQRJCFZH/ZWSLJPIsFW3
	 Vnr+5rIg8iR8HymJYcbkzJClD2kry5oya9QLuasMH+M3AXQYx7z2DZoAbrcDyPBGRV
	 XCI1H7luO69aKuYZCkF/1OlqLQALADSB/Ko7c5YfA0fzhiEEE/D2/OfBRyR163NqGX
	 K3kRhHxjtBFnx4pyCJH04/iXnaIIJhsjqw8mewc9dXVnzas381/r627HZ4PooG1ktM
	 LLFn48D+ylczQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B01D73E8C
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176972183358.2581.17719315043894840656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55f3856d598fade148db5ad3acfb7cb457138d22bb6da08585ec2fda8227c5c1
Date: Thu, 29 Jan 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769721833
