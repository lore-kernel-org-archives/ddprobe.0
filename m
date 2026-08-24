Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367C2376A03
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787599834; cv=none; b=Ln/CBk3UjEWvrCioK1MewgXoNihvSWzfmuyEiEF55yK9y5JRU5lrks63Az5WNfbpC8ceuKOc/VDLSmpgL25MMN6nl0+3tdjrYgM/FNrI2MOzX7IBeXtNzyAvvSccMeRZO+y1fgv9+OfY6biLu1qcdNrSA24gqrpT1hgv8nHqEI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787599834; c=relaxed/simple;
	bh=ZZacrix8YTGoB9YmcNKwWyUFVdC8MpG5jV5Nqi3atD4=;
	h=To:Subject:From:Message-Id:Date; b=k0dwwWv7ln7V+nb3ENZyfHZLAkYs1W9HElPPse9tYAgErLw6WfYe9XUr4avtOVYkcFGIWXmTkbyIVE1e4miQ0CbMeO+w4zEJTzoYWQr4od0u0ftnxkeIXfCRxIbjmlo39sV6TLPBAA6A9gPNPb4Hz5IhUhL7A+X0sLkXKeyla0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gBzxSmaX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gBzxSmaX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D42A7C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787599833;
	bh=ZZacrix8YTGoB9YmcNKwWyUFVdC8MpG5jV5Nqi3atD4=;
	h=To:Subject:From:Date:From;
	b=gBzxSmaXTpynogaagfRM6ffjAJUfigb3HEwWuJ7AEibXEHuUhKE4jaRES+aNVvTSc
	 Cbm+atM2ep7e8VNT0v90eAMv1FLmrilSsCoPrHRBa5uiyOYkQRWaEEI73ctD1KiUyS
	 Xt+YC3+pYbJ21Reh2c0sYDu0NEB1IB/LDpKTPjlgZ4vgacr1ZgYAWmTrU1CsZENvYN
	 wtItGKEqxjFXktkIk9k3AjFZtrZGm0jXBN0uot21vFMXTxnMwdNkXhh7GG3O2UN5pq
	 g7Oui6cLYjKZAcPpoMMWZozpIlBJ9NHcFNP+LlGNL7x5qt4olIgBMFwqubdgdY3UQx
	 +wK2l/KSTgjrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7F1C5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178759983370.6812.7961545528874783337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 860c88629e9d3cdc716dced1470d4598e86f14a12c71501b33c7aa1e90c5b95c
Date: Mon, 24 Aug 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787599833
