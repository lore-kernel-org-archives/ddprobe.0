Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA9C3F1AA8
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 18:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780511074; cv=none; b=H7Y019aL5iNAzP1O1FSK9jJBXJVSRzhi909o6fMGDOVspHmkF0LvwkRuIG1uep3oyqqmZl8TF2I9qiegBmR+R8TZULQYMP7e8hrtYwdItR827tNaJc7fXpeUoNTxqNKXTdqmFkas8QXEfDfKBQST/Szyn5qATGVv0Tr0Hz/waaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780511074; c=relaxed/simple;
	bh=6+gcDZ0Kr+YdWKK+KgDvA2D2xwuAdHVtOObfizyiS1Q=;
	h=To:Subject:From:Message-Id:Date; b=CBkhP8fQz54ao33gwPtU4GyRqrDB3pGucbcFm+C7BlPbhMBNWvvYSYtaf45AVSJ9/g+Q6tlBgi53jF6pM9X46ht+CDiRcIrQJ13IcA+Uf+xNtwTYpB1M6PI7baLikKT3E9DRJDAdAf//bgtlhC46qR2fJFHCHmKIPqHtr85NYus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eftejxn+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eftejxn+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD27C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 18:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780511073;
	bh=6+gcDZ0Kr+YdWKK+KgDvA2D2xwuAdHVtOObfizyiS1Q=;
	h=To:Subject:From:Date:From;
	b=Eftejxn+aBNGeTFSfYp0dc1aydJ/aiqU/OlFK8qdvP0MBUtgMe+UvIVtvQ+9c7RpW
	 YEb80RJC+hH1zUsnfsJ7r6qNUJuDSxcXdXx7gRy9HsQ68id6+n1KKqmJLzxKUgE0uq
	 xwK5gpQPOIPrfGYNBa8AcAG3abRoFoYF3J13kXmPy8g15Dj3V5XzmlGezQsuudnd3u
	 kt7SbLitH4VtvU8UY8EPifHrvN7Vf9IJnNh+MMh2st+lB8mBFw9+j9m7FlhdRhUBvD
	 W+5Lo5UI0rTW/pw0EhpX7MenCjtHgnyA6O4ZWtfJtKJNbMy3xWznETpA+5FOKNS9/n
	 QCFG/OXUzDoMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA5CCD6E57
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 18:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178051107370.19480.4767809714012163000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cce4c77e08ea6862c512a1ba73ae3738e87bdba6b9c349540e5b6548e169db94
Date: Wed, 03 Jun 2026 18:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780511073
