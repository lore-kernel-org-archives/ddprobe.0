Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339DA8836
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754135394; cv=none; b=D16lbT98i0CHd5eoJltKrxmbLrBVUQAjT0O7dxZ9lOXYneCAw6/1iQn/KcNBbQDnZ+xV1NGeDwhaYxj4dGrr2XiNCLDTVcOqkOgoSK1dixOXodpR+lzIkejzScFxmT0NO7XRwSaLHiNscOoOCVyviP/IUgcdqa1ScWpgAJ02h5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754135394; c=relaxed/simple;
	bh=6FqFkoQ1HxA8FEc2QbkjyIRegB9JDavLz5DrNr0JV6c=;
	h=To:Subject:From:Message-Id:Date; b=tA+/zjwSSzrUhl47CdMg/oXO95LIAsG59Qg5OFMw7pt+yQm8oKyF3buOBdOHSGzSc0wi8QjYKLdcDz0W8LG9pxvJi7gLiLodlAlEjAxJWhEeFnBM5EVvm2Cn0U//Zhi9nHPz2fY+HuA9NKwm7J7cSGtqFBT39v1rf+aIfpU7FVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GA7ZP2r0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GA7ZP2r0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5300C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754135393;
	bh=6FqFkoQ1HxA8FEc2QbkjyIRegB9JDavLz5DrNr0JV6c=;
	h=To:Subject:From:Date:From;
	b=GA7ZP2r0zR0Krxn5FcTaqQVhL4kgdk7mJWql6w7OnxJ9jNY/vhofhjuqMAj6sn/HI
	 EePFKCaE6TxmKdrJS6vqfiK4JthTsR5Kqe4V4vuky02vCGP87f+TNboXE/HieuIxf4
	 JYDREVh+6Qbmjd+SS9Zb3YnNwPhdkli/86Xd6Q20IfpjINTJd8eGYGYzi6FqM6Rcpk
	 tg3ArFNx85UeX5mvt04vjPNDDHk2YUQVRWv1pSU562VRVoqOG6JfLhHD0Y7j8VIJHH
	 Q1mg5o41+RLhNuSfo+XmSMz16Zq1fyU0IMeKQZ/H/JdEgm/9e+7DTvZ/PsXDMttG4J
	 zo7EFtm0BH7+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92129C87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175413539357.19114.14982845333590053594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b554fbcd3cdf609c2df778ebf75feb4a4f7911e23f409148f1504bf4d54a3037
Date: Sat, 02 Aug 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754135393
