Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F9B259C92
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768253634; cv=none; b=OesxQwurE86GYGHCioiDFxEy2Ph1AUWUZOm8UtJGXb2bWAWT8+ajR3nq0m8HOvlejxBgN5NKnK0Bp4JER3OkvYWvCnMq/6ziU4gclH6ASticmydUgEdwbampbAimN6Yr+cIh28ak9bi78u28LCO8Qr58vYUdbkeDtNkUgAOmz1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768253634; c=relaxed/simple;
	bh=fBrjReB/pYoHUakaoHci03ccGQGUS6fP///qisl38ec=;
	h=To:Subject:From:Message-Id:Date; b=UYo/OQ1Lpms6M6CLNv+rD6PQVpX0grUym252+TfWhAOOS78rmSQlWGBONsM6dTtFrBlT58hH3g8UgVgu/i6voKZGA/W/U0rPv6ma2O1CwMzJ3Qkk69diPQIlutFJ5xMejs6ZeJ1UgA8wILMotMcsSARZjvaiDb8oZtPFKH4zr2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYR91Wc6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYR91Wc6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A531EC116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768253633;
	bh=fBrjReB/pYoHUakaoHci03ccGQGUS6fP///qisl38ec=;
	h=To:Subject:From:Date:From;
	b=KYR91Wc6hajnKro8C/bA0ztEODLoKouQadGDW2EsRuxCzRpAdhhzVnZkCKJ+WASiD
	 FkMegx1JPkuwrZn0Z3Cdlgf5Z6IP0pdZyPtr0LU7CW0oBfWt28qQ04V4bhSgNM9I1m
	 xFC6NG3+AbIMsgkyWi1X9BsAg+RJoymc7mvJ9QAN93nWJUmBqyU5DkO9SWJ8FtQfyP
	 OwStPbo3F6PnvtbVg9OlXxx5I1iwgS70h4ZRY8Y9XjKzGgfO+X6yIdLsnN77L8LIgM
	 SMTsy9E04TsVSwPGdl25M8fK4jJkPS1LVl18NkjSbw+ETeOHBKWYFEC9URcg9W+i0j
	 x4dSU8EUdnFew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91706CF45CF
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176825363357.27099.17531764883220782140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70de073af3575b58ed33ba1c2a4f08e9465e88ddb091042980d8d1ab12b18862
Date: Mon, 12 Jan 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768253633
