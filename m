Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3996E1E4A8
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 05:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714197143; cv=none; b=V3KnOAESHM/uXnx2IRgBBAqqssRTMCjSGjAHKoTX+602mt2OVt+ZC/MTZXuHNPv+eysxBhoBm7s/OLbvU9IFushA4ro2b7gJECDN3ht+WQulRJe6AOULFJzzFBVSotg8JEZQI0HNRZgzI+XpvO4g7/tTVbhYX/ow/9+Z1D5102c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714197143; c=relaxed/simple;
	bh=ZAC27wF8qmRjzn5ZgCTVOt+Qo7jK+q1Xw1v13Tk7glQ=;
	h=To:Subject:From:Message-Id:Date; b=ghIjOWTZ74DpUr8styxl/BMjopdzC6GVLGn4Ok6lMhM1Jh2jN9hu7qpBoBrU+pfEkAe3Oljjm9BCn7BNeaqePsGFEqnuqaCsOYPiF6ExCd5Eu44D+BJV4yCXZRpAGP6L5daVgv43w3ex7F4TX3k+sw1A9h4V0AUEf+hS/OprbsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ATwIF/Y8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ATwIF/Y8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61AFC113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 05:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714197142;
	bh=ZAC27wF8qmRjzn5ZgCTVOt+Qo7jK+q1Xw1v13Tk7glQ=;
	h=To:Subject:From:Date:From;
	b=ATwIF/Y83MULyycVGAn/HPtXaDGyWnRo17BlDev4xA8zfGQtPCFPdbc8zgniUD8mp
	 4123KZ93wrHT4bQTZ2ZVhC/wX2QDl1G4pzLqNrzLPbFx3lrSgPvBejbDsAaFgX5VOS
	 kY5YYyeADPsp+2/BRCfovNGDyU+DaFr7MQgMYVfAb5OE5wsUjamFOzTb3197i0ujis
	 Ub0Ps3Fp2THSEoHqyZicmJGAoQjJlb7nMDglgDk+xdinbu7ng9RQI3sjhtZzlhhruK
	 5uP61tp6R/iS5+45REib+4RUK9gDZ8NWzAnSYKYXQu9f1p/0xle3Iu0XoFDTezL2T9
	 bY5XPo6+s4NBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C199FC4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 05:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171419714278.16759.5666390728990765587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac3e0f83c48b751b323cd57222ffb34f1dbfc624c34ee6bb1dcb23d8ddfa8bef
Date: Sat, 27 Apr 2024 05:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714197142
