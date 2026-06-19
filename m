Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342923002A0
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 02:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781834794; cv=none; b=ZcGNup3uWDbN3h+nUhWFZsoTjeVHkdoDHby29xuUZGzX6IPYvmkEyOgiHTXPfCCJZudPZCNAIR2wqKAhQo0uyelydeWX02zwX5qP+81VDx8uziTSRmxYKoyfgz0/nCpZ7OXjRAlCARwz3cia7mek0ZUFd9CmRwg1RHd0fnyEP7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781834794; c=relaxed/simple;
	bh=E7IhZFJAjplfxVO56bH2H5bZn3MRLFb3m3YUvw9zwc8=;
	h=To:Subject:From:Message-Id:Date; b=fHRjexwhLD7YgjekgaXP6bJ1zzwLkAKhRs40nt2Ejqi/GzULatiUwyQGvr2xsELUSnTRcsUYE34w+TeseHmpU+VBYv7zQNlpbGiPINc28Tg3CygnM2EnwaRAknd9Y65LblwUcEr+BkGdRpC51F6nEjbZKKwo8gwZnjG4p33wiA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WycRi1Ek; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WycRi1Ek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBAA6C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 02:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781834793;
	bh=E7IhZFJAjplfxVO56bH2H5bZn3MRLFb3m3YUvw9zwc8=;
	h=To:Subject:From:Date:From;
	b=WycRi1EkUNqTyTvqBzW4iBo2hKIsAVtgXU33scYZTbRe+AmTvIWfy/deYhwIQA0UJ
	 o+8RGHzJIc3deGhvcXD66iAiGx8WOPZEwziLuCIEJc+1SRGY9a3bgZhd+matIRIeSG
	 hXg3K116qDvXT9nDl9V9uUq5o4J6k/9Uhk/+he3SnKOstzvPOyHpvq1462jn9AYpu5
	 Dr8HUUf7E5GIu/GL9n1PYhBW9b/lBV9kwKsETij5d0djWw86/Uwo2LF/fPeLLGTwDg
	 jh4onZCFUJwzhxUinPOs3O+n7CDwvRBwjCg+kHlpNNLiFOlL42VkP3X/p5IxCpNe6E
	 YXG2Ng2NPnhVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1725CD98F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 02:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178183479371.16714.9986943614287727018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a8c960f7ad5b5336104aa842ef8d44b124ac845130d55598fce267dd604b670
Date: Fri, 19 Jun 2026 02:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781834793
