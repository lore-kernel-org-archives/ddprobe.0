Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09B0824E4A1
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774825494; cv=none; b=iir/7QjogGUBrsUV11ff6i68M+R+G/KQG/XG5gF9KikiSl5emW76WGNvGcb7imyzhoE6xt6142DWlXAgv6y2hyb4px3THrUJV8+YiHjC55VOslu9J9NGj2Wj41i/KDuRlVrLfgymsoytnIuZFaMfJD2M5ZSDdIM68JVfIvDfR1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774825494; c=relaxed/simple;
	bh=E5LEuEdtyxBmwagUNlr8KhRA+eXJRhB9ztD161mGWL8=;
	h=To:Subject:From:Message-Id:Date; b=FLFWLiMisLerslKTDjisPAh6PiyVnk61QJhZVlUCbw5hB5nxOuZ/p9sjL+ePwUOTEGXCcxBYY0KZJzBxexSRxVJ65SGGhuH44P/cjaBtyBUSQfzWzcLlYXIHGz/cOzAxQsi3OEKJdu1cB9jANv6JqOtPGuMyqFZouNAez+ui6lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZwzZsAVp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZwzZsAVp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5937C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774825493;
	bh=E5LEuEdtyxBmwagUNlr8KhRA+eXJRhB9ztD161mGWL8=;
	h=To:Subject:From:Date:From;
	b=ZwzZsAVpxeOgnOsE1HFFepmx7fhd6bL7PJYgDxjGvFWlhGm5d/Zn4uBtPf3LGaUvT
	 /rZZNPCxLLp+v3BRGcckEs4h4Pyi0Zxi419zSzJJHgRkGgkZn/Ba1ni1CCJTY5Qa3D
	 n/8pPiP+b86ScGCHBV9hzQAjB/fkMIDAaZNBvlb9qsTalZb1D+3Y9oFVAiT96wEnlE
	 byCMeCblRb9phT74NNdj0NH2/MZqw6Mgcz+z1xn0SsjOQiAxDgKn0MCfo11kLF8Z1i
	 CjW+bE4XbwDZvJG7hzIud2e7tFCDkDP54LBkSMpQijwQUf0IeFYpY8qQtwz7NzY8B9
	 79goy/o4vy9QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CC1FF492A
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177482549358.22131.7899091689563926956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 743657e1af15d7b96515e1ffb41a9dd77221d2f078423c56c79e53eb218b14a8
Date: Sun, 29 Mar 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774825493
