Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71F391FBE86
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 08:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741856334; cv=none; b=eN1XEYo7zp4a0h+XyJ+/hb/2FG9B9nnnT4ULHAVzmDyZIa4uLumNYH/yh935zcJ82y+BQteZWf6SMlcr1Nh8qH6yj1l0AZYDibYrg6Qr0DADwrp9uICKmaA9ljZ1bc/8ITHFBrX4wDyeSxtDzoXB602KE4gehNyl5RaCL0WhGAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741856334; c=relaxed/simple;
	bh=gydESV4LYXprlEha9XqZJef5p+PruXmm2tGER6rmcfY=;
	h=To:Subject:From:Message-Id:Date; b=M5InR9EmG5bHXC6y4x8ovuMqoOAFnUyABnCzX017t3jKPQReMJewsOTvdCZNwyefE/e7A7UqO/wOx+8ZiBo7OrSSmLe0vcNYro8SrFEw2XuKtkLya86xVB0N/axhm7ukTqA+76pebWHAcrcRbzFbhqycnwi2jYSXHtpehdpvSTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OORUyFBP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OORUyFBP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B20C8C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 08:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741856333;
	bh=gydESV4LYXprlEha9XqZJef5p+PruXmm2tGER6rmcfY=;
	h=To:Subject:From:Date:From;
	b=OORUyFBPgZOmv5MfaZTDwtEUxyx0cgyiqNOE97VyoxhV5PI65MQN2/BWY72O8pyJV
	 z0n+ExEUKAkIMp0uED9QHQsoufSJJpUQfOe2f3luE2gYimLP/iynLJoVkAGfx7A2VH
	 OxNtiw2ghSXZtqVcaCnqAZkonJG4bpOH7LwYWFjocptdEe/mHU9ih8b0rx1llpIVMi
	 HEXlG3ryIxtFLKX0fqWXOfSj7o/X/UknvwCokt/HE+PIc6OU+oTAYVMDQJR/G2kK0J
	 9eSHEWlbU2NTeFztlnwNunzU0KkVrKn7WE4NrDXzU3vtvXjvnqLUbX7WcczizQXe3Q
	 XXwyAQprQIY3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AD9C28B28
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 08:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174185633360.19718.8547951374452713723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bd4e679c1327feda6d94a08efab42dfe64a3a5027b854650346f5e44bac661e
Date: Thu, 13 Mar 2025 08:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741856333
