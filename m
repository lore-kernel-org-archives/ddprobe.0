Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E3F3DEFFE
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787080234; cv=none; b=WxPIILgs14z9Clqm975l6QGoRyRFp7YC+zMZeakWaiIENimIBmX/wx9xjQy4TiAQxzKTKXUJLbIPm+JJMyzGKARefsqhMAJ4gONGYNM+fNuMOkHPeWG6z1KHQKcI0Eig3hrZo1aIDYpV7N26wLaBzE9Zb3/wYEEcDFItffYYSbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787080234; c=relaxed/simple;
	bh=aTvDD2fUhXBVBPRow3xsAaeqlce1oohlNSmL7C9fKxM=;
	h=To:Subject:From:Message-Id:Date; b=E7Rw734cDU1V2kcMf3m5Oenfb+5bWMhcKIjgWdxVi7UGGjh8sa9LYR+031d4WPGXixnXzCwHJuNq9elcRrd9LMGflD+FP2LPZOfSjivu2MC2GahbE/LB84rLLQjW9E4tQa5mR9xRLYp4xCtEpdUIMB0u46NirOPUyFxeEVHEKnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojdeveay; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojdeveay"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CECE7C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787080233;
	bh=aTvDD2fUhXBVBPRow3xsAaeqlce1oohlNSmL7C9fKxM=;
	h=To:Subject:From:Date:From;
	b=ojdeveayPOkOCUDjNmU+a4i9j8BJOCFF/AmY3UbKwESAfUlhB/oXAsPlhYthacqGo
	 YPqlHotP/6hz5+2gcnqnYGfo3RpyOm6ADiv4QFDqXF9o7I1n6Ot/qu+OWCpujow5WV
	 YTVHAWWcEIWUODOXGFWmgNPSdxsP/xUqopfNhrOKHG6YZs6wmfRyfqYnJ3eeOKvzNV
	 mZSyL2ach160PGahEwtLqmASAxQn9OpWnC7xm39xrjt0kK0og/LM/9bqWEeofyueDR
	 1EJu/jUxunud5uRRhBLsebPhLUREsp23fD05dFNI/+h2ZDHzE/7wkX3UBruTVVDUjA
	 Pz/gEr5Lg2IFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA49FC5DF81
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178708023368.22272.9962504197521479285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca4cc6589032fbfaa9109d225887d39b24c52819b7322bd4ed3dde86b010cb4a
Date: Tue, 18 Aug 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787080233
