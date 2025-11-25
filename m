Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F042D8390
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 09:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764061974; cv=none; b=U6DkZgdzlMnAg0mA1cJYDIhLdxX7LAvbo/P3oJQfb3fiydaV13DbPgWopXs5VWb2YIWKwVry5gQMoeTlLchjdBRUaXzCBgu33TDdO6Kclpl5nftVBs5JjI7s+qfyBGY7FDIW9iZYJkiAd9l9KrLEQBwiIzv6L7MWx8udkrkmAq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764061974; c=relaxed/simple;
	bh=kgzsYaV/n0KUKwvJXaLCCol0MxNqIayuv6Bk8ZPnhNQ=;
	h=To:Subject:From:Message-Id:Date; b=adc+yuTlYewOOSE1Svtoo5vn6x2lGSLK+uDUqrYbvbJFgHQueaqKaB1nloMhKJjG+QFWAXlmxdoVDdvWJEb0eiiYr6fwPkpcoZRzc65ffCNlksOIorCYl0SFCJzyJeiX+4xnbIaJE1RlnoEkxjYJoB8Z1lyObIM6SOrP3V+pmRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Llx40mkI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Llx40mkI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A226CC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 09:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764061973;
	bh=kgzsYaV/n0KUKwvJXaLCCol0MxNqIayuv6Bk8ZPnhNQ=;
	h=To:Subject:From:Date:From;
	b=Llx40mkIYhNcGWDlET/aGY462s+J4VYNuynN6lZ8uUzyeHmd8PeWf5DVfKcKxFRvJ
	 5MIplsfTQ5Uug+GKZhESnca/zO+cns542iIXr8PgZspzKxjaR52Eb0uUvyDAK7mMva
	 eHOrU+SWqHzhT5i6BWQAWyWVWytqZmrPmyAkRaXqiUlj6koitPc4xxwRpBiTlnGyhl
	 TnU5yW5SWBSqZKEBgYKKBQPXnwi08XNuT/4kai7DzqFkOjOrFgvvEBt0nv7mt7kgMo
	 tPiDb/2SN4s9vYxVYNm1otTzHbF6vcPrBILuAT5E05yOnEttIbbVaaXTwCqWkZLp3m
	 irbLcJ0kAtCMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933DDCFD364
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 09:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176406197359.17690.7318321517438862013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5153afede08f6381f9ebfd4a1226130341afb89709e5117175c8fad231606162
Date: Tue, 25 Nov 2025 09:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764061973
