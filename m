Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5007E32B9B5
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790910034; cv=none; b=lWQf1np2Hzr6mpCkGtYv49PAWWX8lJ3czTsp2GoDbAgfzfhVqojsuL8AUdTQ3RQb9nIKEa+tfNeAhxVq933N24AMr0BcxxmrjR4BYL/lkWohxoG45ptogFl9GTgJu2nCw1uDE5fXzmq7ygb6PHxPEagEdxd+ZXbqbviDa7CgmKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790910034; c=relaxed/simple;
	bh=gIHDDW9cHQ6zEOYfaMoWaE+VkOLiGowVzvV5t3/I2Lk=;
	h=To:Subject:From:Message-Id:Date; b=RJJ/58oE0UXz598GUUVRijx5Nn9QeH7CEsxpFib7o0mhCpnvmfSWhagXKalJvdZnTsL0axsq2rDsiTgcL3y9gCMA/KeFInpnVUfwGe6MwP4t4HK0nVSUX3J9B1cuCDy1aQHWA3H/Po86DmuWjnw6y2Z7UUsxxEXX6dVDTc/LtGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c4jZk84E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c4jZk84E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD245C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790910033;
	bh=gIHDDW9cHQ6zEOYfaMoWaE+VkOLiGowVzvV5t3/I2Lk=;
	h=To:Subject:From:Date:From;
	b=c4jZk84E2dV06eg8X8waa/HHIqNcLRWK1LvVbYJQlki132OejRwCv+Ub2tnLLN0lb
	 BUFV9rLBXT1LrmXw2MXxfI0IJvqptJI70WcDzSlqjS+68r91toj5x2Yv35bsAaeNfj
	 GpPoB64VOdrVsAa7NjGjgkIYoKGCDRBn6aJ838eJifH8RWuS/JJY9TJ9WuMrTOXb73
	 b+8vcdixVuCr5zylNS4pG5FuwWd2Q31j6s1weKDds0AEZgjyrVTRZHRAMwC0uLmZOq
	 U2QYmEo6ohezRpnSxwhR66CKfKDZLinZ4US/qYy5n1c687GYerg1f8drJ5sBJg/AFH
	 HSrn6q2w3vOFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF899CA5FCE
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179091003370.11947.17010439697179062379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f6b3f58d9c1230551ff7a0a1fb3b8538edaacdd481eb1dc3c53ac8b86e14d8e
Date: Fri, 02 Oct 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790910033
