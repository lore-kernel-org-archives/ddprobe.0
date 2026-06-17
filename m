Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540AA37B00F
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 21:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781732194; cv=none; b=Wh0iM/v3XLdxHVI3zi3E5+QkfZ7p04hnGlnVnGYu9RTz0RDvRReqr8EF8KCrb2ctfv7RygFCnfjoLdqPOq8aT72DBWtNi7iBR+sh1Qc3HBEPOvFDzDBK0cWd8YxZch4Ma4fTrqwDB1gLcacWCCbgmo2z2ksiGM391E9qfb3m8X0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781732194; c=relaxed/simple;
	bh=+V8RO/9Q9njmILhKOVjBQ1JOnb7Mgy4NHQzFvU07D2k=;
	h=To:Subject:From:Message-Id:Date; b=lAp8k+pVjwpiAoDSSRLO3V2P3zaZu9wPK1fJ9bb1wPkKpIO9kOzmLMV++NKRWMt6zsvjl/I5cNvTNTcbbhrOhz41PO4S71htGd33coyIcHMkZ7KQgYySl+JyDLExTGTHguNKTZthvDXk07wMLT6xL4WL3/LCOO6ZIfaF76BC8vE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJ2abwgh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJ2abwgh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F35FDC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 21:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781732194;
	bh=+V8RO/9Q9njmILhKOVjBQ1JOnb7Mgy4NHQzFvU07D2k=;
	h=To:Subject:From:Date:From;
	b=oJ2abwghwKRr9tdDB4x0sB4cLJI/og2s68GwycXvS2bPBeWMNLozdmvNkS2DvB0+6
	 qtjzWPBK3Doc8iHjJJy0NjMwLw/y8WoueMeqf32FfdSGsPWJX+2+eIf160bzFsOLHI
	 rR54WUvE66zDrNC33CyTgPcj2nP8hgDTABHe4p88ncueaU5tgncWbLiZBxBTtT5wrn
	 bWnum45DZGxaBNXAmmeiPNbjeAiy5QiATsFp7TOyaiskBOi2IzUAxg6upwwGnwPZ1d
	 HxAHb2WaZ4n7UtwDBdQrve5xL0DHGTFDK4/ztkNhkbC/3G5ij6eU18//gb9c5TBnYr
	 MOJ0sNBaC3KsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5F2DCD98E4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 21:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178173219372.31625.13167686762012539492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed7e9169b056ed495aaffc7f10547a36fe687b8a67e404484ef3b5e402fba0a9
Date: Wed, 17 Jun 2026 21:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781732193
