Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 060F9280A29
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773822894; cv=none; b=izlQuM9+jB8iDi/MMH6vvtF+cCmakjVJknsq9V3+IUB8Q80AFTo8JVSQBDIkUV5+Az0HcinRibz/F83f/ntMHqDz77YxDobWfYz25NU+nM5gbnXiwR2vu+SukjiqFpmQ615MeWxLiSUTUVBFX9muz+jJImh0zb2qzAhwJIIXdBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773822894; c=relaxed/simple;
	bh=x2NJLi3x3tHVP5gRtaGulyIWLqQ1oiNgYeRY/PIpTC0=;
	h=To:Subject:From:Message-Id:Date; b=p0TlzVtpY+6Z97p1myW+wgrdxahPydLCzV82O+/yo3QwjSN/BF13/xNjkJalouWdCtgxGHMp3XeJ1Ea8jDQrfm7WFfTXfV+ypVDQEDCfqvWXs/zL1+6nWjR+Oj1Sk9p4lbM4EA7Dd/HTM4GMCVmXKyHwQtlee7qbTWhzHJjdK04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HM6do15I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HM6do15I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDB0C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773822893;
	bh=x2NJLi3x3tHVP5gRtaGulyIWLqQ1oiNgYeRY/PIpTC0=;
	h=To:Subject:From:Date:From;
	b=HM6do15IpcFLs81LDALgc1IGpoMD7bJfsO0eLpq9kmT0l3Mee+8t8AxG64rbq0KbY
	 grXGJa4iZ1OBmvZP7WbUbkESmiUupeW1YsUZSAnBhRXNHMyakPS5GGYnXOyrzqUFAs
	 4UI/ZcjpJpqEwmnjUkPtQNLvyqGRZOLMUgqIukGKVg/V8OZnjQIVYObLT7syvI1CRI
	 e6WhqdyuvAFsQ9nyKmZv93TVS0kBnBiTb1vPPGQ5S0RQfxgCm8Q1PkdiYkTV+pKVEB
	 kmzxTYnboAPOfa42DO1hxdVyUdqNbEzyFGOEGsBO2JmmH3n4Mi1idS6hL5GSuV6ona
	 4dBVD4tRwKLCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC45FCD0DC
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177382289358.32436.10014332373795408620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9692c81fd1e3a543108524a4018a9cd249f9be74e4151e6d54118b5b969585c
Date: Wed, 18 Mar 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773822893
