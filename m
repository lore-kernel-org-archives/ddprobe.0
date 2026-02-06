Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E37E2C1598
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770375234; cv=none; b=Whu8/Ju04ji4YvD4eOoCPV12ZizTh/SmR1u0Iu11kcAB01IMg84jK5CbW+dE+wPhZCfqTXZjFsFftQGbFcvMwo+cbX9FQj+FjzW9nVTiTDUFn3d1nNAWQwwSdLxccuGUgIPEFVRzyqRTutcMyrpp/k5q88PS092CsHkRAgtTvXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770375234; c=relaxed/simple;
	bh=38EtCqztMSqV70q/P6r6QKHpbp5qXG9gMu6Maiyk8WU=;
	h=To:Subject:From:Message-Id:Date; b=EbZqGvvSDrajQw3TcSrqgldHTPleMymwEi7mb1lH+lOuAHQl2xFsknA+wNOZSgO62bHbghypmrGSAz2JK5FcEhfAWHX1RUn65T8XpTvAG6QonIe+5w6ttbIS8ZvxnSaEf1e0rQ2eh5PE0AVk09tqvdcL4I85v0HOqxS9rMPZuu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KRS7POq+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KRS7POq+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9FA1C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770375233;
	bh=38EtCqztMSqV70q/P6r6QKHpbp5qXG9gMu6Maiyk8WU=;
	h=To:Subject:From:Date:From;
	b=KRS7POq+O5l9vSlDuiCbrp4tSXx6BZ4W47iMstx+DbIy1EuFkwbhwRbwVYtvcLC9a
	 yyUKqc6M1r/61paq+f6H+R4LlJqE4I2luWwPZTKvCgsytIK6BIZ26X/vx0QBWZtNsb
	 odXFGhV/aAD3YUK/22BjOjon5yLFWutdAeHMyemSxNQj9+fiE9jd6vBT8NwkqLZ/w+
	 u/iRW//yoUBLUUV1DuZStwAxF1E8jrzkk3J5Fim7hgjxDGF82XcwH+xjDxesje1dRC
	 hKcJZhaKPTdLpMdtybppQGPzgcCABw63qlImUW1Fon07NlRfj4S4eJ/xHousG/YR8a
	 j61rK4cV2HNhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD61EE2085
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177037523369.32227.245534314997665371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48ccf51126bdff9d3d4b97c5690434551dc6cd298f90470bd1e20f6693bbc7df
Date: Fri, 06 Feb 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770375233
