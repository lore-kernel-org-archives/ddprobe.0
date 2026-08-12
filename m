Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8429D3290C7
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786511434; cv=none; b=I3/MjvXKHtUmouu2XX+A9QhtONU0AO4QFp1GUpmu4NcxQ30fewsXCso1F1g2hiU7P3s62Hi7n56PvFCY+qeR87YnVcnWAqFxJcsr3pRcx/+gFkqgrpy44JsH4fFktb5fSieJSI2y5OiVyCvjpqu6sDBKkfY/uQhbHuwtb2xzJ1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786511434; c=relaxed/simple;
	bh=nZrbwu+qrd9qkzvwWatloeMl3QjeojTLjhZjXTzJ+dw=;
	h=To:Subject:From:Message-Id:Date; b=JXcEyMMsqy/erJraKVVUL0IOUIFggpQ8g6MvFw/qtCL9ki10wj/CkdPfuNCHh/gma2UjVUwoB9bJRoyJA/bUjblsNHOvpjnkvES/YK54rpXIhVWc4gqbuJoMnoaJoKDGWT7CNzJ8Q/JQikE+7GV8yxgJFMYRKulm6ebDw22Kmgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W4Sl1bDA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W4Sl1bDA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD13C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786511433;
	bh=nZrbwu+qrd9qkzvwWatloeMl3QjeojTLjhZjXTzJ+dw=;
	h=To:Subject:From:Date:From;
	b=W4Sl1bDApckcbJv5GMgu5Qbj7suvaLfE/MFubYjTXmiJ/i2N1Aubs7dA3ANOiIiiY
	 Hhjd8hwK6LUAJGPTZ9hRQwtwCx+BJSpfJJDJzjdHoVDaUXsJz+la21IiGLv+Obagdg
	 XqJilua8znYEvhUrw94XWY6HoVIUch4KFwKzBGxxZD1FqFT128USCx2fOu7hHHmS3R
	 ZHZhmUeB86AycksclxUwt0+nTXM0QJdeS8W+wJBQXjBcNyMlplWKIbyP4ecEk+gleh
	 pLHNP0Iv/lLysN0mTZip39YjZjdiwJyxBWJGiK9FXyYnpZ24NnBXODa5NyoZVvud8F
	 6Xpy8u6fXKKvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81CFC5AD5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178651143368.5479.15574557536350600683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e059cc97ddecb7831bfe3d84e6b58770d28d0921b0a4613ee59d4bbfa8a65566
Date: Wed, 12 Aug 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786511433
