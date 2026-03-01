Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D593280CF6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772401494; cv=none; b=CcrJTWUv6wfou2npXxZDrYBhxYbbJ7NFWmP+OWEG8IC+XCqF8tc/lWNxZLTZBmkNc+5n3ovxT3VXiXWg7Vqa9Dorn/l0Ns8DTPGRwvZj6xbJ+sg9GtG98lPDmPe1YMdV6Qs/H1kJVC9iRHGBpFTx27pfcng+X4mIkahAByeNP0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772401494; c=relaxed/simple;
	bh=Q7y9YOLh/vnLeaBuM7g+gMtMwCop+Urh+RHngs6ODw8=;
	h=To:Subject:From:Message-Id:Date; b=u/9PIPdK/2sOkiiC3SiP6o1CAnntBiEjdcOfYc+mCR3nL26mi1LThmPwNQVPak7C9qrtt3EGa2JPGt4Ap6JI2T844QiZwD9mG0v0HVu2p4tYm4JF73qgTqzRYX9dLZ6igchP0v8qcjbk+7RVfh3Ic59WA3CMhQ3WH3pgPtinO4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SLmA9Lji; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SLmA9Lji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5120C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772401493;
	bh=Q7y9YOLh/vnLeaBuM7g+gMtMwCop+Urh+RHngs6ODw8=;
	h=To:Subject:From:Date:From;
	b=SLmA9LjiSf5gFC/bMmHKfmwu9NyVQQRhpXJKPzr2ydlT/EsFddBcG8d4RbdLs/Jsx
	 zZPhiOuafv7PO+8xveY/uqDjuEzAEaHOY8cCNXJzAhmujFOU5NRL9uyWA7B3+EW1Qm
	 mxPTQ0IH3djkjd5Dnu0xE5L9HKd65V9hH9BJknKLc9QKiYJYhqN2yzWLpmGLcU3dE4
	 dIbGS9GVJcUFVvccJYrCsZffYkfJ6LdrZnxx9dM0ttNu5ktdRSOX7WiR6RQKVj42ug
	 E7P/+1sWHnSrpLRgrBilk+PDeYR9X0JCP7lNRWOIM2YM1J5Nn9HT/CW2+aD0VE1gm/
	 Y4eqAnp98vjeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F26FD0078
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177240149365.29670.2542976105940381997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c872bb3588473d0e52334c3273a4d5992f0894e67b1c8a3c748f0a702fd4f51a
Date: Sun, 01 Mar 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772401493
