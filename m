Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA9521770B
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 01:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764639174; cv=none; b=e11fw8RoO4HqwgEyS5hpLhXFu1/RhsJMmeD/AxHAaAFKOOHBMvA2SV/n45FvOJs/aVrHVFerVGvib1z8TeDlRF81lFDFGAs6HCB7dyr8xNC8HkPgDnOp+uJiREPFQpa7RbUKxhYrAoUhHIwK7V40dLdcgRy5v3ezwHNDsY+TGNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764639174; c=relaxed/simple;
	bh=7JJneWHexsvPhj7hBWebGwbY2QF9H1vcm0tjLKk2atI=;
	h=To:Subject:From:Message-Id:Date; b=aT3f4m3G0Xuz+jSoOtLwrNYZmqA9evgikux8onO6DoXJC6B8pzYfHtL6Ln3VyQksdmeoZNkTQWixDeXgdgQccGof6QnKKXfyeJI50PUWL0qTNJEaUDZ/ao07Ocaxqg5bANcB7/4/vjg7FNJxR5ZNS2YJnKD62l2dYZilVYEY8hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uAmnbIlA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uAmnbIlA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5433C16AAE
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 01:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764639173;
	bh=7JJneWHexsvPhj7hBWebGwbY2QF9H1vcm0tjLKk2atI=;
	h=To:Subject:From:Date:From;
	b=uAmnbIlAKmUvTrjKshImMnC5nqksokIhTnAahbOJTfGeM/wO2aLP/s17FYTH5zOxg
	 hhqcwQwVZqIXHbMpVF4Q5pT1sJOEH3381k/dQbzbPcJaeIg240wVS+4flRkSfwyFAA
	 D9xwekWwfo/4J8tA3ssCgvoP2fgftwzLyc0+lkm69H9R56vrpsp0ruOqozMDC9qAKb
	 +pAwxWD4tF9NU4IPMuK896p/gb1qE4ZldrpPhszlBERJnTQwG/lGJN98geqKrweToB
	 VmBT2Qg74kj+l/jLGdPfM+vtv9o/PhRirRZ8vuFIgyk2x2UvgEB94TFRJLlt8wbI+E
	 EjTsD9KvcNPSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A00BAD116FF
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 01:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176463917362.27998.13880052417982653833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6da591c3c091ba31354eee9069944b2a8f17e61da142b05d0a754ab64debdf6f
Date: Tue, 02 Dec 2025 01:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764639173
