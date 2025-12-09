Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D12042C11CE
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 22:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765317773; cv=none; b=JaXhZrax0r0ZjIBqn3gW3q6Yx7XvAGCnp/2rHQKQQezAKyJyVqvuiFuFPPlNcMpZqDcoKfXRmRh2PBM+Rf6KAgduoqcDW4kk74cPbT3Xh91TQpMHhTdKZODcggqWy02vgWXY28Mz6rwM4sm8Y9rIcYvBFzyfHh5tj7srY1Wg2Yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765317773; c=relaxed/simple;
	bh=KiWlk5hF+gGmKxWO8gB1HkOXX93AZeG6abAgrIlKOU4=;
	h=To:Subject:From:Message-Id:Date; b=sBNALI6cQHOkT4g7b+tRDrcEv449nNYxHL6pjs1j2RI5WI297BoB3hW4BxFmvh9RnmI+87UfKL0S5/+B8tXS86678HjZI87DeYVV43S5Bv7fryCEK/GmDMT4MNxhJEFdKDg6Q85Kv86RkEqWH1bn/UmtCArVQ7hygwDI5Y1ror4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GtDyRYmE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GtDyRYmE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B00F3C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 22:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765317773;
	bh=KiWlk5hF+gGmKxWO8gB1HkOXX93AZeG6abAgrIlKOU4=;
	h=To:Subject:From:Date:From;
	b=GtDyRYmEvpFkSI79NbsVD4iF8z2dTV37NXq3cYlz6l5HQqRLVRHciB1Udbvz42KpN
	 ClLMcqFPHSjkSsIH8juBeuWCNfmYhkwblzIPzB9xPRray9F3H6aWlatvpemVtCN4AG
	 UH/n0oUv8ERrS1kqrQESFU9KhFc6QA6A1ZFvbDQceRWuwkWUzWhkD2r2R28Zkod+5W
	 ovqdFQ3TY2Hpsbm1OuYkd0E7PLb5ZyaEWRK2h/sM1njsEjxrRGGLeYQba0wk6gvnqG
	 XWhLCmoLIjSuXeXAa5lZKNBp+18+aeZjG8M4FivyVIOqj8Pq6keTxpZkj0YXBcIC7o
	 WtalZxNihJygg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AE2D3B99E
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 22:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176531777359.18718.9842025011680830230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16bb56e55133b288209b5e2fa8efafb0eb86e1e7710e7f1fd53fb9d0490bd1f9
Date: Tue, 09 Dec 2025 22:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765317773
