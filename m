Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B114547040
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791324634; cv=none; b=b+IpiskSygDs8viaxxN50+NN9jxgP3fvnId8G8/ubUkrZdtbLg/jNUmMrdBU4tFFUBhmjAYCLEd6FdFiMUEQouvviwWEExRs7jKFQ42oBMFANZtmBcaN931MrS7M/MV66BdUbzxNyYt0NYu+HYe/hJjfTxGa+iWEleW5VJ3zu+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791324634; c=relaxed/simple;
	bh=fTXVVcU0xbUmoqba8D+xEOFsAIzfg2QFsvcCkvF39as=;
	h=To:Subject:From:Message-Id:Date; b=bNWXnnZniyFZZqBkFLi63HGXvBhRNjWoauBP0oD6Nn/CQs8MW2CeQXmN2rgfIFa/u5bw0mtiV3dKZFIebgdLOB6lRFz86YiIBlcdV2ZCEiJW5/iq4HCOUoWX2DdT6U/gU4pLodispsXTgRyzUNWHpqlplUGTW1/kQ2+SBK3f4t0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZRYe3PFk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZRYe3PFk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4883C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791324633;
	bh=fTXVVcU0xbUmoqba8D+xEOFsAIzfg2QFsvcCkvF39as=;
	h=To:Subject:From:Date:From;
	b=ZRYe3PFkOuwk6uWWUsXKnwsQ/JGEck6+espNYsvldw1MWCJH6yp5n6GJdFL9ghx8F
	 e0hRSkTpHJDCiUqFRvrV7S/bK6ED2u+4zBVzcAgmE6go0CZ3J50c9XyA27gp+iIHAN
	 YxURRZeP8niFlXmycvlaVEr8OTE6l4+j6kL25EJaR42l0ce6lAkTFgUM/3rCuS9jFc
	 X6ELRDFNp6E+vwlDGdGhi2HVuR/fUq3zFBKc3f6qLcaiWhPx66h4QQsRqMEhKb9EKI
	 aFWEtYhoEc1d03NhPCRk5/35lvYUUPplSeE1IhqXmoS+iQOpmwwSBfnTXTzcJMStrJ
	 zPVl5Dk9Z9MBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B027CCA5FFC
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179132463368.18153.2322046347927761325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 686291d9f4beb3594707c5b6f7b1844d3676204ce98ca5344697ef33f908abe4
Date: Tue, 06 Oct 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791324633
