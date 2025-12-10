Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A614400
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 00:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765326774; cv=none; b=j5pF8IhYuV7RU1QIH1g0Vk4eyQ8KkS7mXnX4WxWb/MnvyeDA5LNeKoVBndH4rmo8VprzS7CfDJQJq4Xhz1TW3JmRvqpU59Md7OzxXevJeUCBZtxDzye9nNoXNiUk/RkTrRac4TE4xbbIRpBD73E0jUT1XImRSVGqPXP4TiyYx9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765326774; c=relaxed/simple;
	bh=mG98PAMgqY7g01KPAD3xLZIitBqT7pc9K1etWe8YMAg=;
	h=To:Subject:From:Message-Id:Date; b=feWrAsidp/5T+cnwGswG7vUfFhV51YB95uLw6ya/CAqQ8QCWwz1hw+BxqY2gxX3P7wjvgONIizRUIY8X5nLJtZWQy59YGY5inLFljvcUPlCxb3ZDtKMVM8PDhI4XSYtKAy4SffyBjyyM0xiSR3pH6EQXqaY5pv0NihqLkj3BrFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LY58aaOV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LY58aaOV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC49C113D0
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 00:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765326773;
	bh=mG98PAMgqY7g01KPAD3xLZIitBqT7pc9K1etWe8YMAg=;
	h=To:Subject:From:Date:From;
	b=LY58aaOVMX1z5xJTGpEtT3arPQa/71j1NjOS+pjQE4yw3a4ol8Pz4MmdL+ydZcN3F
	 XzfX6FAysusnsMwxn/dnmKF3S72RRTAIPJrGA8Y4EFGnZYYzeHhQiczXiiBKRRRKxk
	 f9VYrqsNn3twR2MFX/ykkglL2YY6Jo1BXB37F2EoBtNrIgF3LCaxPyhTPQkuRCGdoT
	 KQbdqjR7CSp462ZinX8idc/RIU3XmaT7d53hQlCAXfCrkUpAzsTbxIbRhZxiB4bJbK
	 jUreqLw+ifRYhhzZtgw5yY9JxGP2R6ZlcrkvU6tH9CdM0V3zzh99pIeQjXNFi1j7aY
	 6t/Zkx1ZPHCLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99390D3B9B7
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 00:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176532677361.18025.5318834392770718634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01592a2eb3228f8b5859815a78d1216bd7dbbc38daaf4e23643e965c29684da5
Date: Wed, 10 Dec 2025 00:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765326773
