Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BA286329
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747614594; cv=none; b=C2eeGJoueJFVZSFYCCjBcnlunoR8K/gGNs7gQzpdEszkO+wr3kJ3vNG/TUd3JzyqBEATCkY/WWlrilw84yiPQ/b7Ng+Q9Bre5QtzZV54I/8s+1X6yFVxLr7jW6GZSn0CwP0GSHTczBL9MkjDdbp+vUmbhdgOuazHVpok2Hrnk+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747614594; c=relaxed/simple;
	bh=jRY4hGcvuASYGtbToZ+xf8ht5akpCOAvPUoO3XBowdc=;
	h=To:Subject:From:Message-Id:Date; b=sGvRilwtmgFSFOgdf3y9j68akeywGH3xjw16Wd80+1hw/X1CCarE1QZPz7ayUm9VKcopg56Pc2KB9ceOEiL/zNGDUcrpaLvJxU1nbvYJwpb+LivYn1uMUDd+NLZpGGygqw+IJMGbL7kui+d6fqMU30taGA5Hprbl9s2h+9yvnZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hdD4+n4h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hdD4+n4h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64DDC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747614593;
	bh=jRY4hGcvuASYGtbToZ+xf8ht5akpCOAvPUoO3XBowdc=;
	h=To:Subject:From:Date:From;
	b=hdD4+n4ho9iHJ00aQ+4iwmIzTybqrwsMbX6sezWGYQu+e86mokEGGnBAnpzekvI7G
	 D2gl6Al/pnMlEnThS0Oo3y144eqxZOnvkKudwWGzYsqU//sn3kW3EqVGYLFyHNaSsk
	 +rD+COUmlykBTdqMRkbqYP2sx/gNfqbHvGV39KPsbxxUNuLeqaFxXsekfiI9c2GKvO
	 kNr56Fb+PsGsefvChIJ3d/3aHRBQrUMISsg26T1kP7ccFNW+CJ/hAJg9sbLhmOw03C
	 zZ1V4CoC2cK00rh4I6G0tadLSPu99vg2y/ALvREdXMtMrYek8SCyVICOl5xb1jTGna
	 1oJunL19IivhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912F6C3ABC9
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174761459357.15665.8217331008164288062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d19293c16e03940096fe46271856fe33644427cdfac377cb829671454fae8116
Date: Mon, 19 May 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747614593
