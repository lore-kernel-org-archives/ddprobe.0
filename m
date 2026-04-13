Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334A01AE877
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 03:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776049654; cv=none; b=Od+cTvfpVZvFuD4OFQR3Q5ZEm9ZzUSSdQ8CuqkRhDXO+X6Myr7cTHhoX6PA/l5IY4Fv8ngCqpw9WS+jv6dGPvQBVAs7uETEPlX2HiIMtJE5+HbsR2pbv6iznPpsWmwDTH/YZvUfzM4mvS4nBXx2PSlbIZVLlEzJLWdZSnvge2nA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776049654; c=relaxed/simple;
	bh=R264Xy+FKlRXL0C7fngR2dfIursmAc+bpVRgh36eucQ=;
	h=To:Subject:From:Message-Id:Date; b=oAsiGRdRIKPr/Uo2lUkkN982tY1jXX8SV16T+DrU213gOXb5OksqGCSu/L+YjRLx502Cqbm+8A+hN4fBlHQDyGywi1bfpXhGsQaozjz7gMHvQs24LLt1cP+HP35X7j0AkFaiUglEIg+o+TUMtrc3/T1nwAZamFHd0Xn0VeZ+3tI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z+YwNJiY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z+YwNJiY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C23ACC116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 03:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776049653;
	bh=R264Xy+FKlRXL0C7fngR2dfIursmAc+bpVRgh36eucQ=;
	h=To:Subject:From:Date:From;
	b=Z+YwNJiYztkq7Y0jnYZoyYYVZCf749y1gvIqCBmH4xBqJ17sG2AHgJEE+QGUzCvgo
	 sRDGPPIlR5ByyYdXmUDkquPbJvStkJEyVmG8FDSXeJyqdM/n0L9LoI4lXvWkX2VB4I
	 u79B8HF13WmrhSsYhqdfovcSH41K3cDjOWBh/duN9kur75Pwv/KJTRLR+KnmUJF/Iv
	 1P4Ryx+jgR4JdCq6C3e5BoIH70glsd3XxUpiD07tqyhfVK5I43NHMHxjyzJapLKUS7
	 0Lj2VicthAIGZWBtoizPgA8Sje0Jf6ti7oRgc4hXpbd5QXV09/pJcBG0MDjhpENkI2
	 Xxs3FWs04SkOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00E8E93805
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 03:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177604965368.25416.1537043689058362851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47e20b1645d5cf9996d96384a3618aa30c9bce8f458fb14a8f4a011cff30cf38
Date: Mon, 13 Apr 2026 03:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776049653
