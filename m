Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402EC1DE3C0
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746835194; cv=none; b=JiYr9Wg6OACuPMxmSobBpOieXxSzS2nFLd1F8fX5WXI5ZxkSG20caNRkPFlP6Jt8maiKTwKJ+sTk9hosuKRHgnJYrtWUAH5ixeaLEvNzbb7cxMucq63ga3T92mn9aS8I98HSFWVhOt1qOx2e4XR+aSEXQrar78+OAcINGoLk3zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746835194; c=relaxed/simple;
	bh=3o3+YCNGzTDLjUv4IV2D6vnSFb9ZkNk+NHaCVmYYGX4=;
	h=To:Subject:From:Message-Id:Date; b=K5MawNuZTvB1/G+qfUqMVoY7fW4zBmBdG2ppvOgiZ7RHGjvDFbz6lAey4rkBVB/qLyXXqYEzGI2B3UQv+s1cpv9/4MkD8uEhseLV2InGLRGqoBH+Wowe8j0kdcY6in/4I1/q7j4LuT0p60bqPyxQ8E1fUzA/tE8ePgvaVtrwM1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQ4A3e6L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQ4A3e6L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04EDC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746835193;
	bh=3o3+YCNGzTDLjUv4IV2D6vnSFb9ZkNk+NHaCVmYYGX4=;
	h=To:Subject:From:Date:From;
	b=WQ4A3e6LK5tkPYSMeNeF1KWDDq36Uh40GyEygKzNwKlS7IHfXHeYsJ9nfuNBf31rB
	 2d5QliXg3yYcJLOvKn1D3+qbsalYtLyqkkKuvXJ1DFewZF2p+gzkv/GNVfrrioRd81
	 XrMPab5MYN+z7ofiB91dfw9yJZQYMx8AkYBR1A7ekaX6Wl5p4y+t/wxpcEDliKMR05
	 Bp4gCgEPbT9XpXdT0vNm1wRwDiEK48RhBD4cxrfY+nxYYaUmeFIdae26gzYtDVhUQQ
	 QcoG/asJ3tjBqhpAGeohgIb5WzNQ1/aDF/YRbqTgBdbQ5h6WLogF0Tz1vXH5LQ1NBN
	 6qRz9BbA2xMOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E63CC3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174683519357.4459.12002566639084114868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 750d2b3114d1505eb6c61016cf225beb329759f0543330716865644621405ab5
Date: Fri, 09 May 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746835193
