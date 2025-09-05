Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A0E1D9663
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757054994; cv=none; b=RawUHj98yAz48f562fyGK9VfKTAIchyWcDHBq3Hpan9fU0BGGUI0SIMMolh4m17rrStQjaiHg6SaYCx55jffplPKTGqK0vCuF7D8TFkyyubWegNnkHzFHdDvjLnQ22tFXSnv34xr8zwXGkA8qQxzyy90DSiohoZGbr/hCtxgV8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757054994; c=relaxed/simple;
	bh=nNmSPXqRxwjJNFbITFM834gZLjdPYNSb40YCOf5Xw8Y=;
	h=To:Subject:From:Message-Id:Date; b=tAIH73MD8WD57O8N45hOz+BPrRW4XRUHwdyu9ah8pnq/LQUffRvS+kDmOSQLfmJIlsoQ047MfmB8LDONBpMQw9B0ooltNhOdMFXLhTb3rrERu4xH0U3WL4ZqDC7JHEVYhPDIbB3V5oFe+rCFBuwmfZscNu2HKCZJh+R01iMhtd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mHt+E5El; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHt+E5El"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C67C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757054993;
	bh=nNmSPXqRxwjJNFbITFM834gZLjdPYNSb40YCOf5Xw8Y=;
	h=To:Subject:From:Date:From;
	b=mHt+E5Elz5gDA11Limq3gyhiqS+o1bK4jZZvdNHt6a3qHRUGk+KhVyOvjohSl1kFh
	 QbgMcCIXA4UDuywiR08czXHnbHXP+fOu66R7zqzRepBkaqW9s9FMcnJHH/W7uzUW1N
	 UGwQ6mzo0qssujwcNTi8Q3ZLua4F17Hqn/yqr8J8lgnN1Sh71iS1u42D+Npgp7wNPq
	 6aBUPJ5bVExWRvBxD5Pel4Gk+1ph0UzPPL+ih6PTJLdz2oqGElWxqSSeW94kpnPBnK
	 HiJgnxZN8ylIUB1ap5rAdH4tESn5d24cPKua746iYrwhBcKg/XjeJE9kY09q9d1cSj
	 qzmsMcXdqASxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFBACA1010
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175705499357.11833.307559040240828998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7267f84c09a74def866cca81169e208a8e517a93ee33afe4ed725e745c05be98
Date: Fri, 05 Sep 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757054993
