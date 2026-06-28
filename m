Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5B740D569
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 04:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782621514; cv=none; b=kZS7hTHpeo+OqgPkLj0ntEnRNXj71zFkmb0+J0HaPE15sIV7Jl2PPK3oar59I8SAxkBPbFn6jHJ79xMak1ej/Nk0plYgjSIPM/93TB9m+0NPd2ZygpzjMhgknFzPDDaVUMPpVfBPlT4IEvTz/2s+N5qjm+Jm6RaOxBxlNfOw8oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782621514; c=relaxed/simple;
	bh=IPd+9XiP+BljUvI2Sd4qQod8io1AHbipQ+7phZ4XvTY=;
	h=To:Subject:From:Message-Id:Date; b=IBSGVDE/nCTAdu960/TrN7ZK03aRcad02mshhj+fmkIMhBeu47+nQAAhOhcjqg62laD2hHq86CSV7fd1BAG/9D1j6wsMxSPsMuzfHk+WYAI5l3wFTAhIkMAPb310uSm/1Cdv7bZ/5+0YX4tgrLHt0+v0JdtNdb0y368fFTNEssU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=daEfG7t+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="daEfG7t+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB4F2C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 04:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782621513;
	bh=IPd+9XiP+BljUvI2Sd4qQod8io1AHbipQ+7phZ4XvTY=;
	h=To:Subject:From:Date:From;
	b=daEfG7t+r2zsDDhP54OGoJb4RoUgUPOHyu1UAWWM42QusbaYL3AY9Ic3uMJHMaJot
	 iURddP6gChwAyBmlHOBp9ySgsv6e6aGrBxQfN6jJqhPJnYSkznkDq/i4YNcSyww6JU
	 M/TuMxILM6hyPyuHOXGlqMoOoSMfRF9xKgJ+dixjsNbIyIjcO6/mz7B8znfFKZ1LUx
	 dt+biR6SIlArbQ6oEbHEhTNqNg+f9FNWcCf5R7U3CzbVJuzsqfSXBP8rMz/gkP2a3e
	 uxWLLHmj6tt+07XgGbfjVp7HmVKq1JoDjSg+I5qb+NN/j0gQzEM6gUN9jp0XS+NY8o
	 iKEsdsgKGIDdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB5FC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 04:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178262151369.3543.18052557539633131384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db3b0145f6bd6b638053fc9e1f68b431970ece0308b23ff87cf0eb410b44769a
Date: Sun, 28 Jun 2026 04:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782621513
