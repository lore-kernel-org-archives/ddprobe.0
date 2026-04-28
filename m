Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2F582F12AF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 09:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777370253; cv=none; b=qmNUjDDZoEhAQfzDvKw5D4OYLS6IQcUSgKZgmotS7KRmznHeQq73KO/1pYzIrTxOTYoht/C1nIRD1Yy/8ZsswvWYXWadno4/RNasUQy1pz/WO8D7osv8b0wcSrZG6+7TR0yBJBpvQqKwAxDjqBNw93WoSw5M+IpCDnTZQ70AkKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777370253; c=relaxed/simple;
	bh=4LesEmbhUKtsHqMiX5Avo5L2vhCRU8mCDV2yC7KXhFk=;
	h=To:Subject:From:Message-Id:Date; b=mf5fkDkUBIBh0FWQO23IOwcnt4HMAclCS6PzsEdp84S4em6VCUxSMIQW1sEBprmE0wvVNytL5eymhr7E92UM6PZLT5LjfNd+peohpIKXRc7+Z4CyYFlP7WYpEyGuSZwIGpHppiiPV60+qWvSTcNbRyRKq/7Fuj7A9Atvzd3+i+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1ho1Bu5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1ho1Bu5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A41C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 09:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777370253;
	bh=4LesEmbhUKtsHqMiX5Avo5L2vhCRU8mCDV2yC7KXhFk=;
	h=To:Subject:From:Date:From;
	b=E1ho1Bu5CowKUOpKvgnFE7fr/33ETw03iQ/9s9c192tv3CblEHG/7CHJPZy7Ka5vq
	 FZtZmd0UHhtJaxGxDDjIPziqmtHFLI2ZVCU+ipQMtUFyy7qPZXm7spnjiQuDowxt2d
	 MbHCLj++chwp17NP796eLtTXybn+hz6E+SeiYswq0rQrWnb8tVPE88LpAssl9IV3yo
	 invlD2xpXeY3Ikc06eyLUHNoQAkJXbt6cY9tciAE7SWdzN1MfzcCazCi6xG0ZiqSgS
	 yqeJkAOeH1AITLR4ciqqJzyfMEFoarMg0gpDgSIQHBYcJ2EhjC7HuKBrEjyqmruSfz
	 LZ0xqjkoHlDnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A896DFF885D
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 09:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177737025368.1225.14326792516200945794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fed3abf6b5d1e326f79fb0b3cbcf538000e91866c056d8700522d2c40ab13cb
Date: Tue, 28 Apr 2026 09:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777370253
