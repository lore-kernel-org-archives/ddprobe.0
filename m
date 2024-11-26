Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3431DEFC2
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732656954; cv=none; b=r2y6KaqeUkM05/4RLBytsdByUiaqljWOex+tfemUjX8p8GpRxsqqcHecCvHezmCG6WLWUEWY2w0+j4HM6TNGgEHxMTqOKqlMrYUdw7Ymk3a6FOZKyNsYhXan5hXa/5DMpLlPoqfrIi2vGP4/LC1t+6rxVvBMBd3/jCSPaS0u6XQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732656954; c=relaxed/simple;
	bh=BbX4+GIPyCsmlhddrX0roIDDzMAYtJEhPIpcVNOFWNk=;
	h=To:Subject:From:Message-Id:Date; b=YW4puvi2QOZKvKD6cIO6rBxX1mCCzv+NV3FnUq/tA4Vd3HwtmI7dTe5O2Br6CeILqLqgueIun6Nx7R43yydo+UzMu6U2c5pfuLNKVsfHWV3B114HgsyRyMX8x3zKbqwRSBEd5sMAPAmUUczC23SNYLJyvCP6eIpIpvRSNQZFYBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r0lObB+P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r0lObB+P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2E6C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732656953;
	bh=BbX4+GIPyCsmlhddrX0roIDDzMAYtJEhPIpcVNOFWNk=;
	h=To:Subject:From:Date:From;
	b=r0lObB+Pp3ca4iRaEgBR6Aw0H2QF7C3ymnD4aTv/MTlr+TQgddfclkP2tM1WAv3I3
	 +jEswsGVHnfTGiwH9wXvWemibeGRwNGU8hC/MfOYGiAnZf8l3mnoppvKsR+zCqKSQG
	 sHblQ8FGQJaIdc8HJNvGmwP2cOyqmz93hmQDrL/lmfAAXxSPpDh5hXfrSLK2Qp0rvc
	 hCb4XMFz3FoM0rHPwuo3n38FS06YMKZUq2gn4dRHunGPaN/JyP+zHhpGUZSOUQiTwq
	 nS2BxHRKLuPmVsm53IRpNIjDbdS35AdToKXBuVCQ1YM7yqoEUmMh/p1m9RH1MlGS2u
	 qV8JmXznVBXMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B39D6555B
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173265695360.29234.10241031556370371231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd09747a53a7b40b78ce6e7433491eef0507665baf41ed9e56973b4cafb97121
Date: Tue, 26 Nov 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732656953
