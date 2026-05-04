Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ECD040DFA8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 00:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777855054; cv=none; b=uEufPjO77TJIJ7miR1foVXIHiukbFYG3OCn/mkAX+TnTZO9UNJdZaseWWcuSAe726aslW8rCIC2a7gVQgk4w2StsJ3C74a9IM6EUpJ6f0P0FqJXpkPJV01+eCmYib9sqm7+cDOm7/3zFld8g6HajapQpwNJwZIxcYWYBrA9Kwzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777855054; c=relaxed/simple;
	bh=tK/OSBX10Mzrz2XMmXgEtae5hn0YGlmQJ8+1cT519zA=;
	h=To:Subject:From:Message-Id:Date; b=JJcuK6XzkxLJN4t/n+d/mIVmSxfbzSGVr26+WZgfajsaaSZLXNJ/0/RTN4+Jb47Kw47sSO7hBmLy7GGI9YUfgO+8tOdPlJKXyKOmcWIFDiDKgEVw7UiUd+twRD5vdT971adv1HTpPO2hVOGYybDkcy6o5KLRCjgdT4ta5iVuUBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jmM69oiZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jmM69oiZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB1EDC2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 00:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777855053;
	bh=tK/OSBX10Mzrz2XMmXgEtae5hn0YGlmQJ8+1cT519zA=;
	h=To:Subject:From:Date:From;
	b=jmM69oiZu8uQGU9RD+Oa7T1H48vNhyz/WqXgLQTPA2fjJ/ifyfQnfw8TfdUuMFwgZ
	 q/lgfMWRNxXT7U+GXwWFHkcD4oN0U4uNBBUPivrr/Z6RsjRZ173W1aOSD7kbSt7yIY
	 5lE/QGVWFnuXUpi6uM58w4S4ODmEfjoF7D6dw7h764batOcxGs7gt51G8GrKadBc8C
	 LXyCNDsPCKZ34TaeWbzT5cMMkLG2AZsdAofuOLiduDUjvQ7Bb8xA4zxT2Zyd3Vk2vB
	 cQQi8/uQvNhB9WJiDN657a0IPtY5OGRxzLt6uSkIR0QsNWIY5R09GRCSsA+ksYnh7R
	 MH46G8j+6NiLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9455CD3424
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 00:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177785505368.9793.2254622696620784756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d98c1011b8282b516f99e390ec142ca6df182aebd4c665c6d99d7e9b93c048d
Date: Mon, 04 May 2026 00:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777855053
