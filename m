Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DA3487BF
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 08:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717401923; cv=none; b=oZzZOIao2OWiloi8qOUnWREcjBdCiJsvFVAkt/iV7m2oPbeuwSsbUyFqS6ZwR2WzXp/FUCOIPzzrW7NTjYOjry1cs8Kp0cWkWZu+CeAgkOm8pT9sYVbhyDVO+nlaZK0YrLU0TvaX1sd8Cs+R4pt1FF3PPbYgB1KWDzTUQaVuJ8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717401923; c=relaxed/simple;
	bh=LSbxzYDGpqLU8l01nMO+RnQKqxdJP39mriE59Qh/8nU=;
	h=To:Subject:From:Message-Id:Date; b=P0KYXcoEDRN76Tm6m/qw9pm2oLuBf+ed/oYs+G7wpVBzHDgQfy1SX7PIkkgW1ffePsEwhyLv7z237px7MlDdlUZ0P9lrXwgi6IpQ1CWJjTVx9q7G0MXJE8R7nPnUN9r3TCws8oHmYGzQbzadTMQV799cMykV9XsQQXO0GN8ckyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KiCkEavG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KiCkEavG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D771BC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 08:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717401922;
	bh=LSbxzYDGpqLU8l01nMO+RnQKqxdJP39mriE59Qh/8nU=;
	h=To:Subject:From:Date:From;
	b=KiCkEavGwjxsyaz1HnIi8HuCm3Zc5e9N4LkKZEz0OCB7nG6S9EwYFzd4xbIZHUKIT
	 RtTU3oBqHA8aOk7CG9+Sf2ZSGJSQvVSJcDvlz8r2MEtSrfzvDA8PR6LLAfXsnV/tgq
	 /+GRqkGRFjQMJf4PyugCSvRYnpFDE/SFUIYfwmrKlKfze8trx5SkultOObAW+i4UQk
	 U7Skz41tZ8soos0Suo1fjec4CA0O5zk2U5DTtV35v4njagaHhwqhpEUeUCCsOj5mRO
	 dh+Jt6snJ/eGQesZmNm3n1dCXOleg/OA8izgZGBOBi+Vxce43/NLxJHUB5upEhMf1m
	 xd3/yoECwo4pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C28E8C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 08:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171740192278.27369.17769830087365191133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdae0540827b52bb4f38222459f2afaa49c6c3a5654d5f24ab40d74b6bd6ad76
Date: Mon, 03 Jun 2024 08:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717401922
