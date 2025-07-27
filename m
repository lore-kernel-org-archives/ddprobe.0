Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA8D747F
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753600794; cv=none; b=SYH5QEK95ss4H1akCk+U5U8FgHtblGMKf8GyfSY5Tvlumr5IDLvSSejRafycUAIb0b09FqE+qTxL3rVAvpn1esh5SSG/mEDz9BjYH3bMaEnIiyRJNL7QzCG8RL5/FAv/MzKPEmQnTUnamPVRJjUAUUHacegZR4yjthlBjpXNM1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753600794; c=relaxed/simple;
	bh=KJYI42Bxyw3rW/wTKxMkmAMYEP/mcV40oPRoXzrksno=;
	h=To:Subject:From:Message-Id:Date; b=JkdJ4szkT8bdhwQfAs4GkdGvKoy71UmzF4MEd/nWU98H2YA2F1QByU3yUABq6cGKedtS8xgZ2Nl7QCY/jWwY97lAla5z3blPhkKU2FgKD47jIvWAELa19JAJNUz+uumHrg6s1y+9A79abOI+WVbRJQApShMTkznqoPSYl3Eqayc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dD3oC0tp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dD3oC0tp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA48C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753600793;
	bh=KJYI42Bxyw3rW/wTKxMkmAMYEP/mcV40oPRoXzrksno=;
	h=To:Subject:From:Date:From;
	b=dD3oC0tpRYoyTyXskmP8g7/h2DWSfSPnc9xQX5Y+gbWhMt0mGkdOm9lywanfCRMNt
	 I0Ywpm/orWuJTlEv0fgJ8MgQDeeKSW+qVPz1vWsBHy+u+jTRGjWXOYQf3Og8gAoClr
	 oNzt16ydIXylWbdNIJztyggCfUj2KTFj9ZiIg4vR5SC/EvsWGmxHmSRYl8rgClcebE
	 7aWsTsJlVvJZD1UZf175g/MP7kzLmnH6wh2/rVPfKN8nSLV76mM11HefpyaV/7qaqp
	 UZHjpLBnFihSLq6pJc4e3AZx6LghaEMqCcb9jSXlXpVNO8U12LHiOMylPAKqSsHc+m
	 tYdNCIXE/jYig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E71EC87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175360079357.31054.2688823045605746720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ec1cf04e1849fed84cb6c90b640df7853ef56cbae2b47548cc8be6415c00ed4
Date: Sun, 27 Jul 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753600793
