Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC9452BE02D
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757576993; cv=none; b=l29VvZt9afkRLfNIZOJ/vZDmEvP70pXA0MVnFkD+e0AsRkd/koRJmFG+r8i+Ei6Buk9yLn+NOoDzEkmSSthfQQkXVwprNho9sNmlHfJv2H8FMPfhPVCgAVZzewncUZDTLdx8UHvps2NIv67ZfwxbVD7/vncI3+a5RtmxXJr7HpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757576993; c=relaxed/simple;
	bh=zEn1Efp5DRMXG9jk/ccF/nX0EOxhmEr9qbFxsxaAv4k=;
	h=To:Subject:From:Message-Id:Date; b=WsahyTulKuGZ5qxkNagirSuWDOLwqMV8TnUE85Z5fuVvtEUHJiCMTUYe9w8oyJcaPnY3HTuLO5pJQD0mGhsI5I0hxh1zE3rhZvFbKMBejtsC9Mjfx5e9H7VoLppjwsZeoiYJ834ShtIEr/vEioC5ZO2pGTaWhC9li8TR2GaOYhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fXxxz8xg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fXxxz8xg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16C4C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757576993;
	bh=zEn1Efp5DRMXG9jk/ccF/nX0EOxhmEr9qbFxsxaAv4k=;
	h=To:Subject:From:Date:From;
	b=fXxxz8xgkpqFIjnuQMmtpiOX6wawBDFpcsqmF6MHNLR1qc386o04MBqz/lxCiilN7
	 oiuE2FBw0/IuksIq8ST0K32e0B/0angE04o3FeKYTY4WpeoaWNr//o7IattEqt2lZ+
	 6AGwiqJNowor0U91wFcxJCc9WnmJ7HT+NhyhhXMkBUVFRcaYfkG6OkE6YfgddphvG1
	 syXfaeXzxL+sIZ47vD5YR6Sa5muogOVtwd9a8b71YCe2QadPisLKvVRdpBnysrxsWL
	 BVTKqaaB5lN6VSIrdfaDas5p7axF40tqUcIVStQidSPaO+rGNcWkJayp2sQKfSIw9f
	 pI8gMD27s9XCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9B6CAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175757699357.24067.7111554611033123440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96d338291018c28b7db0bba38919d64c267f7cc32bdb49427b1e273d9f5d918b
Date: Thu, 11 Sep 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757576993
