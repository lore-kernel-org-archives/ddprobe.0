Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B838C476CCA
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 11:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784807435; cv=none; b=kBDZDQyPXondNLjLxApvw7lvPebzwkDzg/6elmu4tkeGGWMwgfC36sBZIVnZwwU0zL5m5pHgPetf7atccklP+MZ5y9jDnIvNzW8vM7BFIO78PBum1eO6hAwJbGfMg49KptdEMCuQFRQ6i1iIeV4BCDasGtNHMFrSKnjoU1v+B1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784807435; c=relaxed/simple;
	bh=5aoo0fEWxA2SFNBAnJMLZKwqNCMlkV2HwzMWHdFkR+8=;
	h=To:Subject:From:Message-Id:Date; b=MM+b8G0Bd/Yqlba995HeKU+xWXRw6LdL5UYsqEae9pahaXNQPNK4c2g+mZ8ASdfe+vK647t8h5Wbf1NO5CiaBL75GjLWngrXvReeVRg8GFJdRbP/9bexx3XDtQzqWpyW5uGGISPZsqeK76ncjHkM4W8kfdiOkxMztQwKKXiyEeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dHDkD4Q+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dHDkD4Q+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D12C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784807433;
	bh=5aoo0fEWxA2SFNBAnJMLZKwqNCMlkV2HwzMWHdFkR+8=;
	h=To:Subject:From:Date:From;
	b=dHDkD4Q+RAWhDRwfUYto/gsEupvzQSMN3kjvmaJ2/1rmbnC8ZLjMjEaob7734zp6x
	 rHgrJG/JN8TlCLqxHtIB0Yy4vYA7GK++gya5Aw72egqeS7fp+4QH+MnwwXNBLA60AD
	 OZ9W+A83UrIGgKNMfUVfCADiHuXd+UteT8ZhzqjLqHkR6Gp+ULbxCoLR8kKTmFmuQC
	 MdH2tXyKsXq13K7fFTc0fsKMn4CBZ0DIcocs4DU8SVpPOiEvY/qeUSrT7XCXPgBnvm
	 xj3X6LbUnxvXETZEKVleveFxiaDJVthJhEkJMJLB9K6NvGVanIEv2kDMBd/Y2rpwUr
	 CdKjB1d4r2/og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1CB3C531CB
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178480743371.6025.1164815545337313397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f56691a4c09aed2a83e5b6810c43a3725cc0192ac8ec18f2da30b1cc23b512d
Date: Thu, 23 Jul 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784807433
