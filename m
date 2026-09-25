Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240293B6354
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790346034; cv=none; b=jPGDawQRhgcd1CwAOLta7tQK0x7o/Y6X8YTC0dMTTXhXlf+sCgLrfcW3no0iiBcP9b6MAGy4W0pY8l64l9fai+shDhp3zqA1hDIBMbcuvJwzx0vx1j0EcV2n2RU16YF2wL6da2fgWsqDRydn3+xJzNjYTmEy6pPa/BtuQ+3vIgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790346034; c=relaxed/simple;
	bh=f2fZ1nH4LwFy4fYfGx3QD/f8f0TNHfwC6X9N1RJaHgw=;
	h=To:Subject:From:Message-Id:Date; b=sWQw+6EQW3YvImU6UvUs4lPz0t8kZKwMGk72cFCV99MGdmmM4CTkmHyyH38vS4aqCDDt0dpv80SaZOTDv0p7wKxsxCs5Ds6aL5/sILBKMghdbPgdiOgZ/XLINL5FSwvJnYnADxn+Xa5tUhJYNOBgFLfsYfvXdtEjhK2bPjvOAjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfW+yOGR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfW+yOGR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC0BC2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790346033;
	bh=f2fZ1nH4LwFy4fYfGx3QD/f8f0TNHfwC6X9N1RJaHgw=;
	h=To:Subject:From:Date:From;
	b=sfW+yOGRsJSNa5CttYnqqN6NuVkep84fJI5cZp75pztLjYTBVZCEIrXN7X0M8CeIK
	 tRj9AzcuXVmUQ0eN677KckDyuXZZtAHZWHs0CePzIf6QlHpSmJ+nDFlv9xr9ub3Kbl
	 ltw1QneCPsUIukB0ITSnjDtd+kPhyCM3XbSiiEX/vJUrHZW2ogMe6OwqvbtLKXwBb4
	 phMTT/SovsTlI7HhbjZfX916nLWS9uMxBhcEMQBy0yUWEAhOMDcGC7Wq6hnsLrZWK2
	 HYsbfyCzmfcjrzISwGCN1qutvHYRkYP4MeKdPC2I4YJO+PyMKlEtm00yf4ja2bPjsz
	 bzJ/rKHtC8HOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDAAC98321
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179034603369.16362.5837488093681278968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 353f813b7e8a7207ba8a9e56fdb3ad2e110fad7fa30940d3b1bd7204624032db
Date: Fri, 25 Sep 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790346033
