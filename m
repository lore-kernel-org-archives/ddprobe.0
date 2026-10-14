Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E701E47CC
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 20:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792010434; cv=none; b=MaO8uYw5Gi7k7siYDLdJAv3a+EPmw+utZKhcky0Up5sbz7IZxM9EHQqaP9bfZpHWIQOuBYMvAg53C+oz6C3WnoHkSpdFiRty4elZkRRX5d/d4vEC44tRMdiOBJps1A5FJuj8O6L+0X+g3EJntGlCxzPnGyOI+YH8gCw5i0KS0rA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792010434; c=relaxed/simple;
	bh=+ijFAtKCuQAyKuOywC+WKZ1+8Y2+Fi4uRLy78giXgYk=;
	h=To:Subject:From:Message-Id:Date; b=L7ty9KmIBB5dn5geg5RTWqulPFS/rnK0CJxCJnf6d3FAUP2p2dM9VdExGPEfGQOZQibv/T5resqTvoYwZ43F5fhOoS609B7CGDixjc/d6tEDfkSno203o57zOtX0//p7YBbPawlSySFwfj0uT9Xkpr3X5bgqbWzWauIxZO/rgG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T4j90xI3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T4j90xI3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C09B3C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792010433;
	bh=+ijFAtKCuQAyKuOywC+WKZ1+8Y2+Fi4uRLy78giXgYk=;
	h=To:Subject:From:Date:From;
	b=T4j90xI3qTwjf9WJH0BuV2FVFNo6hsuy96dJAxe+cS7nBs1Ag8K1aPmSpSh4fjajK
	 sExx7O76AchsesfH45/72E993UFduvywo2wP48biqHSNlqbZ1wfrC/845M2eE71HU4
	 sVaPqpMLUFlNLgMkKsuxWLLEuPs3KG0WbU3g5vbkxJp9k7bGN56Ks/MHwCCfkiYCYl
	 umrjdyHNfY+Z58IjrDqJKY+/K4FsWklNhiRXMX5gebBHug7TjNOsl/p3MKEhBnMpH+
	 Ad74W3gcZ3zY3BverWWhF5WFYRBpAR0DdsCA1AHLAKuq9D6hLViaYE7JU5a+kDZ5Hl
	 UnzfPkJotvzLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC491CC6B2C
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179201043369.8169.4486924044794398917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb0bbd10888ce2339875741a629eb30614a3d6cb4dbcd1eeaa991ff4bc0320a4
Date: Wed, 14 Oct 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792010433
