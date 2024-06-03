Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1543513C9C9
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 22:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717454723; cv=none; b=m6ngie9ot+Ux6+o33zhqd9+cSXCqK8FnOVi0nlxVJkqy2JwyvWqjNlfofOP28u3JURN4KonuTG+0X7jL6z5458b4qzzTb+wwoz8hHxekThE1mnPpFApV9VJ4/HR9E2zTbvjYqH74IIV4gIDSQlH1K+ScZ0FzGnwwwdJ3attku8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717454723; c=relaxed/simple;
	bh=X9vjkZmrHJMQSREJvZ22bRpIoblsOgImlwygGePLFGo=;
	h=To:Subject:From:Message-Id:Date; b=TGH2XfVJFGdjEF38AYUGoJKqCpYjW0+3cKmX58/gfdVzLCN9/rF6xNzrBiwf6hBpKzd3bnMxF3vdzgpePqN+AXtXMEsVhMH6txTj4+gBRQpO6NZhki6Lm/1TNaogCrx/RfMTRz1gKfw8x1D2cDjdANoeYAnuk4aGsNFeUUjyky0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c9hIwfy4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c9hIwfy4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB93AC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 22:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717454723;
	bh=X9vjkZmrHJMQSREJvZ22bRpIoblsOgImlwygGePLFGo=;
	h=To:Subject:From:Date:From;
	b=c9hIwfy4EuKslxAVuzn8jEx4lVn1M4pEXU54KWeA2rFH4Iy/BxP3mGi86z2SrAOcu
	 6gzVE1t0k+JGIGatVNVCaJ0NvOX0r3j4uaWBiYs1i2uezkzBBEqqxEoBCpLuDF8iWl
	 tk0JPOjjzbNBmMyOSMOeZ8IWM7DeT7DEH6Ml1GIJccDMHirHSqAy8lirgGcOOFg0jI
	 bnJnvUPyKHOyYK9sElZd4Id2uHPwd1TlIXR2fuLCT+Nq25TpSMRN2PKtF+W3uqjW54
	 ynl0xchLQjPeB8p4haVxqqIUfGZe+Kit7Zd8XB0Da4TSfBZ/V0gXnMFtCTSEvoaQm+
	 YDGz1fAIzFqMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA0C6C25B78
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 22:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171745472288.9791.5867831843801935459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f99f3b46dbd7f5236db2b08fe1da3287788c521248062363bd3bb621c9d454f
Date: Mon, 03 Jun 2024 22:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717454722
