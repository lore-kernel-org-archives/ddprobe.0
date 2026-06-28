Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59393800
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 19:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782676114; cv=none; b=Wl9zvuggha6VRGrVBfodnDmuhp9KGeIiA/1jjdOfYKBF9fZv9l3ARu9KM3IkQdprEO6UK5cLzOc26K3SxJ/IiyGmvtCIqbBp0dtWR2mmEMfv0v+bRidc5EKAzO6dO18qqxPqeJlfZga+PosDn6OcXJDAt1swLR4GjPwtGS4t/rQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782676114; c=relaxed/simple;
	bh=gUQwo8Fr8cIPHgMT6loWazkWR3QNvyEgTNNEv2XOtUc=;
	h=To:Subject:From:Message-Id:Date; b=J9YyGgzBcxvHhTTsJ+i4uyJLDKmwvMB8kfhLobRXVUfEJnCreemo1eBT4iTz1Iv4eq+Pgg9jBO/vCh5E3G/Hev0dS8pAjsf4yalbwjGRTZzSNgANECjJ6vhuZnbI77ugAsYHgS/fRCUpzwVANeGjGKTMusa0QZt2ShWfw2Ea+C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Owoll8Oc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Owoll8Oc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4CADC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 19:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782676113;
	bh=gUQwo8Fr8cIPHgMT6loWazkWR3QNvyEgTNNEv2XOtUc=;
	h=To:Subject:From:Date:From;
	b=Owoll8Ocljoqg6LzZwXn28W5tyNRdHZG+ikS2Stdgnlpe8ccqflE2BQjefMp/+A0q
	 x/I9r1JgfVM5RobEjsjodZ0r8ivMGBB0nn8//IY0SuDQsWfoHE12AVeqks8HB9r73z
	 8N75AH5h3HRIBROiXXSzX4FnY23gaeiHXlENK3g9e+cDas6nKCcv8WsuxAv+xDXHtW
	 imPXOIKFce+PZrhM8mtcj8Ei/nulpWEzEbFV4lKyYkzud07JvrWJpl/W29famsnCrs
	 otRscLa6V9pnR8ceH/IAa03NWCT1IRzuJJudn100TBa2/BAv4xJrKUH2HSp7V70pMV
	 C0I9U5x20gILQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2344C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 19:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178267611370.6583.7507633514997445288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32efce220903a477a0c554df95be19e7994ae40c651f929f9cdd90011d162f78
Date: Sun, 28 Jun 2026 19:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782676113
