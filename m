Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A420246778
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 01:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779673354; cv=none; b=lvw7L8MtJ1xT0eDrP8ToM+Dw2r7jlhelZv0MA5/xLrexDcsFbaGyvwy6UmWrZirjRo2IvLdMfsPnmsrzjJd3o6hCwC3o8o+g4ciYc3YNIQb0Y4RDcq1681YV1aW9UtqtcQyLMLv6b+/INEQMGkU39U4VIMf+9lcVsmBWOXKqynU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779673354; c=relaxed/simple;
	bh=ev6waUk3lCkBomJ/i5oiaDKexV1hnczLrJalkK5xU6E=;
	h=To:Subject:From:Message-Id:Date; b=aUUHKPDfZQ+wAWQAIiew1LDtlByYTB90htMr16VY13gHUT7AFU8gb+ef8zt7++bTv1nKuqV4Pxp4fwD+d7VomiahnCGN7gC5dAliOaktADwpaOWOKAyxU/oAJWT/c7WOdisViRiwW34JrvHponiVXJt6AjOE3yAy/CZYyrFqk4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DgdHlTtG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DgdHlTtG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B525FC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 01:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779673353;
	bh=ev6waUk3lCkBomJ/i5oiaDKexV1hnczLrJalkK5xU6E=;
	h=To:Subject:From:Date:From;
	b=DgdHlTtGTANjxX64UmIGjX/s5fYuu5aGKACmBfsKQfhpd/KH1PiCVwJmwM9yRQvKS
	 HNqWYt0f8hGwkIkKM16gPQGIuyFe28TX+sk/vDjFY4UJueh7BHIKTl5oaCxpRZCh2y
	 Xb1EPIQtHjCVSm4zQodx9X8jB/y68GEmwkkhfrKy2zx9dlEQpK0v/29rBQVqUQGbeG
	 62e0pu72QEJfVBpZrcCS3EE7paAl49e4KHVa5Kh27lDNiWNthacfFnWhi7C51tAnOr
	 FsBi78WBTwquWyvrBC9m04LFlxC97qGrR9OTcsTRkU+BBpYA16YEyVMs1Fl6svHFoo
	 9lOF9VzrgHCQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D91CD5BAB
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 01:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177967335368.28981.10560246788502670523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a740881ee2a928f344a8641eb3da9766afbc17787c03c904834aea11073d0e5c
Date: Mon, 25 May 2026 01:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779673353
