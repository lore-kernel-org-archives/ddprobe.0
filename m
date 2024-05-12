Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE6F1DFD0
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 20:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715547143; cv=none; b=VQf0/hQObBsGyOjVxWNxbc3pDoGdqnjKhfv2ZSOKnaFGsGKWAaHkWw8EzCrUmUlnWn8AzhWLfowl0uCHgcrzv5U5402KJ0UBXrpixO4WyKTJ6QwPvYdX5Js0xFJpdLkFwU/oIp6FH7Dj2eKC/Fr2fDxgkIey2wsxzXX6spkFTD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715547143; c=relaxed/simple;
	bh=5fZA53m8yifcuPpu88wGnMWrH3aZDyAKusoLIJ5dPfY=;
	h=To:Subject:From:Message-Id:Date; b=D008mwYRPqyv2NciHb1gEritwxvg1krhsyTMtRE5tQlHkPzGri4YNDD/tdbv1t9AylLLdPIC3RFGn3DWK3PPpj6nUf10mMWveKL4ZuA5jwEWmq0VqUKoNoLrccURmh8QbLMHl33rQX9loy2zVYu8TODL4uVrFiNndcgwmEr+e1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GqTTPPRn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GqTTPPRn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4511C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 20:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715547142;
	bh=5fZA53m8yifcuPpu88wGnMWrH3aZDyAKusoLIJ5dPfY=;
	h=To:Subject:From:Date:From;
	b=GqTTPPRnR6qpu1IX+T1PG4Et/F4IQiWuTRFOr6bKHo091sndsPnt7OZ/DAFDK6vYI
	 DPVMu7/UKtl11wfl+DgV1pMPgcaLuRnTiEB553BimjzZ//J+XTJ4LHSo3DsYK3Pia9
	 Ll17JL7rGiiJB75bfGWQenr6Q+9w0PsxGj+JX6GV25e8R/hYzKwc3pKek8mSexBUxw
	 0NMe+4bSN9wZfJuMobrbiKjiao7w5AjLeNaj+tgNEN22z4aUtZAJjZOLoutbTpVU+b
	 k7AAcou6PiWTBi6BKRWCuASFppS68mtEg8I8YMXorlKbRC/zY3Tzuyi3u1z/nDOXgg
	 8rBrL+Wc56qAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1553C25B4F
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 20:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171554714276.31848.11551533068488463022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c14ff0fb39514f42d9a4217dd990bf1104a0548ba848ea1e0f1b9bcc2d786a5
Date: Sun, 12 May 2024 20:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715547142
