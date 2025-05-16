Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D2322E00E
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747429794; cv=none; b=rzCxZnYIGJLXi6K89nXxgYpwC1PfqCFohWUs7mFEuI8z0FedRRvAeYO3E8tBJmtmlYgDfdrHEBJDsCDr6pOZr5lggHxmOpMkJ1gOCeOBMzKZXu46tbqFTokysauk+Ucvet79AuV0uJiXZz1r5MDOvIptGE1rkXqGq2wjMeUdsZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747429794; c=relaxed/simple;
	bh=DdTFNCBapM+j7DQroHEpvKq3mtXRRFXNrOwGG7OVhq8=;
	h=To:Subject:From:Message-Id:Date; b=GYB7+9B9yIYwePnBZwx5OwD0etqBG8wGTifnhRoPVDyvL2OI3Nap3dRc1bsfUwE8aCvBS+5jH+tjxYps95937v2mVBRpxad3zLnevn03XJL8bMA8o6GBHdMbZz7mo4x2hz/4wr8ka+IVx1Wi535xEfuHkyePnpATSAPh11nM6hI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KsIC9VKp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KsIC9VKp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7F1C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747429793;
	bh=DdTFNCBapM+j7DQroHEpvKq3mtXRRFXNrOwGG7OVhq8=;
	h=To:Subject:From:Date:From;
	b=KsIC9VKpziYry2qKxBr/VRQUplUnBlzJXrBAjUsbh5URzYkeCIyT+hFpBs4qx4YAt
	 PWtSNz4J7tsNy0doo7zVpTCKmBmKzA8ajSZlHzz76xsB/vGh1LyAMwGAVGvFZndalR
	 rA23O9bueReEbHGoy0gp6tpjZjXVnoaoFAE8obqKksna8uqdT3ahaCBhZ2lMBPIib4
	 RESvkSEjWXzZ39Iy1RFqhYw2pUhnKO1m1mCL3jVoGSJh8ngxFSSOotoHQzFf7yM1og
	 DMbXgeII16nwOCypRA1QQNM0EVV07WqdqzCGff/UMt3FgfYt52mljs0sdsiWoqzxFp
	 cCWSV07/+8IMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A8AC3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174742979358.10382.3746656563673495691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3e3bb2f23d9018fea614a0a8f1445f3531aac9a86d4bd070e1bef4acd1364fe
Date: Fri, 16 May 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747429793
