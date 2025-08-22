Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDD6393DC6
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755830994; cv=none; b=ma/URtqWvDIbW9b5LjdwJZILzwSercsaoSNyGM4XMCopDvQGzPU27w3aMVXyyh+YJjFdf/dNBxRYm764te0kk2/4XJuAUEnyxd/SbrMwOytPDhNInmEMREkMS7fB2Dd/2moUz2t3JlHL0Pc9MLWH5MFnFpAYQZL8u2czZPoPKVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755830994; c=relaxed/simple;
	bh=qYv2ikY9nj2lcBWzSHqYmTFSkdBdqPMhrEitCK5NsSw=;
	h=To:Subject:From:Message-Id:Date; b=rjNCGf3c5L5M358Hmbuw8wf7vlC1HtxJ8h2T118vgjf/BsS1J1jsVnOwD3hxiAXnSLKlTBJWlQlw15MfRthlazaVW4DjSFcb1pmLt+3LSiHOhO9yZNopGTe9+iEEPrCbEl4lzyLd5u0Q+9Gu99DtgWQEN4XPPpDIsnF+RYED3sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WWWjU6p2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WWWjU6p2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D0CC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755830993;
	bh=qYv2ikY9nj2lcBWzSHqYmTFSkdBdqPMhrEitCK5NsSw=;
	h=To:Subject:From:Date:From;
	b=WWWjU6p2Kk+TiKUJjXQ6BVV5ZZP0PYf2TrGvR7a3ix0RyW2G6/gHskc0nQpgZF1Fh
	 fgR7vAphLnR2PUjUCN34/fNr+YReTm2np8d9ciE3D6+mrczalfAN1AjmM5B59PzrKx
	 oDXoIfFR0Y6xfrnqCtFQWhJGqjs5FCAOF2LZjR9NHRmW31SzuzXD/Kn62QIlsZfPzG
	 k88IhQBPRB5deVwf4lSZtVFwmQCcs3vFMOcVZetCdbnJktILGuP9/REUAw8M+1CqyX
	 y+eOJwdaNJW8utzcdy4JNsJV/pDTGLngUVXBST80DZPyzd8jxe+GppwRRlCNe97+QG
	 bpqaCNITXfKWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936C5CA0EFA
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175583099359.23690.14462312965514501034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90ef8c49c5799e244d25a058b11eb51299ec19333da089b3a68bc0d1e6e0eb6c
Date: Fri, 22 Aug 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755830993
