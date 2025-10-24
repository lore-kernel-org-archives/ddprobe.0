Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333221A5B9D
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761346194; cv=none; b=qRspF/mHPPTKkTyqnDeL/0e//yyj04h3DN9ZqMrgKdYgh+jt5rHjeOqt8zrOo1xn6lCq5+UnmkmJ33gSUK7ZH5nlwLHJ+BkcPiKaiWFFvY1l6gMtnZ2bhigBJPxXjr+ulj3tQGag8RA86nLo2/hno/rJOTjgeOVtQDyKq1E7lQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761346194; c=relaxed/simple;
	bh=dRJmvXHn7Gl8EME1Tp6t3d2zI8Zzv6Mjdv/Y7Us9NSA=;
	h=To:Subject:From:Message-Id:Date; b=N9C4MzupbQLTy/e7Hik9VC4H03EnhBDyGJ3Epjl8KMBXfV9jugvgdq8W3sIaEi9dUbZMjmdERFOAdsDTlV+4ijpadnoia+Jm+VFTiF4yyQK0+lkVRcxetA3m8Ipo7YcLDgtmOojGthiTFtAESYiArD1Y+mLApOf+wV3O8Z5XoFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JdXuwRfl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JdXuwRfl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FD6C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761346193;
	bh=dRJmvXHn7Gl8EME1Tp6t3d2zI8Zzv6Mjdv/Y7Us9NSA=;
	h=To:Subject:From:Date:From;
	b=JdXuwRfl6AIES7hn2+5J1pVyb72F1NAT9tKF/Ga3gxUoN5ls2Vn9pAx6TO/a795BV
	 C9v3jlFzxzfRH6MAptZ5a4SXCYsKV7/kCgmhJC4vN7bf+JRJnMW90uS6y48eLCYnhI
	 bhqK5j55bE5hAn2KMJQRvZafyrxXd7ndT8gST9CoMox+SgItjzKIIxKszOXc9y7aDM
	 Q1hTx2p/WOsGLJ02I18zAIdekwNpT92fC3gzpIUn2ztw/YI+MgxZL0nOdum112s8I4
	 AxgRqHhDHit3UtBSc9Y9cGsNgw/ftgM2HsuP+b5bjJYzWDGLcABZavkWwZ+qfbvFvJ
	 1ONkyBR0Mhqjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEB7CCF9E9
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176134619358.17924.353719753280385083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef24a536ccbcac815b517931caa53f0290cc68667483e60b3f0460f98995af15
Date: Fri, 24 Oct 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761346193
