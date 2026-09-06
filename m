Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8042813777E
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 16:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788713435; cv=none; b=caHy9BVSlcJjoABEGJV8/wvSV6JwGAYJwH6KVaXNn3NYywXT/Po2EBsS2Vj1JLrKWyfwpiz3wWI/Upx3SMDPNHIQEvk8WG8RJOph5Py265DSsAuHWb8B9Hkvg63QKfPop3GEFznLpI9l3rMDhFkIIWj7d6iRthIY4blQfSOBjHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788713435; c=relaxed/simple;
	bh=8Qn03y1oJ84liVNcSREuV5eoiM0dtN+ffJfY9DVhbx8=;
	h=To:Subject:From:Message-Id:Date; b=LDAvhVjTBleqBbkIHfdFu01ATusrLP9qjmDEJdjx9LyiF3cnch0tfqgKa6gwsq1awRynqCVmHzDY6/116OBlsGf3qrT4qBRbfg4vmhT2+SKVwOGzXzAytycB3Ae7yQc43fe/tTvXjWyMdhTq6k6bqELZcvSGLJG03doN9MC/tMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R1gxFTTW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R1gxFTTW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F89C2BCF5
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788713433;
	bh=8Qn03y1oJ84liVNcSREuV5eoiM0dtN+ffJfY9DVhbx8=;
	h=To:Subject:From:Date:From;
	b=R1gxFTTWllyjk6ZO9ykZfI0fVaGVqL6NksAGeT1nHsaT0REGrUS8GbeiQcY9dj3pF
	 hykP5nOyKkUoqRPtlT0+w6Ssg8BaE82gUfF9m7kBen/eKro5yKfRISk6TvNt30orRN
	 Xg0tbJ6p2IGIFg8zuQ6DiQSJJk6TIwPoME3oqPtTFSS+pp8HLkla5yVCvi1sWAoHlo
	 zyetspBjb+aicKjbHqFSSABodqPzkfLUojNbLhFKkgkGSbQXKRRuYEePPU4RVQ2fTU
	 q+W3HXV3hd5nGg+Tj0PCBUj5t/GzBqQ6MpAb6bJZm34nB64jiP3Ne4zkk1/0nDjXlN
	 0597JiyUmiPIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF52C79F85
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178871343369.25776.8730807750764989761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fe1d62501d979655663ff61b6093d140bbf1849b3fbff2bf33bfec5975ad863
Date: Sun, 06 Sep 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788713433
