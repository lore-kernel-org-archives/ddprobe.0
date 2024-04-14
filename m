Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFA918AF4
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 10:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713089363; cv=none; b=ZZkS/9Ic4TyqtinRnt5hopICYGl7tIJyfSIOKnGaUGY2N1iNNxUlsaY8nDezqABU5OUtgBZSP9zfZtCMX5kB3BMkIGKVsFfjlwtpMP4CoB/NmUzUc0NcfsqP5pGcRJwOPcoCjY3jLvYfYlzNhE9Q9mVfc5NlQr7UFAGhCPoaklw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713089363; c=relaxed/simple;
	bh=si0StHRbte0h3MuloKjbSTenxc2V4h9Fig5aoM9PQcs=;
	h=To:Subject:From:Message-Id:Date; b=KQ/LA/2VSszmE6hprTvdtRoGpUO38wVWtwlmIy3RfDn7NkX+RlwWn0atWDARsDhttXEnY6+eVUVM0i1GHPzNQZaGJx8vJdrof2Wr+9IdLjOI0sd/Q7X6Vlpsle7bnyOgVu8kqmSRkoLDh6Sjpbkm3oRAyIFz4T40VI6FcafoP+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JAJWRzlu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JAJWRzlu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBE2C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 10:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713089362;
	bh=si0StHRbte0h3MuloKjbSTenxc2V4h9Fig5aoM9PQcs=;
	h=To:Subject:From:Date:From;
	b=JAJWRzlu7P/WaRNr0tG9zCbtjxYgSyVUcKUs1aSCs9YDFXKqBgqlKrTEMG6DCMUwg
	 kSmkVttk9n5C2fo5ulVyvgUiFxjHEtgHW7vB6wnkQkdGm+S2oyMugbgJSuY4Dq7Eyo
	 LzgRyN7n2XndsOgcSu11K1QBG2aOQrbbpMp6B9GlJIhaTH9NpAhZBWnzq0wQAWJCGZ
	 tJs4vHQnUVTw7bUWu4B1VwxwPLd37MEP5+Hkd4VvyiRGqxOQuCh5rMObnIzsFNVqSc
	 vN9DECKsmNKoHbsVbKUI49eHCvwdUefCYfFAdDLspCSOEmAgRfJy1wh5WvKG/ko2zF
	 r2aKoCYRAV9+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBEE2C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 10:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171308936276.18471.2068610544066547008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4ec39693623819f25c2101d91ef4c16d644ca2817a277115e56464c0626d018
Date: Sun, 14 Apr 2024 10:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713089362
