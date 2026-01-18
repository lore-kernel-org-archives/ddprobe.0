Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29623219E8D
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768763034; cv=none; b=Dbl8ll04FwRnR+WorBNmUNFqQ4Wl1KF5BW0EkamjMakEps8R96B4jYfWa7tMawo8+pRRA05zo67dycTv2mcpXB69RsULMH0jzGfdhT7kK3YijKSnswpYReOTYemhQHFa2J9xTcky9m2esnc/L+Ke2uV9ySy2OyGx03rR74TjFXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768763034; c=relaxed/simple;
	bh=6VFzL5uhGaIx7qSdh+IxbrNOYVMizntp+oSrUXJT5Ew=;
	h=To:Subject:From:Message-Id:Date; b=HvYgmUtxCvjPehHalV/NLYFMKcaYU5E89y8wjgslrwsMW+V/PsHSHTZjJNQBcnJQk04n0bppcCv0h1waBpl9ZLZnlaJLqpf1oevK9Vjyhc0wByf1fTgSbUEMP1TfqkX2Hz5RbmJVlsGOVfFocAJG2bYAiTDU/ETDaJFeHSjeZIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=APGyoN9s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="APGyoN9s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD72CC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768763033;
	bh=6VFzL5uhGaIx7qSdh+IxbrNOYVMizntp+oSrUXJT5Ew=;
	h=To:Subject:From:Date:From;
	b=APGyoN9seHnRw6fnAakDZaR/Q1k2Gq9fGqdm4RzunZimgZ5ZLAXEly97wL0UA8N92
	 oYysIsFxdMj1sBqVXHEt0UlinvmJ8rS3fQM0eGEtfX2QaQnXIRG15D4wm9RMA5gI0C
	 41M5Z0c1vSrdrvvNDGADO5ac3tvGYB6oyNV6LbMromISiovopZ0/Lun+bFvQGLl0W8
	 Y4EHgNSODlMva+GEafNALRLIDQTOOGh5r6k0B9IexAXU2Gq8+8UrRzGmk3JUo+rCyG
	 mUJTlHw9ZS6gah6UZn0/OUQ34RRMXEf25To62pIID8l6Sozu75sk5MHlHauN2HOBTh
	 Z9kNiLgCIx7xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982B0C9830C
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176876303359.11915.18265114257169775188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b10c4349b8c328305a57bcb61d556b765b4cee59808d6c0bc151c707f3a1f9f
Date: Sun, 18 Jan 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768763033
