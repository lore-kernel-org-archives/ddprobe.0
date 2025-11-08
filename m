Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 560D623D7CF
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762631394; cv=none; b=LCVp1dSx5NJ8N3cpOcxQj74Mh0lPdDeRuCHe6uU3VN/viVZos1y2MllfKwRE56qanI5BdJYvTKJRHVCXNec+W3RpHrGmRTYM/bQvvc8Y/q/emmQ/MZPZxod5V3L3iKhMU9qSA5M50kwpiRPtP3drpX5ygXJBxtvvLU1kGD6ICyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762631394; c=relaxed/simple;
	bh=fcbVmZIT+E4FhYDCPeXK+HHfYaI2MSuKn2Xe/p9Z1lk=;
	h=To:Subject:From:Message-Id:Date; b=YJ5FMDA/YCKRtPxWDCZqVy9WbuG+bFRoh70PVIp6vB5fW2ajhMItn3Z6cg/l0jWHbFuBnerM/ZHGzdmmC7aQCwU9uKE/U7xVkbnhuK0p0+uEesZc1Qhb4v1LYiLGMlgDvoe6+5rDSCF7drsujqveM3vA4QbArwnD+Zu688YZX5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNJMJqa/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNJMJqa/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56AAC19421
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762631393;
	bh=fcbVmZIT+E4FhYDCPeXK+HHfYaI2MSuKn2Xe/p9Z1lk=;
	h=To:Subject:From:Date:From;
	b=dNJMJqa/RF683W9q059YMKMsQhgJ3tJGvCNucuiVeSsVF1Pgrr9d/0kLLB8Y6VU5n
	 Yda8PXTgBYhggJK3bpE7VFOgRrWL2F8/Px32/EcZgNxxYHLxSvoTEdUWWTf3JQcVb1
	 p8+OjNPIssGR/AO9rq4ihXw1gOoj+zLe781AtM8jK7BrOB4sUcgz6Yn0iehl+6Vlue
	 MFgB7QPJKIliBCcb8FM3j+S6SoCztwE37yGy+FddIibyiOWrkkFvTcU9dWhFEgU2gL
	 9wbja5XVE/1jGFc631P6pSFDVDJCe8tnkysG3sGDcFue0MXmTBFqjnUdggVGYKmNEP
	 MvmnmLJKAM8Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9984ECCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176263139357.677.2975021224267510453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 472433d0b7e74cab38e4516ce63942f52da93472b83bd4a171e2ef0926be12ae
Date: Sat, 08 Nov 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762631393
