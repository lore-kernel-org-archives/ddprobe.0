Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A272B9B4
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734892554; cv=none; b=s+3E3wI7CEUCX/PkULDMMspyx3bhTBYdFWNFv5LdnuTb9FxUzCxLupZPUxmMBoCOyWidQwOsj2rQ6jWGEewn1ibzGLiUuZWYqYpZri86tHXxTGHRyOdzGAuyNXmKHUt+AIDyXxAJzbpmp3mNO3qrlmElNpDBv+2HJRC/Pc2SGSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734892554; c=relaxed/simple;
	bh=JACbKSvVdNb1Ks8cgDmc3J5wgrQHDQYAuwtK6/o5530=;
	h=To:Subject:From:Message-Id:Date; b=Ig5lJgEAVs1K6sLUD+MZ1ecjdUtnrHbWJMArTihJMjrAqRA73P7iQlEbAmyit/7IWbu/slDfpFs/ADSBA8BmgVfBF/fuYUHtMEQMBBPqm6yn3RkYAAECqKiHjAWaKGo71c1tN55L0qbAGI2gurdumhQhol/QU6Fm6Wa+kG68e6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YH5J17gg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YH5J17gg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F0CC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734892553;
	bh=JACbKSvVdNb1Ks8cgDmc3J5wgrQHDQYAuwtK6/o5530=;
	h=To:Subject:From:Date:From;
	b=YH5J17ggLKnJL6lh0ge4fAh3/IsktF+mDonA2zGdeb9cSedXM0sWbfRIkpTP4Za9f
	 S+bPCe79pxU0SEsx5Y49oLTwoPYuo9RZyfnZsCJCfK4JdE3/59GQCwmLuwtQ6bIBII
	 PdEg2vlD3UoPm/o/+yiTZ0vvUJuBwCvmc0HLtWEjCnFhVkPgH6vY4UgqwEqvpN9FL6
	 G36qKoFO0lASUFqTW77lORJtElgjobTg/Nj570hNUiF9zzQ0liIHCu+176qt5gPkAQ
	 65F0rXx6qZiNjmKkQCG/MqTNPMAnppIfZZJyUiXC/Wyke5WuRoCdFmciEsimA7p7a+
	 WRybYXsN1fxFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B634E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173489255361.11668.18049389561535652850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5461f77dab484774b8f90255921ca879cf883ba636b3cb497b9222f48341a922
Date: Sun, 22 Dec 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734892553
