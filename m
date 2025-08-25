Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A40329E116
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756166394; cv=none; b=DRnDbgw1kl04tK1EobklP8TDR//gCLBkgxz4kHAGVDBLLi+AqMTAPjNVAyzDf6Dr0S4WnvdZ6QhyR+ruekL0Ut1lYYL4D5i6V3ipyTmeeDgJ4belvlgCLfIho2OT/Mx7yEwF5n6sFovvDIeOp6b+uaTRSlui43d/zpzHpK46x6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756166394; c=relaxed/simple;
	bh=ID1qChnZQYkFZ4L9cq2UrhRbHR5vnswEqUlT/YQYf2A=;
	h=To:Subject:From:Message-Id:Date; b=TnQR2uFhRV+ZoZz1tO08sTaXqPoYHyJc/KmJHVHj7zLNgRh6HtRDiJnjNXImZqL2FqY6uYNWjwCq8OLGcDuMyEw6/px0nxCyvY+Aa6EbHEUdFTuOXqT6aEg8HRzO2+MatLR6amBYiqgaR0ZJTtT7GCBtTXW3yRx5sp3DvTAuUKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UclhOlSD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UclhOlSD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59A0C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756166393;
	bh=ID1qChnZQYkFZ4L9cq2UrhRbHR5vnswEqUlT/YQYf2A=;
	h=To:Subject:From:Date:From;
	b=UclhOlSDrEsVoOasmdpv4bgFiJYDqHYDeTzl3kksA2uYnSsxwidx9VJwhuZAgGcDH
	 yvZz5KW1CwtJEZ5YP+YcKeGjEnOHhSFASzEE+Q/LTh5Aedr31sJAO+lrsuyyyER26P
	 H0KYCuB/IvnaKxUByqmFRXo8vmUZajF3Ga88o1nigeeDwWzlAMcx0/NZHMFHdnr45Q
	 ca6soVq+526bUXHiR0juQhOdx4OHoceYxaVzyABfaVDw0GqaPu5r+G9QI6rEQE8oFF
	 C+8QYdNGKULu5QFWshJznCIckSfRsJABOIA/Cd4h0LrkpS6ke6pjT6Iu1uS+QfVVqM
	 nJW4FSi2iWusQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919BCCA0FE7
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175616639357.24882.2750325917637287034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f26e37a9fb51db3d406ecb5c01bc35bbb8ef1100005f8b09fc26537f1acaff0f
Date: Mon, 25 Aug 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756166393
