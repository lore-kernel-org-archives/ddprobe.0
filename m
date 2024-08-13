Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2753A78C6C
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723538154; cv=none; b=ZTVuoTZLZdPbKrB/KvFpf8lhn1VnlVtkKUUjcNmifkUVA3ZE8z38zh+koJwgQ7XhDPfwmu8wkN8Y/dxd1i8mAOUihBA1S8LcgOM4h5+4lPxc5+4VibDK/gMjF/G879wXJMPAMFPjVB4T6clHMJNabRvfp05vw1WCbRUY3f576MA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723538154; c=relaxed/simple;
	bh=EYRdMmZ8aHaWPG3yhBx1VrMhNW0VO9BC4GCjnfr0cpE=;
	h=To:Subject:From:Message-Id:Date; b=M+6NVBK0P0NVjGIPw0SuQ0cFqxxe7LOBc+yFnZBj3+MU5AMnZuFMcA/JKQm8INzVCfFAkveaAnMX7zJkCVw2cVlUFUJU05tctBzLTRPcnogyR34uni/I9UV07OKpgPGoSiBef2+qyvqYkTDFdNUdLRCGwUV3nFVVvAvLre6XIDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rZerQ/bx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rZerQ/bx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF6CC4AF10
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723538153;
	bh=EYRdMmZ8aHaWPG3yhBx1VrMhNW0VO9BC4GCjnfr0cpE=;
	h=To:Subject:From:Date:From;
	b=rZerQ/bx/NCoEIZJfouxWvt99xiXzVGD0RB+Sum4T/5YDctZma1xJ+rLzD4RFiQ47
	 w8T0vxUEPxNkqHu0Oi4JXpqPFZNPK12bn4n8VPj+T2KkIuup7GkPVkqtDWi8X+lNCU
	 rr2C9IsRg0qfp1qq/S+mEdgdsrQ3ON75FBxMiljoXiHhdCYDY+xh1f4XCED8nuRFm8
	 UcOK/UF3lB7ZXcVhy5D0ITdcIeIsEw8XOvlHo9Kee5Ui5xLqhHXbTVkHFJpFAnXMaa
	 ehA4OdxGx2gPE5E60NxhRmXgeq7jUdjnEwkYoY0FP3eRWYO9/2Qhg+Cy22ACjoImUu
	 qKVr7aIbk/xVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A02D3C52D7C
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172353815360.3810.14452626216128856535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c71448445619013af0713596dd711f1373560cf597a70faf9a20d1864125fa98
Date: Tue, 13 Aug 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723538153
