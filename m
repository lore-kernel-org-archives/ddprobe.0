Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C34A25783C
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787276434; cv=none; b=rEkkRdoS5i3O49i4n6hXNV3DOjYcdUYsdFfSZk6ePpf2rYynOMSUvCreSsiGL/dC73CMQx7inhEd7B3qJ88hHz9kJV6Ba1iEuu6BKAUL6k9TGi3glkyu6ZoRrYnCIpO2b69Yll/z6SkCIIMjASEKHi2jP0fxbhcPBHfR1PIAIcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787276434; c=relaxed/simple;
	bh=JADxSNYlmbZHKnC5O1sX6tusF1ZfOqViqKwUPDs8eRE=;
	h=To:Subject:From:Message-Id:Date; b=XSxaDxwag//bJd9z+2pUAvN1QwPLqlG2m48hMNs6BG3DQeog2GjIhIU6laXgH1Eeu7l3ruD43JXQpuGGvEQgODaQU4acdoruXiYPoxoLFOwBpYgymDLhJtB68a2hLjme10Yfjg7Oc6ypANTyglYc3LCvAP953jvvY+hjbGiYssA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C/hHhXN9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C/hHhXN9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C52C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787276433;
	bh=JADxSNYlmbZHKnC5O1sX6tusF1ZfOqViqKwUPDs8eRE=;
	h=To:Subject:From:Date:From;
	b=C/hHhXN9pRfN79RVDPOSFpVRLNzYuXDcp8i80QIJr5qR3eHYrFxT5FVBjYklKaLXu
	 PQZc0y270VfhEqR92UVjg6uH9Ww9CkEFzYs66Fz7pMVlkfbKDp3RAEYXXFTuoO+Y/W
	 WhsSGLYr8uN8LimC3rlOxx8+06vSCQkUIWzKAw2O0mxhigjJMdajrMvRHLn9Zv8mob
	 SDyATH/Ke3tSs3vIFEbCLsM9RgAQF6cf/J4KMIffSMzN+sI0qOPmiRstjwLMbb7LGw
	 Oj09M/7a6qiTavOnQ5dVjgJsgCQlLT/Nm27umgdPfNcUXgnqkRAPf2MR/oAg6oVuMH
	 WvlF93yFB5CMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB893C5DF87
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178727643369.6668.13600939384307805289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a82b120bf38c2678d0ba879bdb01292f035164ff85634a301a440bf9e3b9165
Date: Fri, 21 Aug 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787276433
