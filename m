Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F40156220
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730455554; cv=none; b=SiQemyX6ir2kKdKth7jlrCPp23Bt4/hBU49L5uHSerB/xzfiG6pwcrevIPrfVc3IVii7J/nynza9Ir6ou323TPesjxjKJ5jkBPanRQRNKyceFSla7BAPncmtqgz5gPOIXMc2dG9YHbzPqUAmMWajFDTv5Nzw2+Yx7cX1gKPmJk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730455554; c=relaxed/simple;
	bh=XOYxNZ+kxg4wfBHqvX5BqQa7i+F5FsvArE5yHf0ucIw=;
	h=To:Subject:From:Message-Id:Date; b=hRNiQnwHwnKXm+AaO89ajFZXk5E4q/AmD23CpnsESBVoet6zeC/Mdz8emqWvCOVHfOCw6uXluSjqLuUA2iZVWJ9NJM2Bog5cDEyifyUOfMGAIXCPRXht103ubrdbo26lXL2yQErfv19ttELwqOfqel4T5G7isALIVw5g8sgrO9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CpRSLk/Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CpRSLk/Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA66C4CECD
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730455553;
	bh=XOYxNZ+kxg4wfBHqvX5BqQa7i+F5FsvArE5yHf0ucIw=;
	h=To:Subject:From:Date:From;
	b=CpRSLk/Qvh6Xw1axMoBxm3RCUOeYXST/pvAx9gXdQSHxb/sJ5re31d6RgK2rV+sGL
	 Ru86+4+ITE0JrIpOSCAnVCbQGhxglOTo30R0+h23+jkJHIPbvYpd/0qE0LnrajY8qv
	 rvGKmpU6xYDxy2LJH88EB4mywsQBhOXoRZ0eEZSCWYLU1npRei3cyPtIcghVuj5qKX
	 eyyy+iZJBCoC/dx12SQWQPcc/lABU/NwZmPJ9GrmqJEC38uMmS/BgKiQG9mfi0rmOs
	 XymxdS9274wGviFSFaPDNGvmVpzDy0KZoDnl8k+vVDjpDZnBnpwKXuwCz50LYP+AVs
	 o7K+qHeJEehSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B4FCE6B240
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173045555362.3744.8707688991970074669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56e6d3355dde29c902aaa606978f4f7ee2021218305c9901784bdc0e4939aa1c
Date: Fri, 01 Nov 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730455553
