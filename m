Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB12347DD
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 05:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764135174; cv=none; b=rq2k59rr0EN6sLQfQF4GkxKu6WoocPy0h5vnt+eg8lOgUDP8yW20oqjtTFqSvFRlHLbilSDtk9EdR3Zm8lFg0DRagvWz3c3zoTnCId6/WvDLYtLnaFugJraHHzpla5DhpEQ63auqYnD9AE3x2X1RLy327gAQrWw9am/jjzfYkEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764135174; c=relaxed/simple;
	bh=sxAfUWqLrac7TZWJ+tZGKhhma3rNzK3eJ10QmCbhVEg=;
	h=To:Subject:From:Message-Id:Date; b=L3ShX/hbFtGMAqd35dA8m5fG17vbPGT9nzHn88eMO0O5POKNOhYLBSKEkUBScR+tAOZ5/lkKRcP6v20MBjVhRSNd6krXwPVM1Jcc3DOSMseE769Q+ATdlrmBkA9Bd+JswpTnNZf3UhuwVqgHFD9BtZ4qfO5oduAGSq3of/eyfHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OM46yJhF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OM46yJhF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C88C113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 05:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764135173;
	bh=sxAfUWqLrac7TZWJ+tZGKhhma3rNzK3eJ10QmCbhVEg=;
	h=To:Subject:From:Date:From;
	b=OM46yJhFRu5lEsqwkB7ayoz+wNGqlbmwdRpYudayWXACB5av8Kf4+GAO6LOL8BERC
	 gh2B5IwjhK5s1A3UlWr/U8SW1t1icSZn0rRKkF1Xn2dXesAU137a0cx9ObSvI3S+dO
	 O+FX9wCBmGZaU0XeDC/qMNrMQ57dROYS6QZ64ErZkn19t1F5Fx+F3xhbxh2RSAw5ER
	 DlVOJtAvySEFdS+XjupJH++JVCvDGQx6aaYqg4wJHPWxkiQC6tyxCTzr2665Ey3+gs
	 ah+W3USfASjF6PBaF8f2y8sfaabur3jD3iWQpaJB/GDZVG1e6Zor1ifl0vGnM79wEX
	 AfIss6nFTwasA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C70AD0EE29
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 05:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176413517360.7036.5427830108935965493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3954a47c6d7303f946e249949781fece0027ca4021e8e41091a9c1d1bdc940d
Date: Wed, 26 Nov 2025 05:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764135173
