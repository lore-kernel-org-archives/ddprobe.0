Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 556CD388379
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 09:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782291994; cv=none; b=XTf+l8g3EC9k6p+n9tVgYHAr4YkXI32zhkhDIzYgiw0kJQ/WJoevnE+E2d5kt/KcZUf/scwhwNE9Ub9LgsRklysRPhpVdCDVwvePge4/XjMt5W+hMwnrh69SdTT9UeuyMuzgnSxXdjfQfMw7CO97hexOFgl9zngAqNVwoZzzjVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782291994; c=relaxed/simple;
	bh=/fdIOQcNa53QXML4Hr9hALo9fcL9HzB/yio1dj8D4b8=;
	h=To:Subject:From:Message-Id:Date; b=s/xHf9WbEm2OKz73Cf4s9yvQxd0HPR6ajpwu/yalGo8HsEPcaTlmmW2o1Wd2A8FkAILi817zKzy6Xj6Q/aDiVpsmtFrVz91x/Yyo2SUTSYLYCwTkzW8i1fHwQ0ngrUqaD9iUe2jD+OD+keeW2rrElfBjFxTGLeO3PPFA3NXCQWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/pAIirv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/pAIirv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEF27C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 09:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782291993;
	bh=/fdIOQcNa53QXML4Hr9hALo9fcL9HzB/yio1dj8D4b8=;
	h=To:Subject:From:Date:From;
	b=W/pAIirvcg7/op8VEVOV3Mez80Racz/2zzQzxUB7RgZ0UmqtsZqNZ8wWgbK1hJEkM
	 NhXNbKA4ZRzn+ydfl9sr4Qq2RCSU3Y1ApxmBuoFXrqUgp9CCzLF3slQpMl+EuStvfi
	 5lXekoEHeHgzWnZAJVawCO3+fK36uB9nZOHdGVH9hfo08cqWPevsE6Z6UjAQ1k64RV
	 0UII8Ec0rXsblofLyKjWDR8kwzlmRy36vJ8tTajXzqVZAO1XhRtWlB8+mVC6Zwtkig
	 pAT/wfnkb3nF/U99p8hcBJyuiY1CfO2deheXC+ssWdYnl8iF1UTtelXHt7J6EEL3Cs
	 qRdb6mXnx24mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0805CDB47F
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 09:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178229199371.6063.4782653494587627406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61632ae46999897b2f7a64390ef36a9b67d6217ea639ea4844624c39ecde93b1
Date: Wed, 24 Jun 2026 09:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782291993
