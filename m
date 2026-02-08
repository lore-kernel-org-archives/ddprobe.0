Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283D138DF9
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770545034; cv=none; b=kZHlnxzCb3uOwPQQq6WK8BoKNSLIZUi/ECf10QrjLik8+i1ev4CkFJszrKIFqUHKoQ0s8HtrTFhCVkukNRLztkT13U80gyatIZbQsylo/GHrz/pCtsxj0r1vd11N7JkSSrzzgvyj6tlCgxALed//tTMnKB+aLqDs7TzfHX8E74k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770545034; c=relaxed/simple;
	bh=Zg8OoXmmJRZUGy8dlcEVD7EnyUkpgDVSu87ZRrlubrA=;
	h=To:Subject:From:Message-Id:Date; b=eWJ1scSJyHilI//xmk2gG1gUnVdc+fYrL+faI8tOzkKmfexy53ibiPjCrwfjNLOQoJVDrOWuDIPFGHcvcBr6ex0T+hChozG12TXeXFPORZsz40InbkL8oPfH16DAP6b3BAnmmleVeWvd5OaXBn4Ip8fWUjObwGLxOXPY7LsA5gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fejN+jFK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fejN+jFK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E83C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770545033;
	bh=Zg8OoXmmJRZUGy8dlcEVD7EnyUkpgDVSu87ZRrlubrA=;
	h=To:Subject:From:Date:From;
	b=fejN+jFKE6dqodEFBvzO/aPn9ZAVIj8RDiEsv+R/spDfhDqTRsc7qKQ4WmRxIAoIP
	 1GhXlF9Xa+J+oNClMaYfJ2v0hXSd7HnJ5KmSXLKyjCeG4V1K/qWConNRozuTC5u8/C
	 66VO5x1pI0ZkqipHFrRcVeKAjQJbd0dnGas9Pxeo8FhAMBJ+gBg//QTQi1uQIBxlq2
	 aOg7/olg7aoDPmHtYQnaCe0axcv+/f4F3xGg0NXZGZQuNsF3SsSKxaBaCOdc0h21jX
	 0w+5nltf6k70uV8Jaw2Yw8UQiFhLUDezmQXO41cZK1T681/9JNMuMqnNJzFYZJztgU
	 yn3T/78RXjG4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A01E3EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177054503361.3930.2021642803981758025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35e2f1f0a9f4a656a6c4ca7a2d67e248f948aad3e37d28e0351f399846ef4c5f
Date: Sun, 08 Feb 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770545033
