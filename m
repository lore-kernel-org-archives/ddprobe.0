Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE0013B7A1
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733661354; cv=none; b=UOvtLVCTCTpYwnBhmTDcCegli/cUlxXMmbkqjOtT1FRy+d3koNVwhMYaxUgwDbDKe/F23QmNx9sZCF3iilaGAAW9baTdbVllluaJh/k+6Qb830pD4+r61ekJYOT7kw/gUqaQ2Y5B+E9ovkIdpzr4Qtctn6MNyDvwfUdy+aNsWpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733661354; c=relaxed/simple;
	bh=bt1oWug1mlPmSf2Q+zlDfXO6K1JyuUFGWkI7KUqBQB4=;
	h=To:Subject:From:Message-Id:Date; b=JQkJPQJ9Ht3HlK0TJS3ICKH39x2F57WlzvC1f4qE8nk5T9GUKjaz5jVJs0SxIadAxTTTEIi2weLmRfaU2cqQ+SviOi0l5EZf05DhUjAzaBC6D1O3rBdP5AUHHFFJCSic+P3DP1XMZ3D+/PkhF2tZtRlBFsfUWhSBqOgVspmZf3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pSGBDMdf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pSGBDMdf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD25C4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733661353;
	bh=bt1oWug1mlPmSf2Q+zlDfXO6K1JyuUFGWkI7KUqBQB4=;
	h=To:Subject:From:Date:From;
	b=pSGBDMdfDmROt9TQHtJRyORTXGLRCfi2RKAMMoXwF96/GzQQ2aqIjFohCHORc3Q3+
	 ajtnGcLV45BN0pEmp+lk5U9232ESj5JdjTk8Q3mu3xpml4K5O0bS8zNhVaoEnG79be
	 fDYB9wfuPGp64Tlhtn/6XiRY20mq8SxhfGGf/0rDwb3gIRSLxadYT86UfWCLUjRE22
	 IZkA1CNPVZW/dcgCao8p+Zt7IGGLRgGyeJt2xaZCJiCDFmNhaKU9NatyeI5nSPkTDE
	 QfYznl2xnu1gWtcRqnGA+yt10L1i4PuIsMeTlVHYzEp4tnCQ1ehWszT33O10NpFcfj
	 YFN2B8T8TigGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FD1E77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173366135361.21144.12080237771577587646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b5d00f1261026fe381bb15f4eb0245c4ef0efb757fdf16d1ae81414a588c37d
Date: Sun, 08 Dec 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733661353
