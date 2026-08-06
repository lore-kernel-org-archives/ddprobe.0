Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3BD33F5A8
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785994234; cv=none; b=Qq3GeDe+qnsl3Utuxb9rrIdE4Uhkg8KuGjrd7wdW/d8msi0xaEVFOf7nzPfNpa8sDXvyJX8VvUI9XDCozY9UiOEPbJvzX6H8e+kSaJmFNcUOzJJmNGZNhbxh+M7fETULZL++p51FT9u9XDfn/Df3TOKypRgbow4DFRCi/0SJSJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785994234; c=relaxed/simple;
	bh=YeRseaN2/D7MT08tP+zumjJanuRZWBtzospJ5VKqtz4=;
	h=To:Subject:From:Message-Id:Date; b=bZUwOxbSun17aUyKG5rBOVAIPhKO62P6aBYVo4SLghucQL6q1H7ueJKO7eZZG9hVWfq7KKDQcIVTDk5mb80C0nrDc8oZPpMT7M7cbnIwpA3qf8lEvPEXiUedrWbaZiaku1SwObgK6W6vNoi3BVRnuF0RvWy/DPHQEHEUt3S/ybY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ulI8S20C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ulI8S20C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE949C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785994233;
	bh=YeRseaN2/D7MT08tP+zumjJanuRZWBtzospJ5VKqtz4=;
	h=To:Subject:From:Date:From;
	b=ulI8S20C24ZKtdo+DU4zrVWjirR0UGKisxgCfumkqTH6+62aBx2aAILda3vnzr1Pz
	 BheN9rjKts/gOLPwlYD0n0Ys5jZOtJT0eWARZEOcF333TNnqRt5lH/nM2ch3FRdnF4
	 1ykJ+GwtJlqiIaI+AEj6i1KE8NELJQJMv0M5QfWHGj9k9xPkrmvqDKOOw9PovM4d4l
	 F+MhybxUCwIq39IiTX+tzZ1B7JFWVEl4KAt+HOdXO6P/pLElmjEwjCi3S433CY7Mfp
	 BFDQOQdLlqqLtDa9QdsS8i817PNH0G4nqKFSgF6A0/k47y8CDi3b6UDAr3aXISqVBP
	 JAj16MVwD8c6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB8CC55838
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178599423369.32615.14591346574143181907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22d63ad1eefbef81bca0a79814aec6fdf68b92a90695c95ac5e99e60083676e5
Date: Thu, 06 Aug 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785994233
