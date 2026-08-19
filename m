Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCE7397924
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787151034; cv=none; b=QXPQ8Egh7gqGeMzAk35tlhf012GwmZK+YQUUrmB8Ph9YwdiuLLSdnsVRm7u0sxdDFjJX5w6X5ndaccsn1BKR85Pu2UJPBR/71/H+2+gMoQcnHllq7pul1+x5vcYjKNvE6dwdo7ZjsCksxjVYhj9Ais48lKf08TuZDwxqvYGZGw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787151034; c=relaxed/simple;
	bh=cYUBWibIUF3GksBdLsHIc7kDLWyOiEPByY5LvnJhkps=;
	h=To:Subject:From:Message-Id:Date; b=Snm1tskyDgGn+LwXTMc06MkYVc7Je91ln2Ckya6RyYEfK3kA7DaoyrpWUdsznVVNItEAhXju+J1GVeO9wUsExxpFZPx+1j2f1vgX3xVowB8z8iw3K/NX9GCW1KincgkxN4OduzMUAqFBOVJ4HEI6+x2hkgQawzq7YSEs/uAvSCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ETAEsY65; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ETAEsY65"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB358C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787151033;
	bh=cYUBWibIUF3GksBdLsHIc7kDLWyOiEPByY5LvnJhkps=;
	h=To:Subject:From:Date:From;
	b=ETAEsY65bHsdRcrQKTLghB4gJaMeL+kWVe4dXz9sNBDM/c6bnpBIOQuFbTHIMNtMb
	 biXq5CYSOqjbnMMpvAVNoKap/R4V8AzS9x1vr+5KOQnrGSQOO5HRl9hJBa5t8cxRtr
	 WIxb2fa/i+8vdQrrHa1oR8H53qxW/V9i6g0e/R/a4JjV4UqqOmesPQ5tTZ2o8k3qH6
	 C1foz5USI4pbGauUCE+Xidvk19fjE7ciDY7nx30EZm+9Bk0T+Ml9wlRalVJ12H3r26
	 d2jRJOWOmG8pKe0Y/vxCFdCxrpsKMoMTFWoIfBHpuJ/lLadkWB2qFbHjrbGS7ZKVnN
	 vTYcKIn1iKbcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4B42C5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178715103373.19512.11884925655527154670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78f02ba165cf1ba1a212af42080e3e3e2593306e498399130588e03b04857b8f
Date: Wed, 19 Aug 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787151033
