Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B95A18E1F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748814594; cv=none; b=JHiMVA8pmuvh5J3gy/iAlY2R+kjmGgCpPBOYLzSQRZp1bL8bSW1gi+xp5qPvEqGrooyGH4KSozD1NRTIozJWaJELT+FUw+e1Xt5ltoi5Vxd2cnF1+34p+A1Ss4UH8Y8I691qKCxWb61BmyRbLjcr4Rq9ruNFXZ1isuyXnhj4kB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748814594; c=relaxed/simple;
	bh=reed03jPS6HWjmZw7F7Q6G7sK3pkuGwCM1Mm8zr8gRQ=;
	h=To:Subject:From:Message-Id:Date; b=ic2Xxia3xkXF5xedG316gBUKCI/coAJwtODm5udLw2D9DqHhsvOsmJ3hL2umsmU0epWCzGvBDHN04a5vHRkhXHENVUp9eyZuGTYhNxVcDIu/XZKUvlxi1Ko7xL9lwUFPhtEbhdBSJhV891jAXuFzvu6j6asdjuMRt26usn2BFt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CTOGDVaK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CTOGDVaK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA45EC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748814593;
	bh=reed03jPS6HWjmZw7F7Q6G7sK3pkuGwCM1Mm8zr8gRQ=;
	h=To:Subject:From:Date:From;
	b=CTOGDVaK73K/KGDBudWWJ0kIZPFqhzuMaaoEkuEzMRtru1LBgO2VVk329fe+zoFZS
	 mZN4nZcYHbVWX67jPiQAt8mFYUb2ownPT4amSRG1edjzQpgQi+HT5gS/3TM1jg3OuN
	 yRlMa44qi60VDlcH5x8I2JOgtOYkFm9nnOhnvo4/YyqFqh2VwAhC8lPUUgHY8redD2
	 VZ4wyQS9/ykrwVH5+G/CxuuA9Y1bRia6JvP3L8JrV+qjBYoBcPDKDpVHzrP/PEzPOp
	 D4/BVH5Uq10HArR5OrrxQV1CBUgiwhqIk3cI3NZIsc5UGL6QsueS2CZS5irYd1oQL7
	 rI2qiOnR4eUAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94579C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174881459358.2390.2037224760825305669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a92470977c8539241ce40b7e3f2e7aaa5b90cd1d43fac4e56a3d83c620a85ed
Date: Sun, 01 Jun 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748814593
