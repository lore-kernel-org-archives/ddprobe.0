Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB4931BBBE5
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 05:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777007854; cv=none; b=f/V6kdwELn10uNFkT4lZR5F2WcDEIpzrpuHjkOFml4DyIu2ik1T3BQsnigic3xJU0CTh6IQO7cMgG1NpjCgzpVwMBmOuD20TPVAdSBzmPVSbfpcXUdO4OJ/DoP9tqiwG0RgpZ3qdxrz91OIzH3hzCpWG+Syo7H0us43O924o/PU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777007854; c=relaxed/simple;
	bh=OkL+HsVA+5UCRBWFRMrew6Ev0nEMR2Vjo47PSFxt964=;
	h=To:Subject:From:Message-Id:Date; b=E7fr4xwnhbM9NZa3pAilXP19P/qW0Uz053XobIhsz8xa2Mk+bMXTpoZRjRztOPjx+JFl8cEkHB6iVIM7xSGv51cV/9WcdkiNuq4jcDfJZ9ri8lEiHtld4hDis9XDwHHXOxjIFoybK/i/31MNPr1ZHvJeA950WTQoo8wm7jYYJEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXg87r7U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXg87r7U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBBB0C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 05:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777007853;
	bh=OkL+HsVA+5UCRBWFRMrew6Ev0nEMR2Vjo47PSFxt964=;
	h=To:Subject:From:Date:From;
	b=CXg87r7U7b3NHETR6RIggRhLRzeNdP1GK4HF+nLYl2e2GhiJvq7vKDQF/sayQ+Z7q
	 gssua2saqeRti2Jq37pU0lftNJtV7tNwW4kuBtbLC9wKd6cmpZtxlQnnMKRMxleSl1
	 dgbMJ7kzPSKov7nNw/k/w0WNxgoSVuGAG5OQRugtJetRNtij1T7fmEfAkLlYP5v3Ta
	 JD32tf3WyeVKbM6Jc/ZMOFxbWlR+0QdFxjFqzHd+DWnbiV3oTQEugH40c6RHiLNnYS
	 zxoUj71Di2pKjyruMiviZ4aGwAbxcrW+H3Y7v/hx4kYsFPZCskxL1AulP6Uco38ATl
	 i2frBnBQjERew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1B7FB44A6
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 05:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177700785368.10346.2066443088484169658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1d2285d70e09a422b01f066f5247c532c2feee87b981d9ca1240c4a2dc8ee76
Date: Fri, 24 Apr 2026 05:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777007853
