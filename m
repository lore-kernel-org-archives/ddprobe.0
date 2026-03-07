Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B4D3491C4
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772906094; cv=none; b=qqA2mRtfHU7zF2E3cKX+EkrbmMm6SRTEevP1AAlGT+38Bnw9IpqcTmo6KNjoZssDQ4BNE6a5W7YStzk31/F9ALva0GbuRQHVwc5wUKRJYL8wu+KWoLzupx3DSK/C6n4I27jIgIipbEMhoqi+V8fvAd4CMoGbMGuVF96WPb8/34w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772906094; c=relaxed/simple;
	bh=ZRh6VnFuEbF25zdAr9KWh5joF72iq9URsYMrhudgXA4=;
	h=To:Subject:From:Message-Id:Date; b=gRVscXrQxkfvFDOJmA3gjS0cQVY7odRK08ViT7fw0+CnFguKUfHPg71UrQQvtksT9r4dzqfcntomL22hquELzAYlljHJpe15JirWNoRPwJsc4y5sITSNzqlCnemb2NABHi0q0vVX5y80aTXPHez3IxiobgGeVUyxR4MjP7o7KXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jwq2CRSK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jwq2CRSK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F68C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772906093;
	bh=ZRh6VnFuEbF25zdAr9KWh5joF72iq9URsYMrhudgXA4=;
	h=To:Subject:From:Date:From;
	b=jwq2CRSKs1UPxs9x709NhbZQntMt6f8qKm0vbJmtQfkamY21T1aZf49q4gwSHydZE
	 mTZQoNMSGYaXzXwuXnBJZzh5IiYweifsN4k7KR7zCqgwcOrpL7X6fX/VxbvHsB3N+S
	 AgnXRPQK+JkPAdS3iDEiwWUSDe4ZF/DY0PrL114xG5yVq24ctmCjGXfg/6FvhWSkWy
	 4TPq+KQhW9Q7n9U1nkpNC+pZIjk9QawtE5MlPbbKIfekAfkoi3OIgsLeK5mhqCeEzm
	 +vGHUYJiTDEha1buJOh4IsjPZV+oKHu14FhENZMas4VC0u7NK0Cdoe3NiI02OQvU3c
	 FDISqJCefRqFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E26F55102
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177290609358.24421.12358866968788801577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20ed7fe8247bafba40d5d3e052160982e0225f19f95e10b70960f764ee83b4fe
Date: Sat, 07 Mar 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772906093
