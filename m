Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337A817E003
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727647554; cv=none; b=CDJlAWt1l9AL3tbPGIWFS03DBd2jzvGqmcpzSus31VW9XHYsw0ROJZXovRbqFnzQG5WWl0Dq9vmETsI8OZtNm5MFhZznMqCVpGSVEjh/jcN8xe9YVRAvNv4giJ8k7wH2fyw+l/63doO0gn70gohjRInclMJylgJ72ypvAX8NPUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727647554; c=relaxed/simple;
	bh=AWdjBIzfp170aFLKZbv66CSk4f+Q8szVM3c7UVQQ5SU=;
	h=To:Subject:From:Message-Id:Date; b=dC4+wCLkc4BPEiIzxEKzgBlv3GDiU3jDzOg2KTbkubi3Ntv1CGTQ27MU8G19y4mX09yGtx/3iV85gQY0AWI6XVsrvM+7KC5upTRdC8nhvor9NLIR16KCOcdKCWFPnK3scaiZQBXUWK6muA1OKTGuNUiKl+bLDmagjjLKZ0gUr3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R3/yS9G2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R3/yS9G2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB3DFC4CEC7
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727647553;
	bh=AWdjBIzfp170aFLKZbv66CSk4f+Q8szVM3c7UVQQ5SU=;
	h=To:Subject:From:Date:From;
	b=R3/yS9G2DpzqA8pnjLeMApK/gvmwKdnI40ftGdQoJT4gpsTwVooFYGXml3UKxCg8J
	 y1QqgDd3WH46Kx8NLR5JtzgvH7Oi04rlDiL3g6PHfokBzOWROJlvsg0GFNCZGT9AsK
	 BcDrHpqFQEMMcyLWic8HROU98rKskzSxC5IJbX12JMBwpOzSfQnFAtymiJVHxON0m9
	 cIsZp13H+6y72Aux6C9s5npD0I0nDP0dsmOc7ZeGaOvoSw+4KGQ1VlocDMln0PY8Ko
	 gEceqFuLeSzOzRkagQ4l+R0NCbYxeCNEhST/OvUCwHU6/c6bZ/kIufzxiebCSlnBXf
	 ZrMlFKkKYLQXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B81BCF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172764755360.8091.12561524499289876907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f759c46a7d452aa36a46d1a187bc50f57b791347ac0bd7c19a7a3ddbcdb01b84
Date: Sun, 29 Sep 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727647553
