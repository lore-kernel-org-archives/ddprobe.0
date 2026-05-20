Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB483E3141
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779285634; cv=none; b=u4SikZW4vPir4h7f+qGjPTca1ZUSufwtzPCfKPmCEJjgbEInnRFyQD1dZzpw4fiKzGE5DkpAzdhTJU8FN0DtP8lnhRSCiObZzrtQMcMYu35vhKLUYyNgZDHuzZxE7KZtAp8lgC3qU3wiUwDr0TFzIpAgWOx0sMUo3iW2qJ/bMTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779285634; c=relaxed/simple;
	bh=TUOWYbFHL0B0CEhwho7gLTgRb69Rfa+1EmDUP+XBf0E=;
	h=To:Subject:From:Message-Id:Date; b=FnildM7NssGfFbMyDAYzWVT8oj4THtMwlKEgoEvNNC0/KUAd3/JtGd78gBE0dVKuILC+MIAcj/Jp2sPYvq5HErBHNqMXjTpWkgd9c6V4PKB9JbgWv9+IGEe8/ML74+tOONdVUSrRbAVf1j9O175SGsiTtmFH8FJeT/nUhE22Jgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uWQliotB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uWQliotB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAF94C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779285633;
	bh=TUOWYbFHL0B0CEhwho7gLTgRb69Rfa+1EmDUP+XBf0E=;
	h=To:Subject:From:Date:From;
	b=uWQliotBg0GmiI8yNTPOPqmu1wu97WVMXP6qzO12Dt9ekBTvOxyYrtYWkEagXJLhs
	 sAg+zRCum2NNz79OiLwRe2OcWp3Z3VOcclmr1Ug8TMrddxTv0Fgd/zABbQ0rYACkvw
	 rgAzm7aHBwqluWa+JrKe2+oCL1YuNA9KQR+JepyvxMdnLAakTtKNcja1ybM3edA/Cv
	 6eU5p6wP4wVVi/O2tBglUg1bA4rWOAneVw1MiDeI0KfCkd6baC6Ii83mGE7I4uFep2
	 2CmQgR8vKHNNvGdbU3xHcRJi/SB+hNL6Hfz5VmuOympFyDkyaBaPdPNoPfVV8AZUor
	 dCbQRkqRInH+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1D9CD4F3C
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177928563369.4147.16533059981177496994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdcfa314d9b7265729dd370e5b6a9adae7dd378c504edbf55f594c92cc0c32d6
Date: Wed, 20 May 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779285633
