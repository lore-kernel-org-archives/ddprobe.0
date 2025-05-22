Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3701128AAE0
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747915194; cv=none; b=bSNwVs9YOy4LuBC7SUmXIT++SaP4pRD8awblnexuSOmSYrt+5D7KNGJrXw1IeY4nTMx/BuXFfcd46/bZtSW62o4dI8QBiV51mf/J+chX/Gmg2TNSF9gX5bon5Z01z8uo84hlywR3Q7CbSaiShjnI4U1mP0rQVp5zbcW4eho/U1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747915194; c=relaxed/simple;
	bh=HfftTI2UYH6XHQa61Z5/zpoaHeTU33jSAeYnEy/Ejqc=;
	h=To:Subject:From:Message-Id:Date; b=iXFSALC9nYv6a/RC3ywvpJ6rNywGJ1ugU4Sj5Qw9EYmG9n/qbEdioV0xXWug5JzZbx0L6Zt3kk3cBio9zXwGH8sPi/QNweHyuA9yrwdSp083EmHXJBeDXFcL1EWs8jmb7U18BY4fCXOQAxNjA57nkvnePPOaDvEoy2ZA/Yq2jJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JMNtlOpL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JMNtlOpL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0471C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747915193;
	bh=HfftTI2UYH6XHQa61Z5/zpoaHeTU33jSAeYnEy/Ejqc=;
	h=To:Subject:From:Date:From;
	b=JMNtlOpLFwGjYVDBtgNCi7ICVyEV0wrerqudJY/Xkyy17cVI35oM5R0wNBp93iP8A
	 nD/7tNrK89qABFW+PnBHZ8eiiKeF4vuUvZWnIzjPvEFvA6DkxUfFd9zS2mRoXsaxTy
	 kL3rCLX3imyYtKfJUmJdyUq7vP5DAvb4oO2L2/2/FjtiFGCPePJB5/LdefLQ1vDRQX
	 b62pOFynQT7lwO5AxpeQKGC6Y/b6XXoRKYRp/nzHMtOx+wnbjs/qoftxvEJB2fyjcq
	 gX1o2RcBk8v4Rx9OYJ6u8SSRZEh7GngT4+MnrmvsLQBNbxAy8baV/OPmAaO6U+0OHp
	 fnZse7fc+E9aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD70C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174791519358.2627.12310795289526241381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f6d4119d828d526e32e69e743720edada6dda9f6a9ec2cff690a2a094d3c5a6
Date: Thu, 22 May 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747915193
