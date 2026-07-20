Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DABF2AD00
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 04:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784521714; cv=none; b=oPsVLwABd4QmHeYiVIcij8ZRpJ3mHV6g7MxjqWb2UYQrNZSIt9dAtW1Bc0jalx20iLPIgZJwD7ARVZEDNKKoYwb/29q5hQluAEQOR4iV3rqkH145dFnYQEKVGcQGDzpcFN+zlIsgtyw+N65FJTmlisVaz5Rv5aIkvts7XdNCagk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784521714; c=relaxed/simple;
	bh=dWHR7TqPliO4RPZ4nstLtcYSLSnCxubvnKOXCJi2YWY=;
	h=To:Subject:From:Message-Id:Date; b=GjuaJBtgsUSRwZ9MsHmD/bx8zACLcrm8wkNUQGgX8F9PqD3ZdD/foMf8/IfvUm8yE8ZokrH/ql0IuSv7fSZJNW57GLPurS3zsdYoVjG+RGM8ixRsG+W4+qcmYye9QM180ueqgE0Dfo/z23QUQN0kTOUgSsrwTJekr7ctrO9+npo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RXdci4tN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RXdci4tN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC32FC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 04:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784521713;
	bh=dWHR7TqPliO4RPZ4nstLtcYSLSnCxubvnKOXCJi2YWY=;
	h=To:Subject:From:Date:From;
	b=RXdci4tNX9uDyk97VzzIzgH3ghSPLmkVfhsbWgbvcx1eJR7wl81RRGigMSqBxnUL/
	 AUVNjmWx+G2+fAnaJOA3xUnKQm1Nni9m60U+pMczUeEVl4dN8Q74ZMKTF8ACVDNFH1
	 KcXgErV68mFZG7FD6ZQDH+1nnMqdq87+tYWrnPqU8yEraXqDRWz9CYqPvP/6fyLEM6
	 u0qTcQoDct9SFKYyxt/IjCRyC2R5K8fHHXeN8eiGLkRoASRhdpfiT9DXpRW/s92UnY
	 7g2YQgAilntwe8SuDEcHanLtjQbU0zdefW9e9cKBaDpTC514UNAv5n2CjBVJfY07Dy
	 MEKDqCPCmwq7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B24EDC44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 04:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178452171370.30154.13181132305013261792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ef2415a975e8787eb502ce4526f9810333bc5ceb2efb1ecc6ab39a568e0115a
Date: Mon, 20 Jul 2026 04:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784521713
