Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD222F2F
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737286554; cv=none; b=E+VwB43t1lLRdcUgdNO4zsbaMeNhS6bmsXyM4/I6tPoppU0BG+XeqZJgeR2/QRBOka3a8qjzGP7tl4GkUXq7u018t0fBhYhGToIT9LR8UtCU47CmcAY3kKWvSgBFr/HAWNPfMo4ONApgHKIOqM+Pch06EARAMGTxTWwBuXM1R88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737286554; c=relaxed/simple;
	bh=cyu/ym9DQvB1urI39ESg1mItI5b58oWoUOYxHL84Xrw=;
	h=To:Subject:From:Message-Id:Date; b=aff+SdOnwlHiN2p38PdNL3mRChR6WJfjejyidcwKHT2fhkjtvixecUEcm0x/3kxl9HbLwwm+woggOQceOfrlWqNUB+uXQjgrORDgcIQrS4QHYGLs6T6mVGmx3x/mCruuFS1UmiG3rk+5TT5A8z1mekSud5oYgj/8eyGaRXzH7T8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LmaaiYk3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LmaaiYk3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7DE5C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737286553;
	bh=cyu/ym9DQvB1urI39ESg1mItI5b58oWoUOYxHL84Xrw=;
	h=To:Subject:From:Date:From;
	b=LmaaiYk3WnRMm6n8rKSgJv3gP10OCMunpd4cdb2g+LE40Z06PqGfp0Wn9g7bFOzue
	 LZVuA29ClSCL8wrjKLNt1x4DZAlTpUDZhFLvkcHR55TYhzEl0KSl4KHgtya6mPOJ/g
	 eWcV7VfuRsNMaLnWYj+wAgkYbaGVXSp7cT1BmB76Z/9nIsTVUctV3e4f2AmXh2J2/u
	 2ZbHt8WX8LVus54tVr8JGB4hg/9rAE0Y/cQfA38WoxMyATc466lBWKzaLiXSys+ES/
	 yAKOawQiFHkIZm8EaRha/J6Kxvn9TxntbAkN3Z5ex3qS0QNBtFh5zuAuopFHZyU7/n
	 QO/k9THTtemqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1E28C02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173728655362.14871.12226946336021338030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e55029795eac7699c78e349cc471765075564f151074c40399534f4124145e3
Date: Sun, 19 Jan 2025 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737286553
