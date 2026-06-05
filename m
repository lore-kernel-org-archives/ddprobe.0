Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46DC64DB55D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 12:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780661074; cv=none; b=RP4tIkx9mQWhj3Gahu/mAfEB/UBGRFx/Cltc8WhsH6eJHSUlTvZLDCMOF+pT1yglnS0oZZXWE6meowvZTRhVpxb3ZS51mRoy5uZs1tVU6834ispZt2fYgxBdiTIj9HZmsNfOxDY6hDCFY6x17cy6qVRAz/IrgPaOyZ+Gkpfu9Mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780661074; c=relaxed/simple;
	bh=zejVI0QtN5baEDCj2yIHM9V950FTmtMu+UfREFD+QlA=;
	h=To:Subject:From:Message-Id:Date; b=D1Z1IGqgbE/Wri9kXxfQZZ3eqVvNjMI2X+3OvRw6tl/oFtRmm1x5p7EM7pwLVIbaE+UQBMcV+ORqnvWmbT5C/Weu4gMW5oW6thfAlRkmix97pGOMQS/RsV6mtwflkI7ufuC5x2WVnT8dcYv+e+oGOX8IHQ+j3QgdVtHx7OEhEyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TOAbOcwJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TOAbOcwJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5803C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 12:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780661073;
	bh=zejVI0QtN5baEDCj2yIHM9V950FTmtMu+UfREFD+QlA=;
	h=To:Subject:From:Date:From;
	b=TOAbOcwJfIsdm1XWZ5vSORXLpJK88W18O8hz715emGApTEv6Dtn3ldVeoFgHBZp4K
	 I76oEqGyLD0FrEd/OAmBQEGXrw2Uhq7c1i4Tz4A1Y07Y22Sef6TOtO1ALu7c5BMTVz
	 jnWrnL6/QWchLCF2xQsLn3C9PFD3FyCoUisnHKBlIhlbTO5SNKF8B2S2MS9Xwe/ex5
	 RskilYj/ZhjswjRFM6f0EHO3wJXeJb0y0HusrwAtY7sr+J5zhaEVWQFttLY0CDECS5
	 WWNCkPHKmJpq3jwnZXDwSJ8CzaUQAiVntsOShYDjx7NAnVWOIaWdxpHovybmhPNCAE
	 rblNv53/87Yxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC526CD6E7C
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 12:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178066107369.26341.6867743616679973850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3858f574f049df2fb88185f508fb2de914fb58a5bc3f9c2faa9722dd070f63c
Date: Fri, 05 Jun 2026 12:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780661073
