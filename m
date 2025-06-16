Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321D621C9F1
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750086594; cv=none; b=hPNE6rmbA+uHksc6hWQoi+IArb9NpHIGG5vY8OG6bNYKHVRo5PAys2WcTRe+MwPSK0ISv4ZH5OG/NG3gGtw+evdmhmlBADcbBIiWePs3ojISEK3wkwStRChqrd0t0RfgJSt8f63pGXVIs0redsYQ/MbOCGvrMGdEiUtEg296iGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750086594; c=relaxed/simple;
	bh=BkDhSYyDH4zRFbYdpu1jir5XYECP/JZop1+tu49FZmg=;
	h=To:Subject:From:Message-Id:Date; b=QjveHnkjBjCzfXnCWLPoWT/xZwdVLQOXisr2GgdWMZjZIwbdQyc1nW9UbwicQ2uH02qCNcle/qbxQVc2u0V3CTO2ZGx622a1fUVL73/9AVywikkX54doG01jotRUdRxD9r0Un8xurmdWWwjaAv6KK9W0+I+PhwMhzuI1g5hGsNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l4iN/i4A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l4iN/i4A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD4CAC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750086593;
	bh=BkDhSYyDH4zRFbYdpu1jir5XYECP/JZop1+tu49FZmg=;
	h=To:Subject:From:Date:From;
	b=l4iN/i4ASetaqmKVJhtr1gf3EglHT6ZhqTIGGa29S30NcNLcCW9JvOuFqhdPMT76j
	 AX7rwtJvN3D/eqwdmziad6wA/HYmnMK8vPjCf6EKdJBxk7wB2fQLAg75kj+rFJoLan
	 1YVnQV6AUZ4dfe/IBuFFl6YaTxileYpFh838iiUByi39s8Umtm7x3YdcZbJ4gWe2i+
	 8W8zWgk9TyNmrEVq24U9LF3cuDNq5taMjOa8Qogq6SjcJP+v/nSZUcAgsPVR0abMwY
	 DW3eYiW2VhVqoWqbeSFN1qbxTQo0KlyVHsB9ljOXGcMwqEEaVfeVPu/ybWOZAO9r56
	 Th2wnbmSSAAog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C94C71155
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175008659361.4821.9191358680294598288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3bff2ecd9f8e04390ede4b1ac3ee6ef78cc036e360975583d454915a7b81f76
Date: Mon, 16 Jun 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750086593
