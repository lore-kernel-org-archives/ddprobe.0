Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C461DAC85
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728068154; cv=none; b=NZDbi5azrFwLgt3fecJl3z5MNKmataC9lSakPBV0wa/1P67WzZ2++VPkB219kW764eTJjUqqhIqend8FsewZ4nbCmSonMZPs/ovZEJN6itbgljoS4/nPNJxdT9eqke2qLXjWn98UGCIUMcDpUBdzjPHg7DI1EFgoMLJWj7BZd9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728068154; c=relaxed/simple;
	bh=PbyL3uAHqPWfkTI4LsdwoshJlPtZ2ZGSPplDeZApXN8=;
	h=To:Subject:From:Message-Id:Date; b=d01lsuxWTlDWSowWQ0OudIJxHoi/vvN1YpZL59OAPkb8udqbkBwRScWxlYY1EOalciVR3syqzr8GZVSTXaDgDjvvi4qVMdmli7lb+P+KuLIfJGo64HBtq3v+mRqO0nZBG9KG04vSM88zQrGb96dKMqWuyx2FQU8y9cvluOzm6Ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Encz8rUh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Encz8rUh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3A18C4CECC
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728068153;
	bh=PbyL3uAHqPWfkTI4LsdwoshJlPtZ2ZGSPplDeZApXN8=;
	h=To:Subject:From:Date:From;
	b=Encz8rUh+DTISs03JLHHrFlc6sBuLE9gVl+JB/03aqanRqFK+tjfhs5hmQfseNsVR
	 Gr1WzekOFue+WqAl8I0P967KD4MTBynTVSRrk9rAltdR0Bc+mq4ZTZ/kjZ4x1QXi5o
	 65/lMpYrglvSm15EeQlz6OI4Xm4vltCfE7mbDqc8LdDL48dy0i0QzJ+u6hTIOU00Ru
	 w9Ejc5y28dwdz+TrAQ3YxXmkrnMIaD060gOhkPND6a3QUeSFlvChTpXdpOQvWNiHfB
	 R94stJJptE5vXnatX7IMoiu1w+WAL1GNUg/vFuHF7n+nFPlbAnx9VJb0t/400kbjAJ
	 VFo+xDlDsCqXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0151CF8840
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172806815361.14029.786513296890920652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7692862c2444076737eb61837895af67b3a6624bb0f2aaa56a1ac77c74066776
Date: Fri, 04 Oct 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728068153
