Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6EC23A9BD
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755835194; cv=none; b=r6IxRJY1vmTKwJvwMeHJMOypgTZK1USCZYsAxe9jqpbJm71kYyRwwjBslpfHDfcRAdHsyX0Y4DczutIxwjg68M4BjAX6fmtK4GqfgYVj/yk3S06FN7CHgSGGPeBF/kIiMo3GBwvxL/dEZ5bcieQj3danPhM15QG6a2V+/tws8bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755835194; c=relaxed/simple;
	bh=2jhHCrMz9worcL4Fdp3aB5+he/jTdkzgj/T2kwp7yxw=;
	h=To:Subject:From:Message-Id:Date; b=YfqdPzlSK4el+3In5ONuqKKNpEKbLI3+FkwYUL4In4AhG1/aJOYkkNk+84dVznYBwMBuvbFba5tife9I4SCZgDEAhKEbJSN0w7I+EaLeQ1wRTjO0ZUpNXpRbFiMKUZnqh24uiV1rhbiT0RNFxE9Fkk2kF49eXikimpBq/wMLhyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LYHEQ3HU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LYHEQ3HU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AD2C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755835193;
	bh=2jhHCrMz9worcL4Fdp3aB5+he/jTdkzgj/T2kwp7yxw=;
	h=To:Subject:From:Date:From;
	b=LYHEQ3HUtPh7X6ZxhVBA62cqYluAtA965vvcxFnFJ3fNzIRuYWV6ZJ38g6jwC/3Sp
	 STfr8PdBsaJPNtaq7vYueNaR26M2/P0o/O8DesyOjokxBsAnR34NnfPj6RMIVgNsrG
	 dgwh1SNgS/9xRsjM6HgDn9Qrq9IxwnyvVdbTDYGXA4OIZb/+Q92T85NEoB2XZYQil7
	 BONrJmkC/SMc5JS5oGWbZ2j7/FISwm2rDXPEgxd2ZIDvJJ7YNn2qR4qk/lAse6NRbv
	 6tSqmLl8pg7TtN06GAUkEu3Fswx+tDJeQgSbUzAbZgByskN5YF+4d4YmIxjyPdb1Bq
	 4zHqqumEOmz1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91640CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175583519357.18796.15439272165616547091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81b056842380e150d0a0b9f270e4c235a0c8df5457631a10eb0c0553718faa8a
Date: Fri, 22 Aug 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755835193
