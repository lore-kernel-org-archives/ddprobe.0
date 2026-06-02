Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D166377560
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 20:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780432474; cv=none; b=DSAr5vzHCdqswPb/IULpfa4giKxbY07gMrBREQ4+31I/7P+UlQYz+lgrHSmnMcBy7W77geABZQsNg+HFIO3YBLxBXtrEMogQKMngwr6bem6k+PgfRGIW86WIqPgBkHmeGDaHny2BBHUJEE6TAvUgw9STtidexZSFQHA3mq5KJmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780432474; c=relaxed/simple;
	bh=dK4PG+mnUNrgxhcbkSGeCaKtpgdYebyfPgB4rgrBsOU=;
	h=To:Subject:From:Message-Id:Date; b=nnhCRdZiDsChqwxTFWDk7I7uaz+qgnUq5+j1CXsWZRTjJJDdc9VrYXRVtCm49/pya/tiv+pI9iO6rrfK3iKKH/uL+OlhdxnL6iVN/qjFcq0MaUcK2nZULPsRk6NJ0FpXzkvQVOR+DENwCPBCGxYOojWvSlTeA0ZSCALAuqVX37k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F8trDLzp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F8trDLzp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C539DC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 20:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780432473;
	bh=dK4PG+mnUNrgxhcbkSGeCaKtpgdYebyfPgB4rgrBsOU=;
	h=To:Subject:From:Date:From;
	b=F8trDLzpltph4R/gDOgLijzSPZlgiC/QrXnu1nTFSl26nXwQjJwPJXrcWUawMwFNh
	 abI1v6swOvb/5jZ/Bf519Uj2YOLHEH9aFE/vv4zG0T06q2pPtNiS3aZ0mae5F3ZCF8
	 GzGJdhO8xFVklkzHkqF817Jl9eTsag0DMfc00viEBThN7BiCHstyuwcHwbRQauywev
	 3GFHs8sDr70AaPl6QYsT/4c7pOp5qyQCMitXv7Zs1rQyeM58YCpAp0YeH1i34j+rQc
	 Sq3E/LhGr/Dx7lS9ieGdiWX85ca7vu/yhvtE/+TXP0GKtBOFdrXcU/6RI1hGC+l/fj
	 I2JXfAQ/b9FdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F36CD6E57
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 20:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178043247372.642.14616677898158069043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71ea3096055b01cfd2f78f7d150396d0bfb3aa41a7eec94dc2ef8c4f3226b0b0
Date: Tue, 02 Jun 2026 20:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780432473
