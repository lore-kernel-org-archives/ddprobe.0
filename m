Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2EE2144D7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 02:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775875054; cv=none; b=hZDsC1cxRaI1W2KMFqY0/hxln2DHiIZK2BDLG/jMKdBZuUTHmcp/BuHSxTcfjJC8WFWkEs/jn4g2axsCuDwOvIagDrUfhc70e5G3wRToDTX8Vifmme1T/FD0BL1TdnLhXiqE0+7cEGhFwVnwS/DlvAAFt9Hsr9+hblV+LTexM10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775875054; c=relaxed/simple;
	bh=FeTQwfY/wsspLMPIA/Q5HjFVxCWkhPrbwkATHMYowgY=;
	h=To:Subject:From:Message-Id:Date; b=dvxBlvjnMgcnabFel2C15UklY9Y5BZ7fTyFztsUpGLXeq3g6oaBYM0PLI4FMC8F8ArhuE/Nxtx0Vk6NAiNH28pl7IPKRqOX0S/KHI5UDLL/0lUwKB/DgbSWSGf1922Fvk9UOpoY4TySxFiXJSKbiIiEfwHKLi3CGWa/OtClhqFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qS1NBMys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qS1NBMys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD5A7C19421
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 02:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775875053;
	bh=FeTQwfY/wsspLMPIA/Q5HjFVxCWkhPrbwkATHMYowgY=;
	h=To:Subject:From:Date:From;
	b=qS1NBMysRt2iD7jPjPvZsAubXwjJwY87B9Wl9UzbO5b7ml55SRO13+GZlrDqbFMLK
	 VG9nje0e9T0S65e5tmqus81ZqrUUoyT6+C1G0hjQNZ4N6dk8WYBdXXKVrtQg+nQxI5
	 yqjO73V5LhcmGc3l/qug9vPuDhbsrp0vnIcfQLQskBO7/Hq8pX9zZhkre6uLt+v7aP
	 fOO/jwmdjWvB/i2owWrKUNfvqD9tb/c3MklpjDfJDT9xtWAyIejjS/LZw9v0tinaiD
	 l9t1nPqxDR4ZJ9PJ49fomPQGgiBReiVJrjfyT3O6djyGGvmAr95glQBRg0VrG33MZe
	 FrVSXjpi7aWIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFE9F45A18
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 02:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177587505368.3480.7853163273357232465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfda90152db206fcb05e64897d1bca78bf7ee98ff3190f391c2d7738cba6bc27
Date: Sat, 11 Apr 2026 02:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775875053
