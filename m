Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292643932C8
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789896035; cv=none; b=mwIIPc402SUpYblySaL/3xmRn7aPfS1Tyqrm0vaaMwr3WHCMK1QjZgLz3C0bKI7f9g+zy6sMzuKBCutn7py5iDVvtTE6bhSb6cmpD8uHrgo3E1zIUWIxoFRh0KjaKSIp6jYPs8rtSXEjU5YD7woOE0EWHlOxSJaJPODvy+ea45g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789896035; c=relaxed/simple;
	bh=a89SdPPfuDPnP7eJ7dyLAJ3AAG1qqBP18687JB7yJ+M=;
	h=To:Subject:From:Message-Id:Date; b=m8jsyoSIwAoFS4p4l6Qk60fmjISLjVrTOCE/1n8iT5+juBn+GhSMcsNJ1KnlhOcVOOnreAvn3SfdMZHB1fofhQJmpfIBjcRQA6QMNsaTE9TODPL9lP3rHjSS2yKZWSOCwhfYFMSVAGR4LIIeDJyeRV0i/5XRxiwBiCGD/L/Y7nY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=StCiwRrO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="StCiwRrO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0129C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789896033;
	bh=a89SdPPfuDPnP7eJ7dyLAJ3AAG1qqBP18687JB7yJ+M=;
	h=To:Subject:From:Date:From;
	b=StCiwRrOrlwN1ON9CtAk6DzeQxE1qkYydUXg8YJiDg0OZiLsrXoVzWFgkKd6JCoA3
	 zwDYb+8fkZKpcAt9j0HOJfUV1ZCc8/Guv1vSE9sZdP+7J9RxxOSPWSl34GlOnlSYIm
	 959lIm5qzQi22m3pLVoq3AYpe9rQxXte5M0jWDBsyI04C2FW++WlZvmErx5JkSd5cQ
	 oew76vTx0uU/tccCVWDGW0cAC5doBmdFX2gYOtkl+NeaGzVwWEywqfq/itvPQMJjGu
	 BbSyXkzJSoklXXbnEuCjI8N7gMjp58qFNkMvcZEK/FpG4g+VCwYpSpAMvYpXrrS817
	 xZtyTALOPx7zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC466C982CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178989603369.25987.2568843857521915893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3911ec185f0d6d224262200bc23d0204b95da14609896e58cc1082d9661aa58f
Date: Sun, 20 Sep 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789896033
