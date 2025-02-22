Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307287494
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 07:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740208734; cv=none; b=tEjMwvmKs2U170TewvAmbj/wChyqtq8MaGPRkV0v9yx1Bx+AWlzes3lQfcr/2Vg07pdXMd7nOBxjP0JT7IwUoDDh596psU4+hCbe1xD4arBqdPH65rb0vNxvCF1BaCDMdc9FOhJ6zgkW4QjUC9oE2ZNCEe93cV1oh1X37mZJEkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740208734; c=relaxed/simple;
	bh=37g3O2eV02I1HaXH7aU1slov4nPXV/7L1wxjGp3ftQ8=;
	h=To:Subject:From:Message-Id:Date; b=EDXg2SweaesWUok3KpTDirEAAnh5Kospso91S7nYSTX9Jr8O4pmmsfQmEpZAPNlGOaqOvCo56sRxA3kmQIOxNbr/TnMtSGRks57XhlsB+1ZaHmhjVD2zC1Vv/5uNpiIK6sJCAe40WoPzH4P8iUpxs4QNK/JsqbnBYP/FxXXByAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=brmlF3Qu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="brmlF3Qu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E86C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 07:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740208733;
	bh=37g3O2eV02I1HaXH7aU1slov4nPXV/7L1wxjGp3ftQ8=;
	h=To:Subject:From:Date:From;
	b=brmlF3QuXahdWjxxZUZlMHShrjZnU95KKexqbebQNWrr9vrWenyqVhV6LEyeC9Obs
	 J6cplbpDLFxRIX3Lo7cXhHVAo7WLh/CnkDhURBEmdAaTHX72s/hWWd/i6ckK+Swotc
	 k2rxCIqNHPZyVWsYwNGvPXj3BQ7DyS6JkBFCkDrREETC5usLz630nnPjiKcjPqx+Ak
	 11EVdWiz6h0e+wCdChK7PqPMCxhDic+TkyS7yOMzoiQ2JMaPEqGZeBGSYmpWf2X0Na
	 kPlDYVW/oIwg1fedYyp9xlF9WN8oXWmeHADiJpm1gOaqfen7sCzn3cEJ2fHEkVH3pC
	 yVzZQxhgEel7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937F3C021B2
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 07:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174020873358.3505.13961738473080884109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa820daab0a265666b95c20af79530d692f4bb2d906515255bcefc659a59243c
Date: Sat, 22 Feb 2025 07:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740208733
