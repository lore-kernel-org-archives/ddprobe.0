Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87013154455
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 23:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718149103; cv=none; b=BnWygQ5e+2O1VrvZK5o5Xn0o/5AO5LKGEYmso3b8yLKKLDN5Xn3XQtFzThSr2HVUdCIifvQTcseG8S21nqw0dJDSkSNWbpbwkTpmKeErJ+a9QW+zYscb/YS/+0hpBlVwxZt2DK0+EIhFp0YRPT96HuIN4WknIFZ8k3QV40nD2+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718149103; c=relaxed/simple;
	bh=X+sdbndg/igIfp1JUu7dbGCUZyZTiDm2OqCgI+NY6qk=;
	h=To:Subject:From:Message-Id:Date; b=ndB0iip3DN4jzX2x7+yxE6vYvVb1HudgRUzi4GFbPZ1/F+7XUs7gCUJQTtFHNXcnBR9Zxt76ZyVOsExfTVj1yjSf11taO6R2ToClzw25Q+rphCezMsCKfcXYeHxeWVOQ395GAuaaqL2WKbKcHPaQCJQuCnEDH+XL5IgJsoL9Vb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u47RC/5P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u47RC/5P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 11D36C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 23:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718149103;
	bh=X+sdbndg/igIfp1JUu7dbGCUZyZTiDm2OqCgI+NY6qk=;
	h=To:Subject:From:Date:From;
	b=u47RC/5Pav+PTUpu5KF7EKyv/9xmWYQSQEK7Uh7MlExF/qUPwC7LquTHzgTZh2CzJ
	 r1zsFG+eG50pV69BgnxpFpobb1LXYemhI8yJTl2M0g2/WAigMnnZpbAONIf4om+wkM
	 tXog1p7zTNvrqr0VDCuSS1xyDwS75RnAs5M4XDq+DuN+HIpsgSXQEkyL+naVIb2u0C
	 xa2bBYuFxOPVEv4h+DD/LWAfFUSXoY8lnI0NYDxpjiY63r0eeFVff5ef4hlhApIOHD
	 j1AEPe9HV5OQfMm2KUTOMri/+d4xiveO8HdwveKcbfGcjyBVZsWguBhqDCr1e8c+7O
	 2g56D0EbJDuZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ECE23C27C78
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 23:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171814910295.11655.2489278864153364091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2382a667c3ebe4624206c0f72ead604c32525a7a616c2334f71d911e410bb5f
Date: Tue, 11 Jun 2024 23:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718149102
