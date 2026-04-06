Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD142E974D
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 10:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775472934; cv=none; b=a8NS1DpQjJojG+u/ppFkYVU7EgTKH2GIsJZBDYElsvVMHPwEwToVZUDD+cyEXpBfrsiM+fdoDbBPUVWHgVcp+Ur6pR1WV8gJwvYzIXmK5QLljGZno+yhg/tC1LbbtlgEnu1lEyY08krey4Q4HBRcvhvXYQ5n4sdFNdtXpnCdYbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775472934; c=relaxed/simple;
	bh=QwqScgmrfJxDo/FTakRHoNwpnQ+poFDs0ibCL9HqrK0=;
	h=To:Subject:From:Message-Id:Date; b=e5zgH412YxlxqYMJ3eseUwMDwSWLSAVSRCbKxcnZC4ryO0QVnaBjiBuUcwD+Ob8GVNBaj1ap5v/66yxvZhSNa8bmCv6JXtjLBUkzzn9DU7xWg/n8CJNwJq8yfmrim2uZXLZOm/7BAPimLYSJOv1BEaQtVEMiOsrSPp3+7VD0rs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q8XgsoEq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q8XgsoEq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C89B9C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 10:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775472933;
	bh=QwqScgmrfJxDo/FTakRHoNwpnQ+poFDs0ibCL9HqrK0=;
	h=To:Subject:From:Date:From;
	b=q8XgsoEqM/GXJGQ1mSHdxsLkqGwbQTzp+9sTHlHzH5XQZzUpovOvnpEoXLNsp2s1Q
	 cKl+8iDQ+ea46hjwape6j7pOSN7zMOlxSaYuJYQfAoQAEu1n8TB2yrnTsDeAKzm1V+
	 sYvRliXPQfx+fATMns01bQfyiGPLNkPxkWmdbktZAFctZ8qzk2EmOysql6dDdDMYgh
	 W1/+dpYmhFU1j7GsVPg/IW75ZCDHajDwZ4o/rTvQg0UMFuhEic+Z5Mi5K8HkW48XOO
	 wNrM6d/n+yJ6eylNr+4dzwBaIxrI2IuMU//PyDXbBVYfexNIRA6oMCdad8QtPY90Dc
	 UuqA6bFUA3XjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC0DEF4ECA
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 10:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177547293369.8801.13178060770943165819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4d3a1e0dca3a4b41e95ed4be50e978855eae73d4a7bafd7c1f30d7f9da976c6
Date: Mon, 06 Apr 2026 10:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775472933
