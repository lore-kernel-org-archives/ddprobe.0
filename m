Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF65199934
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746106794; cv=none; b=gKU+tsEkXrXRnpfi5dg+X/PJ8NEofxMMEcfihhow71nzfcnt0h06zzrbq+ZKtPOn1h48AiNU462lptTpVE3bNL1VHubE7wRunpJJtIyyS9PiW0D++x4qtqd4b2JHReaH4JpjhL8KdTreM4VFBq5igvBT14XUMGvV4LZPo/PCiOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746106794; c=relaxed/simple;
	bh=dQ4gC+j4RTzuC81diil9eqQCIBV9Yd1zTkzW1xUKJ5k=;
	h=To:Subject:From:Message-Id:Date; b=cu2RQRuUM8jT8ZjiwLEmfZfEa90Bgt/pOQuJ03740s4dRgxh7Ef+jxv0VbDI6H8Ytwd7ttzI39z2Z7boO/Rdju9iVWKTSrmZkZRFMNpowZn87L5ZekZe5GY9cM30jFmvklO3wiKhQEyRn6kRW2+opfqUr/kcHbbFF18hnxQe9l0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHdxZOEt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHdxZOEt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DFAC4CEED
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746106793;
	bh=dQ4gC+j4RTzuC81diil9eqQCIBV9Yd1zTkzW1xUKJ5k=;
	h=To:Subject:From:Date:From;
	b=VHdxZOEtQ0DMq7e+GkMvJjnhvqjy2+axvO7zrMIhm/g0nrykaaTYXHUM6FWrNMQKb
	 SVkoPDD6ZrqsXqva7lMO+36l+789EGUSedluE2PC6RrfJ+YAj/n6o62saHtqzune2l
	 I/gtDf86AJAqC0Ygh9+q9rH6CiZWYFCwpCMM7YXJvkWvfEvdAoQUDwGoWWaW4Bw9SW
	 D4wnraIFaewndksr0vXzCmXSC1Gk70w1sgUExaBY8ZAaIMumy2v4Dw2QrzYHd9ssMV
	 fm+vMXxSsMfBP0ciO2W5dvSEHRXetRix4GwAuZyjJuIhYHXOPavvrT/mpPULXc8cWH
	 YaISTZ6QiugRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911AEC3ABA9
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174610679358.14324.367183724235120175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bdf1b66454136bf88d6584c35e21338478eb87dda91445927804f74573db155
Date: Thu, 01 May 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746106793
