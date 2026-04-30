Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357B8175A69
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 00:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777510054; cv=none; b=pP6D1bNvodz2EL4BTlb4x24mRKe7fkkL5WS2h0Ig2Zy5i0AjbC4EcHoQS4xEtqGS9fphqxNHPtpBqmJxVK0ApD3TyQv0pr+ciDOg/WNH1GJcksuaOBRS+INW/Zlk3npPw8vg5tKKxaG7KYdo3C5Y7bCKK8vpewJQctUzavSDTEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777510054; c=relaxed/simple;
	bh=+8n0kcbbNfvR7nrSwST5FatJ9GhK25WtCE3ogm/8HVo=;
	h=To:Subject:From:Message-Id:Date; b=FFv+3JVXw0S5Vr8USnxXbQaIP9wZWJpcXqOEHiX0fkaP+aw3cVbWrCd+kRDOjwoExb1giLNIY9Afj2b+9zHlp/BTdzyQXuf40MUbcJ87STqWUiaN1Y1oLVuA+sZvmn5A+FG3ZcCFemc0pdOy6SG7syp9hGZxXjy11Syeh60b+DM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=flpE7SuW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="flpE7SuW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D4BC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 00:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777510053;
	bh=+8n0kcbbNfvR7nrSwST5FatJ9GhK25WtCE3ogm/8HVo=;
	h=To:Subject:From:Date:From;
	b=flpE7SuWjw4UlcFMZJY2zGihpwNEdQ99+5oqZFCXevnhTe7oknpyyrf1hsD6BL2lp
	 ne1EvPFKca+DdpFh24Xf0BUynvjBUu77lX4iXfLv0fRmRPI3RF043Lf6Dea3sj/ilG
	 ChcuEDEvDmiAX8TAm+ph73De78kweKcDocfla105qcJkIaSRMNZK5/bCg3ZMeUan1k
	 iaC/6aJ89EVCxhUZGJeF6oy4xnkm3qMHssEjNuWocqYTi6CybWtY68ROcQofKyqtTn
	 cKm9uQ6rL2KrtXmIliz4pa6yVxHDgIGZVqqlHO5zraziH4xF1lK0nlDjRhZ0fTSFQr
	 U7rzJtzkyJ1YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9D1FF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 00:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177751005368.25782.2678819729833416733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4235677959a903e62d073a8d7a5f3877165e0ca1596b64fb0799f5859a81d8b
Date: Thu, 30 Apr 2026 00:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777510053
