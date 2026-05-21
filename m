Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B6E732E126
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 23:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779404554; cv=none; b=JNLH609lS7FZmUVrKQQxKyWmMYNoaF6XVjB1qcRRSynwG1TxE31JqeWHbqhoE9lzdqukuGrJpzC4t4DRQGi29nOWzwcEkOQyBg14ZnifiknL53LCm28VD+SJL4B0CfQ0W5mqw3TOS8rIow8OSZYucPP7NlO3y/XclZhL/UkXV4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779404554; c=relaxed/simple;
	bh=JLhIMEZvdrhjVMqSN2recGpwSueVeSz49SxIMgjnb7w=;
	h=To:Subject:From:Message-Id:Date; b=AfGkLWmV5WNylSCVfTkB5LT9fBeH+deb13J/ye14TgNNU7c+Z2IfrjylMw6gbtk8NdRmy6kBrlu5srhSreyVCJpq+0Y7hByj13vZMynFAV9C16WsR9I7OJ2D9Dqtp12ENOrlUtRsQoF65CuBrj+kzl11DPBeR+xQPUPlVFXNbuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uuhOM6OC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uuhOM6OC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF18C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 23:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779404553;
	bh=JLhIMEZvdrhjVMqSN2recGpwSueVeSz49SxIMgjnb7w=;
	h=To:Subject:From:Date:From;
	b=uuhOM6OC/tz03SNI7+fo0SBhXlsvokYams+BnDVHk5bojFpakY5J3K3o4vlabCTkj
	 MOgkWmXKsKrx0Tc06IR9qEFzvD6xG8jZQqOfPd7NfYz0CdYazvq0rU3qsLTuI8nlLB
	 8M9X1D986jJDTrhZXkpzv26jz2qVduuucS/rM7mXenQkvV5HSmEojQzrZLgXNKpYKd
	 wesUbG001+tIXU2pKGcbFAxHjd/DyGFj05berpp+SZLW3u5PZx2byd8s4upf2s1ws7
	 ChnKXe1hp6PzZq1gIgvX7jqPv7T93+Fneex9wInVo4zbKZuDJuDCGQzIzBfCMje+Sx
	 Mz7YD62ULq/Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B28C9CD5BAB
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 23:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177940455369.4593.4591954240729006559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1686531cdf182392c4cf4703aae9cce1457fd585f53a700ef933371774b5669b
Date: Thu, 21 May 2026 23:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779404553
