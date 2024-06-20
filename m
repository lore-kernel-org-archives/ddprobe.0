Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F55F4F606
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 11:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718883623; cv=none; b=GxUQ+FqFEMBgx5n7Xqd/sqqoLjTfrJrNteDPw+OQL57ntbA/44iretM4UxI21TUqf+wBghXaIb1RAc4so5tLa5lvvr6CFhfuhk1/yxnHwSDt99ps+GHxEo3ZHQzxlq+voqTNz/22lrPcGL+NKyNsWq+fpONP4lH3Nx1V3nBXkUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718883623; c=relaxed/simple;
	bh=8MXy7sE9hm0EZOhr+uLh9HzdDl146psrN0OLyYPRR+4=;
	h=To:Subject:From:Message-Id:Date; b=PXsWwHp+mHfaTpyR1JIBINeL24Q33NQLz/fSszr8nMF/ddXwrdypT3y+sGK8IyLXddQhtZ+g7jIOe4AO2Zd0C24DDtqyDAeK23kDzX1CHVJjXAH1xZE+onlMUtjoax9+qRT9B0/RT3X+PfF2bAlH4Nu++I9XT7g9a/KXSVlZJGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8fNUypk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8fNUypk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD392C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 11:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718883622;
	bh=8MXy7sE9hm0EZOhr+uLh9HzdDl146psrN0OLyYPRR+4=;
	h=To:Subject:From:Date:From;
	b=G8fNUypkXAXjVtDnJAe5CmXB0uJzQOHATIP5t1nLloCYi9OMf+/sTbnqFSZEcgpCJ
	 ZDUXZOp2av2rRDFOsdbXiDdStk4pF1ZxPS0g7TJjInHnQ2ZbCEIi8M7d76qNqHCgBp
	 o/G64fmQrq+Cxtg4NM4MrY6RC3ZSuK/nE4Tx9ZnEDWHxFNPOOGvQFEa5ahNZu4VE2+
	 Rm0b86gdAi0JOk2vVfLrecd2yOB9VIkPu5Rq7gmYvplD6gpr4NRwZwELxXZOwsg87J
	 cmP2U9rSSOhqfRSY5p+IwkgzQZ7fBEdaqusa7YLhKy6yPEbvo5rTi3BVZmeL3CzM9T
	 ANRMQyrBQlGdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBAA2C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 11:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171888362276.13840.13747154381697129960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 389812a469d093f52b4752ac058a9907f785fcb76070b9b8b4d1a80dbec6756a
Date: Thu, 20 Jun 2024 11:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718883622
