Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B75B401A25
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773851094; cv=none; b=sAnA5tT/ZIi7w8tUINB73O+UtOzPAWITHFnZOwJNC3KWCQCvMJrgh3qDo/FmXyPUbCvWPJyj6zUs84U7yslzB0ko8Oot0nnAY1ame33DQIxLy7Jk9H5PgLW8e/WdUg9elIa1GijLCQ1r1giS7paVt+ktLeWh0zPGQxVFLXbf2fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773851094; c=relaxed/simple;
	bh=lH5MkODJUv/cYf74FWEoC0gTa8cNoSmZn7PrAfXI3No=;
	h=To:Subject:From:Message-Id:Date; b=IRBZEJ3Y+/76H4TFeKkORphYVMo+9VQVai2SrJjnKJ9bLb/IQ3wUokdiT3GPy2L+P5w3C4vN7kNtwm9X37B84cewtvllGw4QuIHL+GgIRbp/2WATyz5k5qI0C/qsslFcezL7kyrq2lwyjuMBf8uzyxuA4lByD/K9dQsWamGe/9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XsJCJOEY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XsJCJOEY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2B2C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773851093;
	bh=lH5MkODJUv/cYf74FWEoC0gTa8cNoSmZn7PrAfXI3No=;
	h=To:Subject:From:Date:From;
	b=XsJCJOEYfM/ByLrFMPU+wR9sJeBbbork30/1k2SIxs4cxuoDIsqQGFng7LI3ONFxg
	 XU3fV20q+WqZ3gz2GhTl/ohM3Wr3SQJAaVGbBAXpxr+NpBj9SFCvzrt/016oOZllyn
	 ZxOLd44zN0Xh0mqtOSCjcxLaI5w1NFVsDUGMEmDaqaMTzZI4J/AqqAOoGuHYKbLQ14
	 L6dYRzq6oUzH6oCA9zvF9kcvk8Q7nFC6DGMA5QtmF6u0kl5ISYSUBgUGVAXarb00fy
	 wX3gtwAsUBJeYsc5RcxtFsNBSajD2BbbNdF6DktMr7Gkv4SNSDwMNv9IawvPtWgnzQ
	 hro9ayg77POoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F71110775E6
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177385109357.8650.1632236707561890808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4739ec6885123ea7c270eca2add4f593ebad9fee674ae204f7cce90a90eff1f4
Date: Wed, 18 Mar 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773851093
