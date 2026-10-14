Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0C850E58B
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791985834; cv=none; b=FF5UvTisok/2wS3oXH24qbU4s2G/KmEl4cxWYtD0wR0spiD5fgjR72JBO+MfGk0dZtlhqV6AwuxbcC+2ecEYgFJByLndsHGluQFL8tennQkOlYcyJpdFMSE8eWp3mZNIpCSYn4mTmrqX+23N72MVeLZ1BVAC2IZJdK1ELnLmPzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791985834; c=relaxed/simple;
	bh=71l2e4D5E+aOBXGQbseNI9Sy6InZSv6tsGPrLOlPeQQ=;
	h=To:Subject:From:Message-Id:Date; b=coYh0GA4oexO/jREzpoWP1x/xejID5VXUJi7DOGIjBTQOWA36VSHP1cg3UAUk4sMf1yCVqKq7O39RSXAVYhhPCMicOd/h2rEd7p4W2iA95h22RwfkNCzWxmXLEoI2gsfwHnG77IPUEL6FJtnjtYR5RQlM+ghS1VfnsxrhA4JPIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r9V8FX1a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r9V8FX1a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61EFC2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791985833;
	bh=71l2e4D5E+aOBXGQbseNI9Sy6InZSv6tsGPrLOlPeQQ=;
	h=To:Subject:From:Date:From;
	b=r9V8FX1a90ZOl314dLEt3uEGbDz7kZdmRIdMPq9nSRd31nS5z/mW/AtjJS9amJ+wY
	 lSFs7t42ZuMCD5IJkCZIuvbvf1gAzype1fAlqv3MZU6BkMgYaqnVb7rqv4WhVkdQvn
	 5pF+k2GAEu4qMxp+kJnkw8xEemiajWn9erWqrHWozwPGJX/dpEeUnCtkBVP6QGnVvQ
	 r9c20E4Cb2bRsIXVlq879s4pC1K4qMS6zouUQuUhU/MPMUfh+CuChxtRXZ6PJX9/Y3
	 3vonXVc2z45FUCDy75XV7yt+0kJiyoXG3MyRFrThuo9VzTzq1K9RB2tff8mCIqn4KF
	 /0ALJRSY3K96g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9FFBCC6B1D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179198583374.7609.9714333170196750768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2efecafe3f995c2f8fdc485dcec7089f3e915748d053e7b9f03b6a6e405639c7
Date: Wed, 14 Oct 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791985833
