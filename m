Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0731E991B
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752323994; cv=none; b=Ad34RNzW07iLhqgd8TsDGZx+oEmIsTgjONWJvQlKjR3jX4t1bf053Zlmw8StKCtajsdu2SZJZBwEVod0cfPleZqVRsqvhyhDcfltalaPWi7BKUa7f/qPQ7LE60VJXoquX1IElmf1iFaCeYHMOTDNFqiWwWY96l9gY4kgRiOLykI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752323994; c=relaxed/simple;
	bh=Kd/K0Id7zUTxlHTRciZK5CRWjzIPS2KYwfbIxFSr1VU=;
	h=To:Subject:From:Message-Id:Date; b=AW+1agf+5nzFmRlE+qTrb3BlsUgbmwGcHFGNd2AR0wdkGszDndcPq15uki/uZomjg6DeVfkvLYGAl5rOP8fUN2VcQSd5psKfsLNMCKca8G6df6rG+uRF76cnQ+c5S2y2vjnvZ6IrU8XHg/5QLnsvNbYYt+w3zTf+y/d/4DJRpB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z+6ORxPx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z+6ORxPx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39D7C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752323993;
	bh=Kd/K0Id7zUTxlHTRciZK5CRWjzIPS2KYwfbIxFSr1VU=;
	h=To:Subject:From:Date:From;
	b=Z+6ORxPxz0uaHBcMhYCaVruFlBSvfWqHzwmz3EyhL5UCTSTqorwOFY8gwlyJpkdHw
	 Zo/fJqdUM6heXzHIFaagVJNebEtPkIY9ru28eronIF2m52yYFHnlyBc5vTRkXO3gH8
	 T+f+kGsyxJGJ+2ticJY28ATPa6yYbjoRxzsP1qxgX2DSqyjdAhogSnxol2fSKA6Su/
	 kKt4ICaj4DTMyIkWE44xGDAcKzWUrqztwiiOLXjqA+Td52FXRstduwLAwra+5yHazP
	 4Mqihw9JWAwdw4P6w02tRjMgXjRUWFwhOyegfo0t4pMwpxd0tCWMm9yO0s1aaQUZ0o
	 bX9U6IgSIT46w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946A1C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175232399357.5192.6699503362633836740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3caab1fa8e8607af4198e0b42e7eb965d24c1012dbb64f79f68074fd29c571b3
Date: Sat, 12 Jul 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752323993
