Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2CC2AE8B
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751438994; cv=none; b=gwF86VmOOR5BJMqtcV5lI/6pECYbTZjzX6fxijTUOoLHNee4P6DL3c6Tzob1aZWuB1sPqKYYn4AR39JdFKkJVHixAi5RYnCWGpaWVj0LaF2yIg5U4SB0lo4n39G5nNMKJbAQCqTEvIyffOhtRnEKA+urXQYcTKZTW1wFoKTwQns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751438994; c=relaxed/simple;
	bh=oo31EuvdPU9qgvFd+hSdCj6lUbdwC61pKCTjgi5H1a4=;
	h=To:Subject:From:Message-Id:Date; b=F/nqKXSLUNZenV8ILFeZvZSW5taWpQGe9s/qMrKtA7CJo/XM4PGRDqTh9UUmnG77rt5jlFrZldUwg+wKJh0vxIZZelkzJ52nmWGBLoVll4d0z59vnhqZwskaVhAOxY5rXznRlkCd5FeiWNUh8xrLB/1gQ0bQJZrtMM8STmAYZW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hVLCSL8N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hVLCSL8N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A7D8C4CEEE
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751438993;
	bh=oo31EuvdPU9qgvFd+hSdCj6lUbdwC61pKCTjgi5H1a4=;
	h=To:Subject:From:Date:From;
	b=hVLCSL8NJ2xsZtbzkiLNE2wdLA2+Z1OtxlKI6TsbId/8LtEew9e0oujb/fC9M6DZu
	 gMvPZtBgtwAaalOrnMqbr5C8Niob6D90vY4YTXzdmjGhqnGrqnOHJHz+MXKb2obrXt
	 ibWX2D+Gti04z+rNBU6AsmLrDxeXxRwB5+XRI7vwtSrUcHqJQW7HlPc0Ol7xL0LX3R
	 TRfWBOARe0Gm/xXrGCGeqN96c6BF31ibD4O6HXngHIOWxQgBxn4Tj23KsNznK/ugwA
	 +1Pe3hoB3AGukz5JLRVKOH4aduBaCcCEqXy0f7Dhy8pHEP2WM7eIjaV0KL/EWAlnnz
	 AgrXdYoORaSSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F11BC7EE30
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175143899357.14908.5614786728437937055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91d81d2757d496b3d52c219150904b5b0879388f25751a56b7a7d296fab5dccc
Date: Wed, 02 Jul 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751438993
