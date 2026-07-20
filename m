Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D3C17BA6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 10:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784543314; cv=none; b=phBIg0QtC2KNChxSuqnTymwXCJl5wkDJjbw/a+dN+uE8+R6Xdley/CuDhsZKEPhoFYkBnVhVn3mu0jEHcw8oum/gdc9cKczkZZSPA3b+f+6oVvivhgqCF0hycUayUxsBn5Od4iIhVSMvc72SuxpVf5J80tIaYLPPWHYFRMRg3Xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784543314; c=relaxed/simple;
	bh=dYUzVpJCxyWtIG+tb6RF4fQyzAYH3hhtOgId2xp6w0E=;
	h=To:Subject:From:Message-Id:Date; b=ZH6MNNgKIkWX72D4LgWMKRvKC8hgXiNzS630oh93wsqEN3uXDAwsXLbjrOebPrYReczsGIilT9xX2o5bZCglC0Wb7ecDMDASUQzaXr9Wfjrth05IFDtCqfAfIE2RYbYoNqfe85bR+fBAICywwjDCj7D+YCOqK2W2L+dBfqL11iA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QxuAmU7k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QxuAmU7k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8AD1C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 10:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784543313;
	bh=dYUzVpJCxyWtIG+tb6RF4fQyzAYH3hhtOgId2xp6w0E=;
	h=To:Subject:From:Date:From;
	b=QxuAmU7kLxaCIdpaEuSdvcYgyQJE1neY7sOwN2guzFjafVYBQsC8mHYoSY459h/Ui
	 3KToqLqBiXO/W/wfxPCuLluR2bIsc5WeXa2hLLcnLp+Nyta29zcvtr78lsNJNYbpeV
	 s5NdeaU6BCLd1XArV7hYZmEKTRvcHmRBruc+r8b26cVaUcEO6Xf2rnqQ2WGwdybqlb
	 t7PjLfE6k3ey8tW5Xj35dDexYrjz+/tp0TJwVF1DDAglmBPj65kFw96hBuSN43XRrZ
	 HhpYLd+wChn0SDMxz4FSW2HRe43fb8BGX++aDJEW6Tjdwq3ldxX8YNj8Qo4QhvOId6
	 fnjZ48KL2e7BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9088C44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 10:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178454331368.5579.7152005413281768190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0261700316e076cc58a96fc5e6bc6c0c7fb70d7721d6e9831df5bf669fb1151d
Date: Mon, 20 Jul 2026 10:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784543313
