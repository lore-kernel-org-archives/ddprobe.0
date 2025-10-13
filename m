Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221A82DEA89
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760334594; cv=none; b=NeL+3/Q3EbUCbGICYA9HnfmpJzp/IdbCEAajkOymL4I1lXgSVVMYUT8gOjkF/3QJfxAD06efdAdeWWuzkm70gx9YFyv1O2ibAiovMUopHzmakDPKxyDW+WGgpcKse8l7SdDCae5D1XdH4V0u2Xzb1SXXO0QA0Wb3wsZolvXPYAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760334594; c=relaxed/simple;
	bh=KNo4XR2QWxUywJNrf/mgbGumyqttkNm4BvYwWt7MQXM=;
	h=To:Subject:From:Message-Id:Date; b=N3dPIrfoidxIaI1/Zb2dTl2D1BzgJamx4AUZzpqzI7mS4rLB0eA3981naqOxNhhd9k3RrY4vShQMjMSWK24VzTqkQYBgFqPpZm74Bsa3UvVlI2ZQ8qQXNW+UoN4uVAxo64tgDnrcOk92LDcF40Og7/nwA9u2j4+sdta4ntvsJZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXPCu/sW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXPCu/sW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE55C116B1
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760334593;
	bh=KNo4XR2QWxUywJNrf/mgbGumyqttkNm4BvYwWt7MQXM=;
	h=To:Subject:From:Date:From;
	b=BXPCu/sWqY4eWh/Ch7XT9K9/l26SNI/iRbpN91/hmdnnJM9bkZ1YOvrmJktFSBQUN
	 avBCk3imbwSFyRDp+JG+EGvl+l+2Qvo78gLqNoaFd9BcbZAIqcXF54FilQsbg1+0/+
	 hoT66XHlxC/1SGvVDFrQBxPZoJy+sX4Wwzn2ZVLwXsEDH/vwSSdcPOY5oUt0WUO/Qs
	 DgxM08jxlPHOBYq5x1VulaNoF2uwILFjmTW5gBApYKu+M9CaGxE+yy9RgKk1dOnPqL
	 6Lgv0bvXwcS5CGYPc6eG7BlsJr8g+Y3EAJ9SLcE/CQqhpydFpeEj/fnkNWM4cZMgQD
	 m68Ai1MaJ2QYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B456CCD185
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176033459362.8974.7180418811128774659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 286e7b5dcb2f770afa23f8471a93ed1b69a2605106f61c2c87cc9b3f4d4f2d54
Date: Mon, 13 Oct 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760334593
