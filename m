Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6263815B0FA
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 23:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719963923; cv=none; b=VZt10l3dEab/RZjHDmr5Aa0z0Lqd21v4MiT1g17pwqTyIjuewuWj9uXr3BC12R2O8DDazuIeu0yB1Sjt34ExK9mFKsx59GxCMKpojnT0wK71BX+xXy5FbC+9aBBiidH/eZ1/peoSiMpou6IDXnTxNuiHRnCPn5q+UNYsC6w2cPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719963923; c=relaxed/simple;
	bh=wlaDW+JrV6Cn16/9RGlOspV5PAh6YbXvKvtw6Wqikco=;
	h=To:Subject:From:Message-Id:Date; b=CRAdmdqid79uwxBoMLFxZGSJ20ZBL7N3q/9+E8uK2RQCbnLPyZd8mUCqT3/PNXLa2gZ8lZTZaNcbiw8EtrpHfgr6y09puWXDDmzu+He5W9fz3v7LfTxmTfbblZYRUIoLC83M9SZJ6Do/d2FXmH2l5daAj+pTMYpQoQ8AzxM5RL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kPxaboCC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kPxaboCC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA31EC2BD10
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 23:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719963922;
	bh=wlaDW+JrV6Cn16/9RGlOspV5PAh6YbXvKvtw6Wqikco=;
	h=To:Subject:From:Date:From;
	b=kPxaboCCv5TjPwtOtTdGeoYHOuljwhu8IyO8OcZnWVq9quMwWhItmi3oll6Orpwk3
	 ZGf5CZfGPIrmTMBaQuX00rmDmDvyhgqyeaKNfZq3Iw3QviLkAU5B2oHTQ38h9zwgOh
	 BNmWSfT8GEicDXOaPDP8s7jKiO+ipA9fIePuLHGMATnJDGayNk3JOZYu7SP4obL07A
	 YUAoOAymuITBYY+27ETwbdCg75TOTR0d5m5zYVGhp60U2bsL0JqYDVpFyz/D8LkC3q
	 mz1KsHfo380iFI0fLayoe8RCNEVQJOKMqxH5AANzPjDA3jN13WC4KOGQ9GzreOsv5W
	 TKKLS1tG7i1yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1384C30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 23:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171996392284.26281.6048739626549567052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 447ce29d7f0f35938fb85968de02a5d47ddf95bdcda433b3ff48260f3e57f754
Date: Tue, 02 Jul 2024 23:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719963922
