Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E28AB4A138F
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 11:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779189634; cv=none; b=oYzV4TWD7h8BfhO0Pf6ZSN7ewuCbpMtBPP36RybJX17uqj/PyeXGJSzk+XcrS27E8gTkX5Iort7RtsjhO2NCqjLzv124p1WS6dK5KS8LUBUpgaIs1VpYwiEwm67A9dWQ6g1uy2aFbBNXuDmrULQLl9+jMzdRdMTRO4kSJdTO+Qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779189634; c=relaxed/simple;
	bh=3p5701ryTJkjRer8dmuUb0M1tBvhf2vUTNVaHjqe4Go=;
	h=To:Subject:From:Message-Id:Date; b=aMUBUvdXUM1GRa23buqORHcW63a1hr2mpkQJKdrxV3M/eTqfPG2W0OUxWUIJLvruOhuUH2s1UJeWQ6nJYjGtUUCe2ox45jFxwnhI06ftPVIDgq4D/SQqFzlWYdIBPVm49P90O4rI/gbYJBrfQpYsKM3IPBNHGfepNrz5E3ZUBOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tYB53V47; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tYB53V47"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B99DFC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779189633;
	bh=3p5701ryTJkjRer8dmuUb0M1tBvhf2vUTNVaHjqe4Go=;
	h=To:Subject:From:Date:From;
	b=tYB53V47Q6vOjP8qs5fmhZf7/ZHtRD/38TtNFpIwlHCrV85KRc8GHJ93Kq9BGh+AC
	 T01in0lyKmJMb7fSFT+nYvZBsf4gRhUeb+M5bR5mMNEbUu4pAVfiYCLeYHSJsayt5j
	 PbGrPovbQ6UQODPFmHWr2lab1a2yu8HmjA4wz6LvA8kD0NmNrWsGUbwbuEJnRaGlSq
	 At4nctwkRjWr0E+Qa85Oqu1/m3sxck6GgQzX9rcjgG6lCW3WfthbfC8xefnCXW3dSw
	 Yj8IuVr8euHx94zsjM2I72xKrAD2SSl2E0OrKQZGuW2IsKZCbZeHEO5qB0O3gStY3h
	 o8X9CWQeUFtOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7CCCD4851
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177918963369.29199.14524683925877785929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35e561113fdf04a81f706cfee567bcc5dde7689f7d8f294d854afa6d7e5cb3b5
Date: Tue, 19 May 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779189633
