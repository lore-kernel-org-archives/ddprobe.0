Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3490F31D759
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 16:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782233194; cv=none; b=fpVp9TItmbQ3vt4q0mRvI9Q2EDSYht/nOqPbkUEheEc/tOYykAX0bsRmJRW00HPtPX47aBbVzrYuSxTTqQ6ymqVOF3xaPAAl5NQ6ir8CPikexji1pKA8MvEhWkurLRK0a2m9z5sb6jhtvQIUDe3tkIRcXGT1j/7rP6kwW9KFtUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782233194; c=relaxed/simple;
	bh=RI/SgzKQ3O5Hc2AvaxwrE8ERXfjAq7Faimng9vOrBJ8=;
	h=To:Subject:From:Message-Id:Date; b=bT5f1tJpdrapB2vz9YGenp2UJL0bDyT1PxZiJ3W1eg7l0LVo4pRg56HJfeKzrrgW9mAIClybMscFj1VLHO13a12MAxNreL8sXoavNcfaoZxcBQ+eLWt+A1YBzgzUA+sDprTazRjOPa3AFpB77VN57p/X2D9Lh7745pID/Sh9PhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qU4Xp27q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qU4Xp27q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1DC8C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 16:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782233193;
	bh=RI/SgzKQ3O5Hc2AvaxwrE8ERXfjAq7Faimng9vOrBJ8=;
	h=To:Subject:From:Date:From;
	b=qU4Xp27qisQZ89WjKxyNyIeElobr1YXUDv+QYGWeiRoAUwrQD0HUfbx3Hy/daq+6T
	 /6vQgvslwdPCNctcfk8lVuZuY6NUjTfm+BLvjEVqqECfEu7ZSGXAOZkLkVxYnIQwj1
	 kNwjfOuF8mA/x/hf3gSrPD8+O51LR+SQBgy2zBFyiFAQwziK3LM/NhsdHzmu/deC1R
	 4J/nn/phjLnwvP/V3+hN88YFgvr7mcUll75jnv8JgqJCUVE0z6M29ketFfH/kYQT8Q
	 uPe1xuSBmc3W50cCyRm1QAY0F7NRGH6lXU/B1sL6Xyqqy/TwFmL2zg621Lo+owEpSo
	 Y58UFcUhuzrqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB28ECDB471
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 16:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178223319369.1238.16001566969856882994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 475a046569f4fdc68281cdf154b0b1936c58b8e16e6ed811bc70fda0b5a3b637
Date: Tue, 23 Jun 2026 16:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782233193
