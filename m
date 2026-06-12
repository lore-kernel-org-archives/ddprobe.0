Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFB4303A04
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 09:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781258194; cv=none; b=qPJ0cmbRQJrvdqEO0V6f8zrgS/5ZkTOJiGaEMWSDq8qgBGVnxlBwafM75i5hAS6Ve3qcD4C966rupQ/xxqHNLTGAclO3SJckVJxJ1MBl/tb6J/njTfVsAA/HSiBHflT01rJPa+0/K0EFvcsMTJTLLFDheWIdxSMBwDBweD5QReM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781258194; c=relaxed/simple;
	bh=knBg5+JQ9AlLUQX3e27pWtuuuv6Klmw+Qz54z/kNtQ4=;
	h=To:Subject:From:Message-Id:Date; b=NA14Ce/6L6bqcJb9WmJlRhEsV4hXrPgmEu5uEkyjbqSVlrwDMQAQjmjXvpLGxBmXvfi4q4X3KgBaKQ8LLxBjdLtAVvWAgIA9a6uyv6XIypzWTaO+YuJF3UF1/m0KZ8pCqWXy+uKONy/hQJFmnMmUBvQ0lpvEqRCYDkI7sZsZoXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P1Cc3M5B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P1Cc3M5B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA3E4C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 09:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781258193;
	bh=knBg5+JQ9AlLUQX3e27pWtuuuv6Klmw+Qz54z/kNtQ4=;
	h=To:Subject:From:Date:From;
	b=P1Cc3M5BRH/J2e0qtGTew2l3+leqblcXU+2I2ohOskbw/KBCNzwrB+jqrXMsvvP8b
	 +TYnKNpuyAFM2DatWhhntqmNRYA8mG3WpY5IbIGTxSEGLlZF4nNtLPw4tjPW7woYrt
	 FUtPWVUR4OpPzyQCU+4byFZyzESUOExdnR5/D8CP6kiJQogKYOrDZNeKSD7GpCCO7J
	 heIMy9To530QvXxDpM+xGXT8V/fpnwwfTZoZmRVKf3HzY2hvJZL90eV2GcOmcEXog1
	 MJ4xfCyGqK82kQBo/5aMzdDVmkS4/lDJBkHff2VBwCpvrzOYSRq+R5IB4NRee4QGIJ
	 /SqkR5mSGmqfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD20FCD8CA8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 09:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178125819370.5476.17917349749230520953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2a4156226bc026d8a80cc588c89eee4b0022537b1cdd21abde16063b3d951ce
Date: Fri, 12 Jun 2026 09:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781258193
