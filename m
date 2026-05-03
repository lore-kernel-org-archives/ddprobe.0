Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3435978F26
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 22:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777848454; cv=none; b=HnGAoyImizzQWfrZkyJO36ofFQuN2niVb7kKa4zSowTf92LgfqRY669FBcXO5et7J31+bg8tFYYPqEw9xlPErRbvSG63mHfOwGuzXUNj0ZA4qTF7s61qUhCCoqrwEWn6LfpUhkCcR2Wu4D4dlzvLzeQtcZVRDfq6s2jYpTVu/7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777848454; c=relaxed/simple;
	bh=l7u0nS9HX3otYpbKAzRz3z7jIU3iaiX9+OUL0OJlYa8=;
	h=To:Subject:From:Message-Id:Date; b=firij2+w+6mUi9nW1myn9iQ1pbNBx1Tzxg81N9QX/IrOrr8PSmZvqQYLHjicuYWw4chPSdLsp0bGQrqQ7FqMwnhRK1lkRSBuHG+ohASC+tPM3A02O1Zt0zVeZFzBEZkR5+3WO5S025xjDLZ2Nje37BOuv56vuQ/pkjkksvngR3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BF2Vpidt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BF2Vpidt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D9FC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 22:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777848453;
	bh=l7u0nS9HX3otYpbKAzRz3z7jIU3iaiX9+OUL0OJlYa8=;
	h=To:Subject:From:Date:From;
	b=BF2VpidtpntEtKqEMjGq7pnDnPaZUsz460mFipoxobMX4Nax6vIYXyYw6ugXTeVDT
	 JxMf6tBiEwHbFZdVHkpwzwgBMxNRGfuYu76TxfB5mrawD5YNKQ9yUxeTm0vUQQ6+14
	 g9f+1dRJYmQnGft01sU84XBFiIR7egO972QHOZ4O0MOzxzIs4qF8+yZko4oP9/71cP
	 YzmZeWu2lrTweAWBsCojGyyerkloYTYKpX2VQb6I0a09RnvlA/dI/tEVvvI73A740K
	 f30KdZ7jQzWYffSWFOdU5I0SR34mouR1VSSLDUzbp/QQEPHjgdm1O6ZNeosI2CPoFO
	 fw1BWGTjYaKiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF5ECD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 22:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177784845368.14636.4873695717167223615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a603bc9853c4479fd7afd064dd094410656f084d7b00bf754f577a5d0b6e88f
Date: Sun, 03 May 2026 22:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777848453
