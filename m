Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48DB922E3E9
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 18:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780683274; cv=none; b=TAgSSXFgDLUh0UxNtBKNOUtCsq9T0anYXcUp1kFgV0fhzkUoTJsj2nPEL48KP+SZhkTuWoVfK90uU+rWB2HCq9ULCS9DzPTpFxWo31UVMyjF6RClgKH3VMjhF9+aPlBdF65LVk4iSVe/4wgh8MLoObJeUyb/N3yc6vyfKVcEfsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780683274; c=relaxed/simple;
	bh=EXoBVULKh4xZaBwuz3IVTp5peXElupW2IKYqQYKvOKs=;
	h=To:Subject:From:Message-Id:Date; b=NoiP6b65glUyso3OjoKejQyiiQZj4vRJRxFZf5Bbiv1ctr1Cl50RH0ViQA+gdy1iVL2Jjbp5krEnME8q+8MJ8q+/bglPPaNNDR2RccdioYrFN10xJkgTwZ9XWo0HfGHEdVu6+dStvRK9mEJvtAxfUZTrw3bfkd+1O+YyE7iYYoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XYOnpV7Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XYOnpV7Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F11C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 18:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780683273;
	bh=EXoBVULKh4xZaBwuz3IVTp5peXElupW2IKYqQYKvOKs=;
	h=To:Subject:From:Date:From;
	b=XYOnpV7YdlU1l4Fjp1q+Oa8k34CqdFfcFDbUAWODx0s8AQ7mnF3JUmuPs4iIFY46r
	 28xd653M6lmtqFQnA7Lf9UBf5Gmz1Py8ow21OvNbE4bv87S6Lp4EsJIhlXvJC2MpA2
	 P0cHRVDBOwuWgLomgdFFdekLM9Z0DTD1Zg02IaXR3nY3XzqCBVKj3Zi/DCpWocbccX
	 W6SgQPeHoAvcLXcYBnSX1jfROlfXF5QV3bWrU1aYUwwMSPQ1aORN3iMTOSyKCretTw
	 2amm2iP7hZFtgpjcnZ4YYXCC6J/nNzKd5msvxDOwpNwnNWoOHyV8o8kOjVNEjOpQCt
	 FLozHZvuR5+1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B38BDCD6E7D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 18:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178068327372.22052.16000183974050621841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffae14d1e9ef6adb95a46f5f0dc72f80434533bcb9739a58d35f2f6c54adbc00
Date: Fri, 05 Jun 2026 18:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780683273
