Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B0C2C3255
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751631595; cv=none; b=QxjcyTj4sd3wzVGjesbxIvnzAXvqYtF9THeqzjXnEgi2KtfRnVOmk12WdjM2BR0zxH3CZWje/kTwoV/fbMbSpG7Htbpsg8VNVBgJ70t38P2y+N4kAiifqzD7ekTbwHsAQq3JpVZye8m1Y4f8D4xX5SIQ8e3lspAvqh183ptgGnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751631595; c=relaxed/simple;
	bh=bGC7VTSYS6GMWy9ZAyDU2zbI9e+V4IqSS+tAtb0VwQU=;
	h=To:Subject:From:Message-Id:Date; b=ax48+IWsCMj3tO6sKrw007EbabLPCncrjAoceKfcqd1klGIsxhpLPiFauwjSyywNu/WwL4qOFA2dh+vlGTZmAiKFVWdDHBdAad6c8iCPb0A02C/07kxirB06ORf3UT5QiJB2wPyWprs+WNRB6ts242ctx/Xy/P9cLAkVOZQ2MDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m9K9j7I7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m9K9j7I7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8B0C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751631593;
	bh=bGC7VTSYS6GMWy9ZAyDU2zbI9e+V4IqSS+tAtb0VwQU=;
	h=To:Subject:From:Date:From;
	b=m9K9j7I7bDyTYJu0cotOVPfXxHKq+xGEKxWm+FDPNN5kuiGCfsJfCOh6S7eoN8P+0
	 NyNRaM404xJlYgzb3YTscv77FYdMLI1KajIDNEfCr2T3LH3cyIf0DEcMH6VKsZIgjN
	 FwJEW+HiDA9lV5qQKK/kWM/nSnsFjVlZS5QdYLEU95MDCGGHo/eSDWZ8zv1I2dVp/t
	 vbltcicbwsVNwygvOg3F1wq7MojWARqVPEctREBjT1uQ/v79IGOcVciZOZ3R+U751B
	 Q+FalWfLx52WQHtm61VhF2ussHyqrtP7feSqF9u+Je1bLjFg+RI7agT4t8y8iBs43c
	 0idTXqLTCcikQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE43C83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175163159357.27841.14540515333717148806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0439ba9a34e180df2c7b69605d8dd87169625f06fd3d2ee95ffa978de9fea1f9
Date: Fri, 04 Jul 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751631593
