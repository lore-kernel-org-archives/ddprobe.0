Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF0D3B813D
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790496634; cv=none; b=kTfJckxp2G9lrOYN/papzuaHVPCeryhg9txym/T4ClQh1Yhe31Id0SeYXaJVwUsC3H2iuKJF2XbaSbUnwIum1h+9j0cqSEt8pOTdi1+ieHgOILGoBfxm3igAcRRi9whIVv0yuiUIT2JcBgbwa7wcpkhMz3IcgnyDB06YJq2HU/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790496634; c=relaxed/simple;
	bh=JqhAV/7a/EUXz1blU3bVnCnKwLi9JPOtsivetkeW3W0=;
	h=To:Subject:From:Message-Id:Date; b=Vy7J+T6wB3RtHJhAiIaCnWfbsF68rY6ArkIBM1ctomNk+YG2A5Fe3OC0GG/ozagPIjac++qZYcyXccIEEJDxqJGjt3j7GXzfKRT7Pi4fLUyK4K5+cnO1Ouz0Na24yxOW6eF40Xeeweki+kcmRuDUwBGnk8A73d/K+1akDcsCvpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bbIX4abp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bbIX4abp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8A10C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790496633;
	bh=JqhAV/7a/EUXz1blU3bVnCnKwLi9JPOtsivetkeW3W0=;
	h=To:Subject:From:Date:From;
	b=bbIX4abpe7TpYEZkaUKtE01/xE2VrKcmNRxOr5vtdkwp3VODH/RM5YeuSw9aR50WE
	 YPz51Xal1snfUVCGf2VpYa4kNh7Zef489ZKSLB+Q98w3pe0yajhfbxc7au2aTqW3kB
	 8zs3uM/fOxb9AgHeG8qxvVULJPkAQUhcADnEhfKQpsjDKXn+2drXHH+flSdnwcbKcR
	 Uxy1YARh00pjFisThqaVG9NIv5Q+Ev89zV2e+G2XyD7b2RK+e/yk0TDBSYaD0jrQhs
	 7+OnpbWTI0NewVItiOwe5+SkbTuZ6IVwz52NrdWVqirDLaPUnIic7Oz8VhJ2xGYf5c
	 hXjH2neuq604Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB6AC9830E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179049663368.16287.2356141367811307284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97af8dba594beadc9561aecd2e7d33f9351d5544107453369182f194c82a2d4c
Date: Sun, 27 Sep 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790496633
