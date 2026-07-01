Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B35348BD22
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 12:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782908914; cv=none; b=gISndDb9xaT36ccoRz5tx04aK/MusMc3uJhYxM9LAxPpLkHDm2hQuZ5xS6Gpt5kisuIBpTMPRIh3yHKNJJLv9px2Ki8q4Q9npEeMt4fz8u9ypzhaOAH/u0UDwTcUeq4zyhQyWYLbi8usrB7ieVpFnwbY3SyJ4NMbXM+96fOkfs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782908914; c=relaxed/simple;
	bh=nVVGOQrA1/cvQou1rwfgM+52NZ3RP34EfXlLqQzVBsk=;
	h=To:Subject:From:Message-Id:Date; b=eEHr+XEpiPC12LFICorL92oAyyt4OMnZihaAgT8GzKHtS9E/l1BTgMIq+CYxWZoxJL8yJxMliMBNmai3h13fdo2AazB+JVIIyDM4uVBtQwrxVe0lpQjO3OOVvvDo0BBdXyyNICXjMPMEFxrWZUt6EzUQjbWS+7HcifptvO2S/f8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dDOx23G0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dDOx23G0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F69C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 12:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782908913;
	bh=nVVGOQrA1/cvQou1rwfgM+52NZ3RP34EfXlLqQzVBsk=;
	h=To:Subject:From:Date:From;
	b=dDOx23G0zsWSW3BPXb6OLYmAnqy7bhRgSNCiz1gVOx9gBYFOQE8MDdgXhADpug1NV
	 BhP1Ls+h95twX7PBH1T8PrvZJz32TKyLVK/DpLuHQNy6561TJ4k8NQikUw8FKylXYv
	 IADJrxE4SllJklqpuCkB8CsbksZ++oawaBGDCBiLGThkFlB4zU3iSGh1xN/w5TMeaH
	 ur5SIccZXFpMDUCveIgsIJkRnO60l3BlH6jZ2oHxYhs9Oad2flJryJbCLvok4obTPU
	 qlmW5rvhRxMPJm9ZNTQ8mI5z14Hfx/LTzWeEyDsL1XfecQoW/IXM0mUbkfHdLPq2CD
	 3Qce9Wjf01MNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A935FC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 12:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178290891368.29233.4659049061148189716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d591b2df6a283a1e2dd69b8d566cd375ff6dc4a2d505dd62164434dc512a7278
Date: Wed, 01 Jul 2026 12:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782908913
