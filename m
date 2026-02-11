Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F311835DD19
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770843894; cv=none; b=eLK9NQKNnA6EYAtfEoRcY9ASThjxcp8NcqSq5NkS71pdPqjxEmYHJh9ooRYuaYPutxG2GF9/pvU8LJQAk/LHiB/tuf5i5LRi+wI64TVHw98nVUrJN4RKi16TkZU1nx611+8+lf+CH32ifsEhVjYOFItRLW2bd3hiPmI9JnLxpyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770843894; c=relaxed/simple;
	bh=Y8pC3CeQ1DTdQpOHJnJAIzahcFpPxyixCCqzKUt/6CY=;
	h=To:Subject:From:Message-Id:Date; b=KA170p8u6Mt5WBWuA6V5V0vLPOvoxK+0Oc2KeoaTseJTkX8lz8d/vMx73a8yU8UICOGOkyBYvyenDnqzYBRZNHflsId8Hy6W8PrQd5i7GsoEyzW2YIqvIB2cJmc2vudLDstk702ZQLdiVb6ELSda2+FhPGIRdWCGKHWGeLqG9FY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AqDQfE0Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AqDQfE0Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66FCC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770843893;
	bh=Y8pC3CeQ1DTdQpOHJnJAIzahcFpPxyixCCqzKUt/6CY=;
	h=To:Subject:From:Date:From;
	b=AqDQfE0Qs6JgT5zEOFUg2ctI8Gn7OXJSHlk1clLN+pb1OStBDBcxnVWYOcobMQrZI
	 kmHvaFWwFKefMFEC7P/MR32B1+y1wp875mmN4uo1+xfFKmGLKsYXQwYPs4XQ6Gb9AU
	 OzIleFQLC0U6+ZhOpVuv1SPCD1Y6rUtuB7YLUYhefrxaT9mWFMTGpIwLebDIfi4Ezt
	 X48IzI9zDx2XAv9YdQeAWOVNG88p3CEaL+IMDNrfKey6pH/iIiVvrQLFbpD9UGedsz
	 w+a+0VKlyBQWqbYVKLwbcuY483ohQln08ibICnKU7xrgFIIu/2W67pEjgAUmh+HTtr
	 9F6/8a4qDuXCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0950ECD6E9
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177084389370.15657.10960614436037919597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e23846ad992fde8025d0a4800711a701f069fd28f2194f1c26937d2dcd24dc3
Date: Wed, 11 Feb 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770843893
