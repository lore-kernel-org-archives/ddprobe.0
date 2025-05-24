Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD4C518E362
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748101193; cv=none; b=RvtCI2q+xJ8Kty3dgBEY0wZZay/z0QkFWluqGaxOJnn7taLR8BCxivi67wIPeyJd/OaiaTXxVo1dnpBXCP11sP0KDOoo2wxzauuz7nmAmTER5pB4Ta3KQQGekbIfG2k56TiPnjq0h8Jvx2VGlz3HZmXO376Z7M5TnYUzESlpOtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748101193; c=relaxed/simple;
	bh=jrKaZj29sMEpWUTghmW3TXYX6N9e0s/B0O7/IbJxfk4=;
	h=To:Subject:From:Message-Id:Date; b=LiDelANifOjN379/hp6JSqU3eExqawz2r5oE0K58AMNs5q+w+j18O4LtggWC0yiRsWAr1UtLLVLELW3Dh9i2JiEOgh31j4XmREBapVOOnEP1KrCUxasq3sT/0fISjp4m/VbkqFP22kMNaiQqUm/AY4R5+8+eJTjkHIwXXnnkzNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RywZNezH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RywZNezH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF3EC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748101193;
	bh=jrKaZj29sMEpWUTghmW3TXYX6N9e0s/B0O7/IbJxfk4=;
	h=To:Subject:From:Date:From;
	b=RywZNezHqLZrpkUtGufRqkLUasUhQkXKJxxCZV5myU8i0AZfIFYbPw36hGg0eHLkH
	 3SK7C0kIACEYU+TJr3vmMTHJXPvnqX7+MhYtxH6bOV3EpVxbUJl6TMDCyYH+0OFlKx
	 6pVSz/3dg2L+FoeK/jy4h5CmhvtcZVIP2KvIN+IG3xnJ33xiMnXtoB0jE6sKixjPXz
	 CNkHoEBVrMSahqSxo3Q8am1uCi7c7clLCE2ayT+1CxX4HkfcrdEr1GWx/XGU5GXmx2
	 cu23TGdrUwHXyRHKn8/JFXWFdgRa3G2xu+Da5Vx3mvt3UKsGlRTmMPLUsJuUY52FGP
	 ptaCi4I0rKZpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD8CC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174810119358.2201.4206582228763719354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 589714519db3ab336bc2e93be223f18284ce82011867a3c79b823abd405bb870
Date: Sat, 24 May 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748101193
