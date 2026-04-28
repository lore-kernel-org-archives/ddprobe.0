Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DEB1C862F
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 19:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777406254; cv=none; b=GtWVtMqJYaMZHbRqWU/1vLOb8oevkoDQlcnTH5tmIlVANQOAtL8EfiWEwOB+HXeT3oYPb8KEvJwkjrp0deFAm7wR+cq3S6a0bVOdLzFzhWLSPQAEeHYFjCBCiV4sRh9JJAbk4YW0QJ0F3/wWeq6JfML2iCXZQheWk58Zc6Wfsqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777406254; c=relaxed/simple;
	bh=Wzfp/WSlxV1X4vnG8sw0LokrfzhH+EMHViprxnzInMI=;
	h=To:Subject:From:Message-Id:Date; b=rUNsyrGqcdzWCcvnudevkS+OfOvxgMqhUc2uTCg7u6vyIrznpCCHXJbg/Hmf5pcrXjC3XWPO+Zxx2wN2pCEj8bw3jTTBGSE9ZK44YpZOmCbkTBxFoLTsgoSHJ2pQNyLxbhQhr8al1RR53WaKcNua6/K2RyrM/4kty43UOGDzu/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CSS2Hua8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CSS2Hua8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB99FC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 19:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777406253;
	bh=Wzfp/WSlxV1X4vnG8sw0LokrfzhH+EMHViprxnzInMI=;
	h=To:Subject:From:Date:From;
	b=CSS2Hua87xRBDgrW/DVTt4R+VM68BFot93rFZ7R5cm6ra+BeT3zQxqX0C1r0+XLMF
	 DBUUcLjLsKdZ4rccIqCCgmUg/SB+sY5/m5qbd4x2i/SYjB2ujc4RhzlIGaL2EB9QXZ
	 ydatoZOpUTxeICkDQZbNPNHaKRY1uZFmw8xTFf9q+UT89jY3cvW8jwHxSDi/o7cBM6
	 0quyxNlTjPgg4sjPJMSHDpFnIwOaVNwDsdXedSVAIkrLDmFRpNRF8bSvZb07LnxYLR
	 ekXyy9ppf4v/0BVcrn3I6XbWB+hDymvFUsTzkFNqSlbDAG3EJ9Lql/fEk0s3UH1j8l
	 lQ+L8yR+QCCvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA022FF886D
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 19:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177740625368.15112.2765997326600867928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b95fd82b1394581474b666dc7fdf84b4bb889f82587c9996b16eb5f77bdb97b
Date: Tue, 28 Apr 2026 19:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777406253
