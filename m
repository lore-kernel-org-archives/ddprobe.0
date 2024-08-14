Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC2E55E53
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723625754; cv=none; b=WbZC8RHycf0HrrBaORaSZXbDt9Cvzr7r8P58ugA7xm57USWilqoVYmTX9ko4oBPnf04eIrQPwETRe9G/679KQ5kiE9fJNvmQf5FlLzQvEnCK973iO78tdMO1l5e5Q7rP86+H5GC8bGA7itHueuOE+WFtcpwLK3mBZhA1zDEIRK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723625754; c=relaxed/simple;
	bh=sxxP4Wv/9uw5q8DY22u61mdZ3nDvdwuv+61uO9CMztk=;
	h=To:Subject:From:Message-Id:Date; b=VpZQ6CLWkg1G8V0gpTlFCe1Y1RqNv9eCGhQzb9vqjKtp8td5RVbOtMHnimdAGUL0d4c+a768UJV+YwA83FPiFiePDyFrI0epzHv7nwGdlhIOsAXFWfMa0WDvlT1vr1XW+ABDTgBwnrSkcPpNZ3AdHOk6TkR9O0f9UIvBfWHAiOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kdh/iSBD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kdh/iSBD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A591CC32786
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723625753;
	bh=sxxP4Wv/9uw5q8DY22u61mdZ3nDvdwuv+61uO9CMztk=;
	h=To:Subject:From:Date:From;
	b=Kdh/iSBD5PfcF4m24HR/56muOFxnUb6BcdgZlNXmowNiE+S6lIc46Sb3BceupskiF
	 SVExlDMjirhedSIylGQ1fZSt0IGr01yRoWomzxgCwKJSvYUCVpj/0Ahq6YkMIwv8j/
	 Hmou3b6NvLJsoXqPlQdQEF/FBpobA9oyFi1dM8cmYDtUQDpEMpbiYvqR/k0VI+AMDN
	 eN7UnbpM6xw7Tel36qnbGmXh+YGlon0ZCYF8xN6BUDzpizyljOldBUV5LWX9hxuxUB
	 UHMJsXTxQJWvpt6MSn9za+j18pgyzm3pUh3tiBgRwMQTIAbiM4tN9Ru56RhfN1gpIx
	 04DpSZ600WOSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E8CC3DA4A
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172362575360.2593.7069523839297133861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b17166b9c8d6db9394497fd7759946fdda843676966ff0d956bec4754f7041a4
Date: Wed, 14 Aug 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723625753
