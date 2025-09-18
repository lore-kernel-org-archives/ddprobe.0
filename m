Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2301A2222B4
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758232194; cv=none; b=GFHSxAIVoC82Xnbr7siJEJdWEL5uTxPJxSCkXyJOHv+DMr7xddP6fCuwmA0Lyb/96ZepUrm2wKAtXoVcJ6ljfN+awbz0nBtfz2cyd8WpPs8zAjRXiobexmWoHlV8Sog8HauwbVLwAXDDCXkLYtVMR7dpEzQmZ0P96kkqA4r92C4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758232194; c=relaxed/simple;
	bh=wNhlzzSCRll6Gj850eERNuqIGf5jxQvG+ar9OZZzLbg=;
	h=To:Subject:From:Message-Id:Date; b=o5CxGQBn8qnLdyOBS3hqCi7FPNnq/d6q4m+6MIQ/RX6VxqTWKcYvSHErSWvjyCxgwRToCJ1zAVv9Omclcgpg4M07HClqvMyKyMx8g1zDgL8RE8R7okMJfGLpzzIzBep0z+GaUFJgSjxPANCOhBng7E0HbgeTDsA0WM7Ws2EQdhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGFuq7sh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGFuq7sh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0757C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758232193;
	bh=wNhlzzSCRll6Gj850eERNuqIGf5jxQvG+ar9OZZzLbg=;
	h=To:Subject:From:Date:From;
	b=GGFuq7shmAsZXXcV6C45YIo+nzG6UYYMDfqLvyCDZRowru/IaVXIs3m0t8pmeQN6w
	 RsheTdacYVKgQNnWrtN14/XOLJouCPC9b4ZdkxC/qyvQixux6ORLj6n7q5jXANSB/V
	 gIZO1yUfzViE0kkogXVFYBhc4cmlmoR+Qu9KmnTqB4ZOQ/XB+Tm247ZjlK4c2q7NAT
	 GCvkGAHXY/vikZ0D3QW6SCvaG5Vyy3ubeOmEkFImMshkFTDVHNpDGce1lbucYvB+Rx
	 jemadXH5xFOjGRrTRK6hPMZ8kUzpUNVgDxGhahcs1uq7SsRdRrF6u5G5kLJpPum4uF
	 HS1VczA4+A/DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F176CAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175823219357.24314.18402799110906135510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ca0b24cf3c4bb5f3b1a7c0382fd9c7937c3ec487559957505992edb3257944b
Date: Thu, 18 Sep 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758232193
