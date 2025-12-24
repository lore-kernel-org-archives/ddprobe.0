Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE67257459
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766537034; cv=none; b=t1o1pq9CdzKa55Z9qxJadEXMNEaLHbHXDTBXH42vFzeEqCLaisI49+pmGcMQrzv2YgoGzzMC0zQK0PODKgu4hVCIjADDr2PS0yeHQlMIPbHLbGJyncfYiD7M7AiYRvnx6dQ+0QstfwYolUFR3Hu/chFgO49xKMZG9X8mP5/wehE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766537034; c=relaxed/simple;
	bh=vESMTSM4M07yMzITGoAyaCdBigXiWUMT+v3/BxdxmLc=;
	h=To:Subject:From:Message-Id:Date; b=exF9adRl7J/Jm6bXATsTa6gVnK5pGVBhTMz4jFNvf54b58C39pjZN3yG6XBmmfqIuEARN/9PhCKYSb3jPEcnaRLzWpOVX/CA2/h5ser9RDge4koySSXFd1Z8voDMLFthODHqIVvwAnmErPQpTxzcwttwXVIXlTzBRGp+B/lV1XU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZjKGCin0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZjKGCin0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E16CC113D0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766537033;
	bh=vESMTSM4M07yMzITGoAyaCdBigXiWUMT+v3/BxdxmLc=;
	h=To:Subject:From:Date:From;
	b=ZjKGCin0CsVpoVoPfupTEOsssGKRnUZbssEai6BYuujnh/UMKX8QSVQOr+ILaAN5F
	 yMCb93+IMwDRNJORvrpFzHHHv3Od2L//9p/qL6SqSsLj5Y6VEQrutWcrjNGm9zdBtd
	 x1H4+N0Jutmfw345jKQqDGPBMoymatV9whhb2/VniHiMvG3sF6YopOqxB73UXkZ7e1
	 wg2t8fzwg7ReSWLhkR2cB/H442fYx/fUfWiHjbJmn0WaNS/dkyYpLsNbrfDv3Kowo9
	 KZdvR+ykb2q6Re8YHl/NcOmD9lZcUR/XZt5DaKVnFtn7QtE+9idyQHdNsQaHJ/pFhd
	 k0fCt4eSB2UJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F91E748FC
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176653703358.25190.11056220963751159792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcaccda6404cdc90c83c835043b73c4f24daf2251ce08e9ca3d20f01ae152128
Date: Wed, 24 Dec 2025 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766537033
