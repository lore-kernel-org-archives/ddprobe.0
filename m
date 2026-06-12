Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B57932C94A
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 06:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781245594; cv=none; b=CMRo47no7LKoYREx8SMjMwc6TpoAkt4PHeApTWkwmewjub/yoy1DsX25ch9G2lk6CXndx6AgaenqIAHbZHzkCvwdnPd8+d4ogSDADUZU2vszVrYTVN3uqErGUEsVKYpOMpzS5/rZB7u95VHdsF+dOnTobIbrr1zaRTRCK6X1l2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781245594; c=relaxed/simple;
	bh=5zdzth+Hq9QguwGDt7wR79QcwVY45NQgfuQURyEmEvM=;
	h=To:Subject:From:Message-Id:Date; b=Ijs/mtZEn2QIxTobFVH4bF0GjOo1JRuPiQupzYHP4Tc4rjBruQQuv7ey1BVeHPXihPRUFVicEiuNDkyo9w7d5kb76CqxSssu6VhnNDyR6zvn1wMA4/LgUF8KfDfjtVRgMqU2KgZEVJp40o4g9UwFbXEO9sqNstRy3s9xSHrB98c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S8wFywOk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S8wFywOk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD1AC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 06:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781245593;
	bh=5zdzth+Hq9QguwGDt7wR79QcwVY45NQgfuQURyEmEvM=;
	h=To:Subject:From:Date:From;
	b=S8wFywOk/1BEfniKIY+R9gp27upvZWz69dkape4DVKyi1MIolcPP2MRNW6ykQaJC0
	 igcmMKtLywneZmVZP3gnrQQdusq7HBIHJX7nEzw2zWSZEY6TgvLwuF+WU8ZlX6CzF+
	 HFXd8aSrt5zqQrmv+XMPaFPIbNuMr+qdTo739rP1tdyAeHCDpTHinVrsIsGd6W3A/g
	 MZkTS5bCjqtANPiJ/hsjEkXezD2eR9tWglLYwgwIZTDhA3HUhboYW+IDa8EjJ7DdJ2
	 9NZkYu+BXjhLpkiYhG+1yQNQSXi3pNHCLqvWE6aEAo/7EeTfPI1bIA5sLiOQlHBYOM
	 3l1b1xTloy4Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06BDCD8CA8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 06:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178124559371.5744.16930402786605162918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 769a75a84241f0cbe9502185b14e33924fa5a49c718086d37804f08e9217231d
Date: Fri, 12 Jun 2026 06:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781245593
