Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A1D33A9DE
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 19:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775590534; cv=none; b=i8YM/NmHD88O+S0xlg+WCZ8BCc9SUYb3jDNMDRVMTLYZIMo+I5/0FlRKod1DnrE3MnFnF7zK8s4yhP/X+noE+CTFG/P7saTrdNqYej8/woPLEigWX4N6Gw+P315XDm0D5iXrQFLU+LsY200T+35OoMmh6gCNnhVgXAM9Mq46Kt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775590534; c=relaxed/simple;
	bh=F3I10tjQ1/poDYXdO/sCrGeMNTU+D7CIcWmX71yguZs=;
	h=To:Subject:From:Message-Id:Date; b=r4Hm/lYZ2P36Y780Dd38evZuI2Z4QYG/DTTBWm4LYQAQBIG1lfjuVbl9ulkQRbzgLD8wzQdsqN+NwI718XHBIcuHpK8mSzakTDTqxk0OnW6nz2NgEsIySrhsCpEh69zGDU+1BzaULhOhP7ZiAowBwlf75yg1LwDbpllyEeT+74I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dli+fAi+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dli+fAi+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B92C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 19:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775590533;
	bh=F3I10tjQ1/poDYXdO/sCrGeMNTU+D7CIcWmX71yguZs=;
	h=To:Subject:From:Date:From;
	b=Dli+fAi+Qtp6819MCBqT+aBt6gb8bvL4oa7Vfe8g7ACK1VeNSsWMFqOLJ6+NUGuaV
	 aunx+XG6oeMCSb7EeCPzzBLGtQSzDnYhLJyPgpmPXUWr1mbhWSnSWJn6V2taSfArCR
	 6H6bRmIJ3R87BXGG0KcuJusuf12afiHTcQBNYKFRyG2biuxIM1Y2conrcYBpOct2lp
	 guewdlv1V1zTnI/Pyg9D1o6dau4LwY/lpilH/3rwj7cTYlvj7rAIGxq/Oj5KoeVou2
	 CP0L7YStv3O11Gd/cmmrM9bSXOUa88am96SD7hq2Q5bSw1Ny3Z4XE9CeDu0VDjq4AW
	 x0p5vPrWuHBiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C94FF5134
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 19:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177559053368.32724.7789401034932169447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad021ef7422b4f0eb7a9a6ccbab25d4edff2b9327e4ba8436cce29cdc0b37d43
Date: Tue, 07 Apr 2026 19:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775590533
