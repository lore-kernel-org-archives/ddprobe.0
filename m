Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A8F837F307
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784828434; cv=none; b=WKWeiXG/yzL3PnMoAqkXciVpnY36nmOUE0en6oUU/VxHrKYcofEfg6ZbkarbudwiXgcnVGBSSVP50Bel0NwerVSVS5oSRbTH2vLu2c1A4scfaY5uDRQo69pbz8CAywKBeCZKgc0WhVcJaJJMqZLXvE/h5cRelix9am88HuMPfOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784828434; c=relaxed/simple;
	bh=ysEPWYBkhuLUFxaDx+RYHfeT+CFUWSkvyyRy4XuXS7Q=;
	h=To:Subject:From:Message-Id:Date; b=RNVZXxcUD2+FWocfIzVKvRSoG5LiqsjAwpEZafGPHo89Z/ZTTFwZVsW3PCsaTa1rDZKq8h1g8nbizv0XMMzSPv5LOoByxkaEfl/lNnfPwQSoWg57tcAWEMvy8EL9noEerhJXNCGzN46WBQ2X9Xw2pSwve2vn/88xg9Ytrj44yhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LeS7AaE3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LeS7AaE3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DC4C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784828433;
	bh=ysEPWYBkhuLUFxaDx+RYHfeT+CFUWSkvyyRy4XuXS7Q=;
	h=To:Subject:From:Date:From;
	b=LeS7AaE3HzOkAQdfAid4aGO3tk0evHr68bohf4U1cXsRNW3LwvCF4pZuCoVoFVm0Q
	 HSyUoRMonXwpaflhPQig+g1gLHmxxSer84BMXysJH2Nkv/fJ92+oQYamFLe2ST3ANP
	 R9Bbum/e257+1f/9G3cu7yGl09bermF+1iXIAVqNh9zc6oCOLaFkIsj5lrrjS52sIp
	 mt/GcP4Y2eAzZQih3k+fcVqE3TLmfTUhjz+sBcfd0gKabWpQWqhC+UnFxA5LjPBV6F
	 wW1f7YeXQ28XyMAH7nXnwun4ixlIj+Vupdl31KAkvDE4v8oMQiY1PwglOkl9DIBCVU
	 k69+lCWUD0Ceg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9925C531CC
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178482843368.16921.7230501157246242550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84d9ce812e27a21e95fc38370a7a97a6615e028cca5e7d896a36d3eec7bbd0e1
Date: Thu, 23 Jul 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784828433
