Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8ED192D97
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 03:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780887874; cv=none; b=FRi+Ebai3fdqU+nsuHyjhrfXY3fvXDugQVPXOxf45pVW+3MTd26l7IbFy67CwrtCToQFAnbPzLgT0nvD3C2fM99jOjwGrbHG+euw1SPg3pOOvRG3GuO0W9eACGNu5fh748Wa2rzV/7S0JPUBKrUsh0VoJ2aJNwy7SnseVUqVEoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780887874; c=relaxed/simple;
	bh=F0vMEIU1Fy7Frq08IYvEdvO7ZgqtHv1trtjDZHAF9rg=;
	h=To:Subject:From:Message-Id:Date; b=kmVmXP7z4azQkHSQ98pZ6heK3V5U+M2ZyyXrkYrKRKLtoL8ipMqO3ewvjYkbiQQyGTREjCj5TGJ680ZXxQ7mLaIHEH/nNHiL4T4zMYWfm0CQPqJgjWi5QUxhqUE1nZWOOva6BUOF62BNHtn/MUywsbII+7jaqYKuZHS04cJVcDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=twj5N+16; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="twj5N+16"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C671FC2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 03:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780887873;
	bh=F0vMEIU1Fy7Frq08IYvEdvO7ZgqtHv1trtjDZHAF9rg=;
	h=To:Subject:From:Date:From;
	b=twj5N+16jdgNlbunZoc/Qka527dPoE1znGxN564iidTEbz52u5rU3XACUuUBZulty
	 c9mXG+UYYbgbfRRvjF6205e2RpXUKM0hg/6pJHNlyDulklcK+Q4E8BJaPvR2WVpEZr
	 zfXMw/Fp9qYDY/qaYKz+QCuJnrEpgIF/4FzOIhj4he8cjhgQRUNhIdoXsWaOpsuJey
	 32Ji0B96tYgCkyVHWH3DVMW32jBtzr3PMcQ9zIcZCGJFrJUt8Z4395nkgRaHsKaSbu
	 iJ656L+sWFHRWlr1mS/03kEVW4b/pLmiW+JeFHXWbVfTLNGMKeGmIa1ZA8NDd9xYP/
	 D5II1ULNSEaMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC29BCD8C90
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 03:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178088787369.24956.17772641841523090384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9427c25c4308143b02135209a0f67fea03c8ef18eea2898c46a6e48dbc72fb7a
Date: Mon, 08 Jun 2026 03:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780887873
