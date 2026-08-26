Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212BA241686
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787707234; cv=none; b=B5kd8iQBglFZ63aR3FV8EgJDkkdX8OLcNZ/9NUJt0MaRG/43Eb7R4yuttOLemkx2vs/irClGRKPC2YdtbgC3Bw3rZlmrVYeyjGFejTmkY+mwLZgaXIB1jFJTeLdMy6Vb+RErnx7Br+/YUWhjZ/1k1WG3tIIEc6r0Jh6ElnLZs6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787707234; c=relaxed/simple;
	bh=bwwVwvH7vpUBUkPOmUTbWKf3M2cwso5laV861KXy+l4=;
	h=To:Subject:From:Message-Id:Date; b=u5RIYoe1BnGyd9gCbvfl1peD6SfT4Du1vsiOfpLtIT9Ssz1n7FU2jYcBeNd2P8SbnLh2FVik2NCmP9rYfffGyD0E+Rib5sQWc97+yL1c2l7wIGrP0hhYUGZoiMbGVMddDaJfT3p2mxwY2GQpNnXpjqOI0t+pPP64/EU98skbz0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hb+2WEWV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hb+2WEWV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D8FC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787707233;
	bh=bwwVwvH7vpUBUkPOmUTbWKf3M2cwso5laV861KXy+l4=;
	h=To:Subject:From:Date:From;
	b=hb+2WEWVpxzBrgOVGbCg4oSkbacfuDLtcsqhGW0znnhwzsF1N4uMMBqXdj2BSwqv0
	 lanNG98OtyhL5SXOhD+ZFCt9rj7bi830gqd4MifkXrFU87JprUpz7q4jHYvko1zKxb
	 9LSLtI//bCl5PiXL2oNGFzpEgYlHLrClEdlc4ZX7Vtt/MtFoqSPrMGPHZid3c2A2eU
	 rFqSwg1xcAyvNaTg+9tzJsPFwL12nG/olqsbG/gTzT7Z4qU12qSo2F8Ysz5/tE0aAe
	 0/ct7YksdDshbRqxgxjhIhBSGtOK8sMeVqbFA7PZq4LfjUSyNVloO4PLBt7Zjev8zs
	 DktP1JBl2JP7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E57C61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178770723369.7760.9437516028090650317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4503a2015343b3931abf8cfec9020829b8b8b460f687ce7a9378aa2c53efa22
Date: Wed, 26 Aug 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787707233
