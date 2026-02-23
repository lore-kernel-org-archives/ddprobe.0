Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5C2277029
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771860894; cv=none; b=kQLWkr4qSWrZU/8KOJHMNOnUAS8ysgJv7koO3O597KbF4YwC6LWsY9fsqzuOPEKDUHLYUteMzIjZTRqr6X+eBbUewq4ca/7qjxs8GbTmOPdnGxAEJct7Arj+bYsQ75kOV28DGvjSS9b7t98ABeSbSEWCZbJoA0g9LVbI5bH9Zbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771860894; c=relaxed/simple;
	bh=bENTprLA4D6kXD0BrAh5rqmHD/7uCmBmVaV4FWH/vs8=;
	h=To:Subject:From:Message-Id:Date; b=CGyIsUHpkEZPrDLrn5DnqGCz7Bwt81EAcYGofXdVDY/Ga2KG+n5MBVXb/FWKtpGIbj1FUqVxbodRHDFir2mh+qaCuQuHP5RxDoqoorG/AoCA3se0Ya1M+GerRnFNRhFBaMO88YAhhlkiS0uak4spnGqT/inr6bsp8XTrzNgW3LI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fcKHouA6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fcKHouA6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E0FC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771860893;
	bh=bENTprLA4D6kXD0BrAh5rqmHD/7uCmBmVaV4FWH/vs8=;
	h=To:Subject:From:Date:From;
	b=fcKHouA6AdAj9PeAsHLrUzr75k0k0DfE1/hcAVYIqgimxL/05l5G94Xnw7BEkJaGm
	 nXrSywCFjDV2Lz+i6ADTe+yUKPLQK2Vzh1H5mei04pLjVI+wcAB7jbQGDwNzgcQ6pT
	 DmnUpUqe6aKytlqgQSZ5j27wH/4IqIc71sZOX9Rjn2CJddJXDKDA+CEhQcdjFIrsvA
	 lY20pNf2wQ31r4EIEe4vglIwDXWWa0C8jNylfsh8jdbHnj3T3LjjKzK6qdxi2BUS3H
	 mugyRO3Luge3b0ISzU6cPSmmBLFHFXdSc+gX8ZVZWbu8GNuft/dobM8WqzSJ+CX0aa
	 gUlAnPcRzK+hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FEB8EA4FD5
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177186089364.11393.2900510853316064455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb9fc9c27fc487fadc1c6883a036a93404f7f24915fc5bad311f23d38457157b
Date: Mon, 23 Feb 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771860893
