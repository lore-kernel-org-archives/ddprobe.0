Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A6C3A1AB
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 04:18:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711599498; cv=none; b=SwJ/pwvIRCwOo6kxEiilQPnEGbbBLsiguy0YkUfYJl2oQFcfU3oWAvW++my0/g2tSoGS31wG9KJCrAuHyucvYygpnr03Me2UiA38ybuwfhfhA5zvnuQyyxWObIwMl+P75SPud4GkpBvw1nFykCOX9Wa6ccmAgky1taKiRGE51oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711599498; c=relaxed/simple;
	bh=hpQHf6m4L93Va567OCn5dJN6bPHWYr/hnv++cKgrTQg=;
	h=To:Subject:From:Message-Id:Date; b=QIoXIa6PLAlpq117b2Ebb5cG0bHQHhKpV3dCKgAWSOYIk4GL7NchLOAfA5v2OI7k//YYgOf/x58XT+waNIdoHntPybTphog9Jir8jdn3FtFU7AC3z3mKv2dnDmVfNULiSuWUmZPEbCk+xPq2IyBiiO+62SNkMf59iyut0MrqMeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DjFxcC69; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DjFxcC69"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78681C433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 04:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711599496;
	bh=hpQHf6m4L93Va567OCn5dJN6bPHWYr/hnv++cKgrTQg=;
	h=To:Subject:From:Date:From;
	b=DjFxcC69BokXm9s/kI/Bowc+cVVVvO1hfp6EQnknLIWU7Y4OdJ8pOJQAIkmi+R3/r
	 WS/O/neEHId0hNJJlaCog6/VrHtCwcyC9DEShrRvIw8X7sV42XWdhATlMupGj1vC4+
	 WZ27fUblE9Z9tYNtQmdzl2ma6L2ek5jkE6xmc0iw/wnNdqscBbuhCo/NiYSv54Tqzu
	 7TaPsLN8RcUQCRfSIJQTptA5ZZyLd9O4IP9Rve5Mairodv7YTzKt/UAvcUbwfmz701
	 lxR8dOeLLut419FCmzt9psTY/RXELvfJb220iO0aXXRb5B98jgX62s1fmJk4adsJur
	 6UotwwVkxOYZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64598C54E64
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 04:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171159949640.21872.11746502950343279314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b11d8540fbe4bf3b8d2a116529b6ff65e937d5757870342bfbe332920e94170
Date: Thu, 28 Mar 2024 04:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711599496
