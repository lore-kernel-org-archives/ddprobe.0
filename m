Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2404C42AB7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 14:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765635174; cv=none; b=aINCUPdZFaZEibJBjaQ+ePa0wr6g8whGVg1MLCd6dvKorbgKMXhS65gvY4EyUOHwk0i9ZL9O3Pyh0P7Ob5O4EnnQgQWt5meeop0sqxHZpEadFhL872SnGiK/yN/6wdgMMGQ6rsCkgUBFhTEXv60p6TtTepqfGzyvE1S4omAX8Uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765635174; c=relaxed/simple;
	bh=BRvOUEigRnEAtU8ZIu4dSQkog+GthWhyEz9DtRAvP8Q=;
	h=To:Subject:From:Message-Id:Date; b=PoaETiAWZPMLtcAGTOawaMevc2iZ5OCAUACmDNDNUtxPjcA2BWi8WYjPitWhwA9H0VhJOZ4IGJIwjY/f+K1oUBWj1lO2Jxk2PmqGQ6gsQ7alZFmPB6g0sH3KDnijzwwnSyAS9Z6wSf3B546r8KThMO4lpRbygE1fDlkIv0uTQt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LLw5KPqY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LLw5KPqY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7380C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 14:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765635173;
	bh=BRvOUEigRnEAtU8ZIu4dSQkog+GthWhyEz9DtRAvP8Q=;
	h=To:Subject:From:Date:From;
	b=LLw5KPqYDNVzC+PdLWsKDYgBDc9n7EK1Bl3Axq3JdBYgevVgKkjjp2dXYmsZ89i64
	 4VWzvVfUoD3txwIfRgKxeTvha9aebVku/9RdTv5fJYn2E4Ce/o1sEsCQuMQqil55iF
	 57IsrRDyJdVw54+WGMSY+LZi8l4Llxr1aPGYY5Kja77isL+fi6V3Ms+R6za9JJK34q
	 GwNIFjScpyJb0/k0bPcOdJjoU8tkbZMHePkoJBnspqgrs0doVuPSOL9B9xY6ENOIkg
	 33RVZKKW75HTfu1Hh+lEutt4+TquzQIdh4YYfSzWeABqYNCZAOQXe2Gj8qkrhSSYBQ
	 ZsoKmeCucOYjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2B7DD59F76
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 14:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176563517361.30361.11962585451959431427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa5ed91cbcb6a9d8df1e953d8df50c7cb3982bc3c9bf609af4fd5906b3da5c65
Date: Sat, 13 Dec 2025 14:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765635173
