Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A7C29D291
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774180494; cv=none; b=YPsIa0tKpTzcUiwspLgGNdwUwJp+40DX+bGHVEfv6/1UYLZKJKDe6HEU2oO6Pi3WkhCOm61MlkYch0he7lVp0ZzfOk04g8edYMPefRE39ccqsGLrERS7ZphQqbW67dEL4yZCYZgE7RLVxCqHbCOwilzpA2eUkEeFhc7jv93Do9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774180494; c=relaxed/simple;
	bh=SsQ6qc87FuYdrD8Kiz9I5DvNROgM3BNh7HK2NcqkABg=;
	h=To:Subject:From:Message-Id:Date; b=YbBAvqXNz0F2pFE9obOnmJZCVx/LHSawYv0aB62lq5UnFK5IfX5g7CbOcFakdZFDGJh3fMReERNGjSu38pTouaElelxZUlX5TIKKXfpmWxYFhGOSvOTrBReUak8+LaLQC4guYi5jdpRoXeNVLPX9tjghyi0upKQTsZteXHlVIHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f6J3PlNP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f6J3PlNP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90A7C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774180493;
	bh=SsQ6qc87FuYdrD8Kiz9I5DvNROgM3BNh7HK2NcqkABg=;
	h=To:Subject:From:Date:From;
	b=f6J3PlNP3ne1fY53b2D7z4aVDma39RXs2Lbms0UmArR78+zE4JF9v3c7h5AhKAi3R
	 CUcvOSRd+YAihTsDbYHc/B7gg0YfkohnSdAdPLrJP0zas/aNVla/812kS8WEU8RYXv
	 s4f+a77l7ffj/ZyC7k1ZVpye9sDASUpEiNTbKT12tFeU9EGnpXtK4D5ue4jmn5IZm3
	 ulZB1X/SU8gdQNyxuAORnhsRaMkn9Uuc8HbmceUtq9ZVIyuU1jWz4MjNck4cxtoBcK
	 LnpDf0MJb73kdLk0MrEBicF/xmrDQu6DroHyQcDfxNx4drtNdB5MdRVhZzTmdoDm8d
	 Chk6s7SqAjVUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9368AFC72C3
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177418049358.2368.10367474179885958902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 025bdb7cd1b2a05482ffa7c47ca1a968e9cecc2a84bbcce199b48b271302aed9
Date: Sun, 22 Mar 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774180493
