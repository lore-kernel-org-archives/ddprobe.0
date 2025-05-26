Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42CE519F424
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748254194; cv=none; b=PEuhrMAgE1jaRHRvVqisrGXl/izmy8CPAMcgTLfMOqF6PaiR4mE3Gbot865wy1GEY/mcYegDG21FZVjqPSfrDTmRR6ysZmoj4MIyPzdJ+ESac6KmkaIPQSqMVrxwxVYVprpbOM+60t3+F4XRm1iCzhagEP7mIDsvP2w0k460Qm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748254194; c=relaxed/simple;
	bh=YvKgmCj2vvJnDvBDmCpXUFDAajaY21i/Ern94tGOgqA=;
	h=To:Subject:From:Message-Id:Date; b=VxjE5M5sCnq5um9+Pm97p2duXrRDG8pOY+hMOPkULOGHNL6tLLEhMMHxR7RgKFRP4eF2EOC4GMCIi6u+IqgUOhecPkmafoaCzQoXc113McbS+sNDpYkh3UazFdHxENHSSAzGe7hnSvwsk47nSARgZc1+hE+cOaZa52shRVlE8ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qWnVQIyq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qWnVQIyq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37CAC4CEEE
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748254193;
	bh=YvKgmCj2vvJnDvBDmCpXUFDAajaY21i/Ern94tGOgqA=;
	h=To:Subject:From:Date:From;
	b=qWnVQIyq4t9qEHwgNm/z2odkVeMelDJPciCmEyh+S1FLSC28UxHINCxZfOkeq9ugo
	 I5TXrodGuLLOCXyrPbkX6zIwtKEKjfIZ9hx+M5h7G4T/I/ttOe9hBUx2UaOyIoBmNS
	 JznaN/MdYrN0dNBV6ETfCqSDYHzHKV+bTzO83huNdY6uwfwBrV2J+55ECmbeRSBjai
	 itryItkFKgbIibUPpb7PJZYT2pMB77pnUSdA+ze9xd6vPclvmpei6y4aoGrNuMhc8W
	 SidPK/zegyMKUZQ6qPRcX1KnZL45PRWBMlClsI6uZz8+Di+rEsOjyhsHKD6FRmJr9l
	 Xvr/vZYsIYodw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6C5C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174825419357.25008.12915041046318695798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f94bfa7ba71bc7e6e87bdef941d107a424a3484a901f8898ddaa81d4a7a8b0df
Date: Mon, 26 May 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748254193
