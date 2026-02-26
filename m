Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0415C368957
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772125494; cv=none; b=BkFByELrzlHYYn0fLVFXLsIRt06KLKSo5SbFQja8iJZe9vqE7I5IK9SbrUFEwgjCnXNi6UkGx1NUlAfUdyZq6mNO7hr7Kc8c2r+khCg9fNZ50KuJlRd/8j6q7nULkxbvmfeA8w66LICC2jhIG8Ec50Ws/vrjNg5EbXXRLY85eMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772125494; c=relaxed/simple;
	bh=ZRigqiD4K9KJ8WbbJDshJxNXz9z5NWDqPY5pInsWyno=;
	h=To:Subject:From:Message-Id:Date; b=VLfkc67nfenSqj5lMDHI2LEedBZosRHDCXMVZ+RJ8iCeassqVJLLWFiDwDRaXdpCmSResjpdze5jcYT+wMu0gfI/ioyWTPABhdMX6/vTEa/17MiJr9wjE8O9APNgdrLiJznu25shmOQDBv3VUS2wc00dgc8yMgCHg3G9aGBHbg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hM47ewFS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hM47ewFS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB198C19423
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772125493;
	bh=ZRigqiD4K9KJ8WbbJDshJxNXz9z5NWDqPY5pInsWyno=;
	h=To:Subject:From:Date:From;
	b=hM47ewFSYFImHnDNHuE+yMmtquL0h93MKOS39OLDEZ0NZ3Agw4FGY+EpLf5b2lI25
	 h1y1KCDOQ9movIbu+OuNhN1oqHxb7/qNx5fRd4vU5amDXMfxIL0xW0aUAW6BUV1E79
	 3Y3rOD5Z3YIDvlWhvPqt5i2PnqoNturXc70zZMBF+TbJ4B7uPusYxv47ZFym67WItG
	 cWk8RW2LtuBOBLCpq3N90n+y7HstogktTU9bZh6w1u4iHxIDVXZssVQ7b8gXyMx2D3
	 m1XtyvzbsLx7zLSZMNVYG5nhCPBUsmhDjB/F85GHJ+DWr8Ep3vb18pE1f4oZyOEC/n
	 qc9qia/ITZCWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956ACFD8FE0
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177212549359.14504.878695459237198574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f995c5475e2a03e54eee384952422758f39aad13fa803500a705b098cf4a217b
Date: Thu, 26 Feb 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772125493
