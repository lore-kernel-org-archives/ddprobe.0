Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409841A841F
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 21:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740001734; cv=none; b=eC4jCvltmX0oCuB6/wkYZhV/m3OGnjbYBDPJwR8i1E/PyMcvfsLTHdNkyRSy5xbTSDyucQwEK4pW/GOWHwsSA+FDiPSHEtO8fa1I4V3sToBF4XnulsuN7PxWAAAMqHy2SgJ+ZZxjy/lTeApF93rLc99ax52YxmqqPI3gf3oCmzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740001734; c=relaxed/simple;
	bh=FwPSB+FJvhbZmjAusZCyEfhRPCS3/on/TTjAgrIUVPY=;
	h=To:Subject:From:Message-Id:Date; b=MRN2ggG0UToqeGRN4fRuVXP0+eo/5LMKS4C8PTdXuhfq+vvgbJ0KE2Im/Fn9ZXs9agUWq0vN9o0yn5IY3OemdSvum3/3U1+AdcdTCcGamoY2iFKUm48K/ptolmjQTwYoe5YgrdL7tEtUmYz54BeiVYC50Y1ff8zgZ/6WMubzx4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALimWTei; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALimWTei"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E4CC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 21:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740001733;
	bh=FwPSB+FJvhbZmjAusZCyEfhRPCS3/on/TTjAgrIUVPY=;
	h=To:Subject:From:Date:From;
	b=ALimWTeiLNRVBT7IG0jFMigLn478pPbSHdiWBjOdknGsBxploJVVgjqyzCpfjM3vz
	 YqCFRDGctLGVPyAxXcK/qaFE4M4aDfheWa0zjaZM0UYzBaZI4bgsjFEiajBPBXzncy
	 xFkAKuTrsFS/15FzjUqBm9lHbRClpEfguqmIEn3Dii14JXQEP/JwmtCnYVALa5V2K+
	 G41m2mJWA/q/qYr9uZmpA34EiF7vxEySWOVNtStE0VdYJ5yS1DPmxQZFyjpuaD3qCh
	 phaXUoD3j0rtvOnZ0MgITTaWHeT443u0rieYv5N+oVPG8gKIqb7ADriV2OW8AvBS7r
	 arMaXGCfxJyKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E661C021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 21:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174000173363.27661.6453105641065919975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a3da80bff65b38d2ac4f941ba2a7ea114ba1743f4c3fa57362d790542fe1e62
Date: Wed, 19 Feb 2025 21:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740001733
