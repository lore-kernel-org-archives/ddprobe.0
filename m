Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A4A2F1FEA
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 17:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776361054; cv=none; b=IjwskWCRYiYEhj1vauUXTfoNUPQNGVN+aqwiVT0LYA7q7UWA+X9vFckod4c6Fyd2FCGL8L2cVBCFG6rhYkxQl06c3YZQ1OnZ9qQaTkMGbZasnGknTjR9nzZ4sCQ9+hbFwl3BmR4dFEpEF4hlPC1v4IWyX1vjyD4NZMz2A+x+mXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776361054; c=relaxed/simple;
	bh=aTx/oICAby+h40gAIEjr0SKwAUXHlWndKlCPtNN/lck=;
	h=To:Subject:From:Message-Id:Date; b=YkwO9ivE8HKZhZt51LYvjITgBTuvot8B+e5qFZbcCNUX6O3qkxG3ssCGVdv2LujZ3oU6ZzzI6Ybz4bhAA8r5B/4u+KuiHhjlqutfDxnguPwTaV3GuWBZ8uwoW2j9iUnjSTxyfdrjXYWPx4GRGu/YP5MFSE+KBzdbOmjewFFDB50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iA6MoLne; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iA6MoLne"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC29C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 17:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776361053;
	bh=aTx/oICAby+h40gAIEjr0SKwAUXHlWndKlCPtNN/lck=;
	h=To:Subject:From:Date:From;
	b=iA6MoLneGnHMD1buj4O1kvTRGklfMWjiDCr/7ZLH4E7FJQ10DAsp+Al5M90ZQ48WB
	 A5mq2l7QPmdNBv5GlbR4dnqI+74EOXvzyzAKdjULSwgdR1umdbPkAP7rRxxl69FSq8
	 LKOvFROsE9gEJjfSIVOWMXm+XBMlYvwnNFRtZYfoHAwNwnPqrRoqFUJ7tfrkb4d/ZN
	 DCGfsIgbSeTI9AYFFE7jvTlDC+Mo2S1rYob6Dl1XUL8lH4KWichZRDtLvUPh4EeeiF
	 P83PlNs9/jLWPS5hMfn97ehgWYRqHi4RvpeJQi3vDpinoxfzI9CURz4IMNuzgH6pTU
	 BWRfQ0iuNdiLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBFCF8D761
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 17:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177636105370.5210.15661582869102317706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 721492bcd5eaa977092d64ae5c89e68c3628d0a07db92877b03af8b62432c546
Date: Thu, 16 Apr 2026 17:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776361053
