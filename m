Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED1E1DFF0
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738328154; cv=none; b=q6L/4/bsRi8Me3W5XstW7RN3uJzoChJXGSbnA1/S0H7YEQC33g490SeZjWlMl1cMxlSz+HXMARoKoUI1g3ZYbrtmp9tSrfpqE7Y8BAVzr55D5Rl740WJmnKwnRqgurk+ECSr7wIl/ao4lVYIkm2cgOHIb7rQ3RLLteQIvaLpDXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738328154; c=relaxed/simple;
	bh=jxw3LLnpvKT1+d/pizXCETKdFhz9D5ulf05kC4Oev7U=;
	h=To:Subject:From:Message-Id:Date; b=gN41gSwiFMrSCOT/wDfuDuedWTqimWwEU7fttX6SXdMy5W5zefkcPHs8o7tZfHOPlSzWw+XhCo3LHUwphh6KLho2/dvqgABnGf3TN60d/QoS0bqZEx6q7z5Y5lkBp5mTLiucUsetTsDabGgq0KWBmkh27fN/FL2ZOa1l3oy3G6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uXFlcZ0w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uXFlcZ0w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B09BEC4CEDF
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738328153;
	bh=jxw3LLnpvKT1+d/pizXCETKdFhz9D5ulf05kC4Oev7U=;
	h=To:Subject:From:Date:From;
	b=uXFlcZ0wRagvPkNn0MoMENGqWUKecL/6MuJk5tnC9Bs72/DGg/LUbNxnoYSkw8fOs
	 FhWSZmpoqp/yxOlfHVsPCKQuKzW8PhNBiCeS71bOqDrMeBV1vQ/HBAc2D17LhN/JoH
	 q3BS3SPBvEUMU2Kgx74A3cSiolfU2jq003TKXkTG4drKG1vtf5hhhGA2KLRBe8fLXX
	 dA3j/wxF759QTgd9+aXum0Bapj2xqVEjGyyt2fR/Fc8cQK4EQxx4IV6RjHYAkpu9Oh
	 Jv2YGFy1s+8t0aqkKNn9HodArIcgrIZMuyxlh2s1XXyHcFsVBtHR/nLmXxZsXRtzN2
	 VhB/SWl8RL5Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC55C0218F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173832815363.31300.6563869521263184997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36f017569c6047e932d087b41dec59a944da8b2f4f08fb74f8d22aa737aca009
Date: Fri, 31 Jan 2025 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738328153
