Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14308273F9
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753339795; cv=none; b=oHAgBpjmiHMevma65GTi0bSuSEbh7sUdHkezFEBP/a9T8djiJlbErZWYPMgzwOvK3o1h+IGbCRx7qTQP9ll/DxGxOqwmRqHWgPwwFOxwA4H6ehji0uPBNaXOggw6EztA4Ixdp6raahGgx3eIkllKSwvAcaxc8BlVXFY/rVNrj2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753339795; c=relaxed/simple;
	bh=nogfN8ALjMw3jXsZnVna3yqb7tjRNVU6fAmadtjtM5s=;
	h=To:Subject:From:Message-Id:Date; b=bdTvW8NCfIgxuhdEovzMgWOIg9VgjWKvrWyMsUSsBA3bQ0DtqQydCSKh8Z/lwEbnv14nW25RrFmCur4bSVKRbuiio+/HuRGP1UKMHIF0jIUbWHM2CNCzk1xiDNdLfQ3t0+iJTq3d7VnLs5cMh3+ClkDTP29Ig8Zh4j/fMtq9750=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ju/TvJxF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ju/TvJxF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B355C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753339793;
	bh=nogfN8ALjMw3jXsZnVna3yqb7tjRNVU6fAmadtjtM5s=;
	h=To:Subject:From:Date:From;
	b=Ju/TvJxFfslYY9GCu+n0YIUtwLv3WY3ZjkfdTCxwycVciA4u9ue0F1hQoN8yeu9rQ
	 YlyFvxV77XhjTBQhu6s2cKdAW3RpowsYayOtmITnzvJCWGPyLCFjstMZj4hptxi5j+
	 nZSlFfvju/EARJHav9PmSRr8CDTrlnOMzfEnKpqHbbGxn/EEN0cfv8tiUMaDI4Zntf
	 FnbjWJMgVSP1RtgWzr1pk+V61qT3EQTwv8EA2IGX2/bOMk7v8TYzVCDl4IrER7TVVo
	 pdZthsKgBONMTSjxLSrSdOHVRTzN/AfYAv2myHNQj9uUC3Cp76o4pskuVC3SKME8j/
	 RARkf5aZSSlyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEF4C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175333979357.25119.1189133668073727529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bab909f0061ea45dd9d91978b18ebea96ec768134eb507aeaac39e2f7b8d11f
Date: Thu, 24 Jul 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753339793
