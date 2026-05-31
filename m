Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237461DE3B7
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 01:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780189474; cv=none; b=f1mV2WKpR6gkMOP1aaPtrqZ7/A4T3qIsVZJOtrEFd7ZnE+aDcbifFC9I7YZlSTx8znrC199aiFzcKZnN/kXCvedE8J0c+o3NEww3ltiRrtnVxzXhKOobJjAfBMgBEaepIwISigAu7BNyewgZjbbNofpB9WstXGQEPneOK0wNiIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780189474; c=relaxed/simple;
	bh=T6z6AlkUNQkmyYSQNRgZQw/GcGasZEapEh2GAmEzK2E=;
	h=To:Subject:From:Message-Id:Date; b=kbaNRDgS/0gqi+0svDuE3PS2Y4ypeTe0vcOt/ou6Of+7JKGVjHc5jEJmjeYrXvePilhVhxOAyu7qtL0rRt+jlN/y7+DVl3DE2U9vE1CAQWmJT6mRtmnYV/nzI633eENXkxb59gGOO8BH0xRDvxeoRrGmSq9Hrqd6uZlSiEro+JM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7xzlC+J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7xzlC+J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C07EBC19425
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 01:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780189473;
	bh=T6z6AlkUNQkmyYSQNRgZQw/GcGasZEapEh2GAmEzK2E=;
	h=To:Subject:From:Date:From;
	b=J7xzlC+Jm4/BzGRn7yKih6ZPTA2TzRv088rQY90837K1XUo5mgTIfAzuSeQ5lXgOg
	 wMiol8YBr2gNBycFzAeK2F+cpATZd3kC2spXcaYK6+NkYKO4VB1Bv8Ju01FtrNjTM8
	 k0as6wINB8658wZG8zYZfEBmOjSaz4kprRqrsPEBFvRyfZQ2P9Bb36sigdzDr4V2mp
	 tXZ5k3pu+mL1q1IlAOtwhm+eJJemw4LgDtZrq9jsyFyA0uc8cSZLdEGEnCsT1Ap2NC
	 0eIawcD0yUaXm1tjh+1I7BkkUZApuDyveVu2GrVzx6x4g4V60KNtopTTr+YOzH0Xj0
	 efspcdnnTSyEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A2ECD6E4C
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 01:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178018947368.27073.13738100852613090302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea573b3563e41b11bd24820cfd34027ab3544b77dd2e2dd2bed3bc5805ef4753
Date: Sun, 31 May 2026 01:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780189473
