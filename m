Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C2CD34AB05
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773518094; cv=none; b=pBF8i9cLle7lnGCaDsWNpTvkSqGO1uQX6LGY3y6PsRrNUXD1V0q6ALXMz/fgKkNWC2B8WjXS+yjEVVTwEbM1gnz7Fds2Xa/uDVZtq1Sv0VMQleshPm01vJElVjnp1XoLsHbjFp9m9q47vEFoBXeCOipzmE0K9nYPRakOKAsqu0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773518094; c=relaxed/simple;
	bh=PuAIRAqPH/h6s12Zm4qlQXu8OmnE1WvrgoH/q5RwviY=;
	h=To:Subject:From:Message-Id:Date; b=bAOndVeK/5gsONFHpdom/rbcOuH/8G86PonpG2Gs0FYfKoary6CmnsupBRw/m+pwJgGXljWrzDIRXhBYKmLUZj3FYzWfX7VMDRrBw8teuC8+QLhpJjNhvRceZIHcz9eCSPFiPBrWYZAGDFiiVMrXlpQL9ZjPK/Aq46i/YQUJPm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SsO4QFDA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SsO4QFDA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2635C19425
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773518093;
	bh=PuAIRAqPH/h6s12Zm4qlQXu8OmnE1WvrgoH/q5RwviY=;
	h=To:Subject:From:Date:From;
	b=SsO4QFDABkFHgpUZk+3xpMJFi9ufSGHALn272Rt6V5mIOxnRQDOPAITPmBEP2p/m5
	 /9JnutlGDmLE4vITyEaPfYR4ZVKX4bnrH4bBWANNwlTHkfU6BL5D3ei+DtkI6ZwZjo
	 YDeKZdSFUK02KZnSphJ94JmmdU1mckHp/dIU9YolScFo1cwas1Xuol6Tp9ACrOtJE5
	 crg51QhncYaVM5201NQTQekwPB2sWnEolcR1YlTnZg4+POb0ji2KmXrBBbYSzAUycF
	 2Z/ULCkm40iPbMYbolYNiabAOVUK9bxpHVtUjslcw1kbd71pVzu/MBvxquD7c7e6PP
	 /0RY3f4oRk+FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0750105F79E
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177351809363.30767.8004498499756853117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef93c17254eb09f7d1d5e45ce15b1826d15a7132903fb2649741ec5ce19243c0
Date: Sat, 14 Mar 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773518093
