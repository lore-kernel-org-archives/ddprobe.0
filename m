Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FFE633123C
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769706234; cv=none; b=fTSkmPsgc5Jl6qqKdVVp6as+xmM4vHWl3Ieh5a5dvkAYGjrUdE+wcfZW/OZOcLYmejR2eByGosUWP8oih1/T8tkIC0unBlVJ1dZZsb/iOAbsiC1Dmi3U3P2Uh60VF7NbNjtzjgN2n0p7E3lclNd5o0s6HXcLiYlZ8Lx+wVUHMUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769706234; c=relaxed/simple;
	bh=tUeYrua4kMhq3NEPkVYSKknqkFkbD1dwR6DhK4DoH3I=;
	h=To:Subject:From:Message-Id:Date; b=uGFD/6sKfTjKnFXQ/U+RQ9N2wFsN/Xb4XROm7Od60woKowZa16VAtcHoloooq6cmL8T5wBOSHtuNB7+Wh9vJ1tMwMQqR7d6z8pAZwQvzj5rGpuNVGuApyYFROgORCatTIA73bLfP2rIgHUTwM/prxZ6i5HdhXaACpzH4U3m4ML4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rQkejSv5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rQkejSv5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3835C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769706233;
	bh=tUeYrua4kMhq3NEPkVYSKknqkFkbD1dwR6DhK4DoH3I=;
	h=To:Subject:From:Date:From;
	b=rQkejSv5PJscf393cLRj/x5kYeU0IB/IvW2+j+48HK1RgmAv4edvZeClvQ2ICacde
	 aniGDoUTvgUJkQNQkbEtloO8C76x0+xOH8AdbTw0y7yHgUfDLA0MAv7XmvvQhGqhf8
	 R0dp8hlUS52r8ZvfOUMs7/UEaFx7XiTukQ58OfIFBKN6xpzDRH18tQOFXR04olzeFX
	 d6Jz0PleUZE9mFqVl9tvx/qgkRYEepS2qlzr6XK1AAp/qVLeDthjN9rBVOu/K2W9UJ
	 7hGqFHDQ4jNDG0AhG4N9tMV80LsjqK+X6giEIvK3rV2SqTdtekQ26ZSNV5FnJr3xMV
	 VdChJ8BF7R3WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9280CD6B09D
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176970623358.8123.2749181544742489281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcd1d6e33fef64931fc65c3c932a6848eccf8b6be7cf163afbada5fdcfb12af5
Date: Thu, 29 Jan 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769706233
