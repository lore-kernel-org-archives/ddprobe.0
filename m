Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7E61F131A
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750500596; cv=none; b=Ihfxwz8l/WxstudW8OrSPaZJuuk5AAVy0jHoOw1uUy38Gwmo4Wx3Q1GS2iw/V6RA7OHEvh8hfM3bJu8FiWPiUqhZnexSFP1PPr1lYKWc9/w3WNW5FgUThMzyd/CSC5xyL+UXyA0e1XuOwV1RfjdeNt3b/ut8oooGphmieLSEEhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750500596; c=relaxed/simple;
	bh=5Ars2zJeaic7GfnfezCTiMJPxqhxek1vJDFcJeBsdgs=;
	h=To:Subject:From:Message-Id:Date; b=rCEwk9tfaiAvMjJlZLuvxqYmmkqV2AWctAau28GD75JDlOCgkq+Z1KoOPlzOiEnOI6bhha5sp5OTU+q342FjAd2keqacOab7s7OQoozRZ+cfZ7vzzxa3qJo5tDKxPbYnKvRNleDrOM1HBPZ3tBsLQZbHW4AHP8DDAI5FW1vmGbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lLgDJfEK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lLgDJfEK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A77C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750500593;
	bh=5Ars2zJeaic7GfnfezCTiMJPxqhxek1vJDFcJeBsdgs=;
	h=To:Subject:From:Date:From;
	b=lLgDJfEKBmjCCXXqxvSr+kvbQWSkS1qLB4ATjMpXpUHrW1lz8lpV2w2fu5mSw9InZ
	 h3UkvomgKyS4TEUqM2ylMZ0VlfUW9u1rwSbAV3bh1B6HCY65khyTYQT5Dn5IgdvvyF
	 pxnYD8Lo195LruNUrrduStZQbkSgurjfOm/YG7W6leJa/9QCxIEy2YBKpKwzjJ37Zu
	 ZMBX0Dw3IwgeGuIQsYrB/T663rXWixb/PVKsRkc3Os5t1dZeWov6/D0/wEwZGgRMfo
	 doVZWx1jAbfUF9VOf610SV2DdbxYvrjfSuaWblxW8oJAOanSy7ZTcy5Vmg3XZI0XLT
	 eCVcAP017EAKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F42C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175050059357.18956.11290151109389205639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44cbd0e2542b8c78e07c8a70f80cbe371aca060d5597d7e70c476f837852e1b0
Date: Sat, 21 Jun 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750500593
