Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2744E134AB
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748353794; cv=none; b=k3krec/MEoZbwkULObxW9IazivoWC3ZqNl/J7BdQuwF9GXU/OkwAiHFnSmjotyR0eXXFJrU+HrNsRCUrekgPE0fnuKpBORftvyD6jak2syqDs51cLG25psSMtcLpTVynN/YPb2u+HoqGiI57e+yVupGUYWj6Ak50ijzn7WKz7Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748353794; c=relaxed/simple;
	bh=A91wowkY2DKLtz9bzMonYUCE2EAsOi1JrtEbRQbMxu0=;
	h=To:Subject:From:Message-Id:Date; b=HnMnUdDis7aNBbg1xZE/MERT5n4iAxf6CgO3fqEAKh4iO5mmANoTYxpO/nk1xTaoXAETv9eId0+OA2GeR5eznd/VV/uHe3l5SzrnQC1/gMbXxbj5U931SF0L9mk7aW3nRakooM8EJc1PYUwEOitRPzRwlGkKT9ksOZTf3BFjgWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gf4zFt41; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gf4zFt41"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2DBC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748353793;
	bh=A91wowkY2DKLtz9bzMonYUCE2EAsOi1JrtEbRQbMxu0=;
	h=To:Subject:From:Date:From;
	b=gf4zFt41HagZcV9/r87G46UBrqukDhY4YEN6fpDgqBzSG/pm9Go7RvUc2nMd0/jno
	 XqJe/s6mPONJCjWxOaNW4lb54KqkVIyZwlnn+I5Q1MaUxsuQAfoQAFJL/xhKOLEPBr
	 ZWRl/L0zyFYLLbuj8yZFZ7yhcUNgYiVND3HpYYtnFULLm0MUs0xbPNV6tjLEDTczQd
	 35m1YjX+A2OObLebzss2v6V4BtII6Z9pBnhO2jYl9J8QBxaQrtbHQUn8xX8683x1iZ
	 jASJ+N/bW/USj9lfjJ0LNAyOZ0pxJaQxiuMbhop13ycHJRrayNYgV8/+BRdiPETFAI
	 6NwQhXTulzWaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB15C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174835379357.15111.3339485682518305322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 073825984e6ca77cf4c9b51c6fcc0b2e8af4a5698e1af1bf9bc644899fd3fe34
Date: Tue, 27 May 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748353793
