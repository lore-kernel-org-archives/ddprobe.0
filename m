Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ACE512E6A
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 22:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716156743; cv=none; b=XYhJeLaWYiOup1y2BQkTEVQCfcZD9iolDmvHFTzZBuJzQOCXYZozK+JYz8zUSo2nAVWT0qEbpcTW6pYwr/nm15rnfNI1pP8OS1kOOsgPKhuy+olHMs7js0IOXNXUaZ2khI+iL3w+aEt9cZk8RDbDmtEoVF6ABkZ/1dQwu+YxMKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716156743; c=relaxed/simple;
	bh=Z9bu+kU8BNMvQYlae5f5BSqVR10Y4NBCijNpepP8rLo=;
	h=To:Subject:From:Message-Id:Date; b=E4L1a6tjKfxH3W1xWmesBfQ4U3aK6TP37eAoYnF+o0AaJqx8lJK7wHoY5WJBhrmETIdr6/CLugX3QCq/2OXgLjQRfXK8xI1Pd0kR81lVMxB+y6LZP/ONB9MJFlVz9I1+ABn6oW3sKx0eMSVH8pU4wgZF6cvNKGWOtx4njbYygeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QOkGjacf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QOkGjacf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0949C32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 22:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716156742;
	bh=Z9bu+kU8BNMvQYlae5f5BSqVR10Y4NBCijNpepP8rLo=;
	h=To:Subject:From:Date:From;
	b=QOkGjacfeYda24zFhvwZ3MgHnlXWYA1Y0J/Tc7xEiumuDJfi6treJj4SSdJrDs+Bn
	 r+i5SY7ev322vmNCMfO/DyGnzWYmygIsB+z8IyFBUaIFNGJGx1RB5272UVX4AsCjXr
	 IK/EmCz1s/Rw42wHhrLSqk0E60M8NsYPQQhUz3E5/vtzudVOlzt+kfD2dhrCwtylvh
	 PxVEyTqRbmfEvlYLWfuosAx6BbhRmjn4NfiatBewBV4rz6EegfkwJF2kG4T0VhN0I6
	 obpcoHOv74BJnMtomC7Z7C6R45t+AGiREA+DFOwYapO7OR2pFmy+dCf+cMKsUBiSQ4
	 K+j8/0V9qUQkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3DDBC25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 22:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171615674279.23398.11137482629334561165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3b7fc9a55fd2565b7f95613dfbae20313c970158bc36024be3a9ac0963f9411
Date: Sun, 19 May 2024 22:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716156742
