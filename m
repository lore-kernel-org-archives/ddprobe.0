Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B28979D2
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746208195; cv=none; b=rws2hVKjjWDO7iJ3gb+Sm4ORxIliXYznJM5JcIJ4Px7GcjgGbZGHsFdUqwY57n7KCIo4ycuw1cKXOEoT5DNf9dcsJF0v6g3RsG8mS4KHSV10LVuL9M4xnOSGzsdcvbeijL/Hf5fasc47CS7blQZZRmwXhJy2phOwbFOx/NOic2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746208195; c=relaxed/simple;
	bh=+BDn+HdxgNP/mUsEvYiKnbY4ga8ohHmcl87Qa/IdQIE=;
	h=To:Subject:From:Message-Id:Date; b=dRQUQ7P/5olZqicTNICBpgNpH/N9Fgz3Yfjk1rh46L0dc1Zkd1HL6q/fMywqQgdghOvo3FnuT+h+/zudOuP7Nu74k87rqKLJByXR3ZiEJvEiGQBKmKSpJSdxyWR84S+Ongp1RfdHgiS/ZtdtrsgCYIZjX/2YyNhYGRW5yAutyME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lfxlm/mU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lfxlm/mU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EE9C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746208193;
	bh=+BDn+HdxgNP/mUsEvYiKnbY4ga8ohHmcl87Qa/IdQIE=;
	h=To:Subject:From:Date:From;
	b=lfxlm/mUYhNXSiboGTB4XC/J5YPpOJ/FbyU3Nne6IK6XYDZ1zLw854COnrIFYinrY
	 8W+j6+7mSgQLzYVneuIGyYeGykAiRDL96Vtin9TzXbv3w+OomM7yKOLTsVpebHA6Xk
	 k02Oy+vxk5wDU4qwykXSNAqRq23yA16xnzgWJsvkvDeC3RXJUJjGKF7rZL7cvHxqnN
	 ni7uRsZS42TI8Bf/cjFCB/9sI8GhqaeuludD3GTJ0nPTn/J32wBdHi4XSK6npPx3Wj
	 tfZbMJ3BXqBvgUizvozrWiwtKVCo0IKhKUgCqvYvm93T5gYB5IC9zabDsCEOZL+ZHX
	 ue93o6DMSdSkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D9FC3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174620819357.10961.5292091473358935192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8995e876e24d0d5decb804927ffb88f0a87ae0a6fced2a0b70003c7191d7e051
Date: Fri, 02 May 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746208193
