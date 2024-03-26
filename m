Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA249EAF6
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711448896; cv=none; b=aJjid8kefVjAu9/4Ml4ci5V30FHkqkDeOexJ42HFMzQ0+tftiLIHEta19nq4EWDEBAL4NT8dXydKLlfupA6HwnGk4/9lNt/4/GqFg0w3Z/ANSokc+UrpJMDRT5PJknmVqtyJjPo7pBT8XLU27Oo2ihRhth4F5C6RPKIkf85xo0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711448896; c=relaxed/simple;
	bh=zA7ZJDAuN+SAN6irJ1AVwHX5ZMLV3L9er92DAA81xoc=;
	h=To:Subject:From:Message-Id:Date; b=L8rq9ieee2QZ7J6M9/xzK9UeeUSeFD+eCB7XLb4NNZ4P5pDfpRphYfO+di/5kcCvz1KScxf0HKvhru98hEFXJ0IvqVx3wRb5pEvWHM0yKl0t/oMmsQwCiyqF/k3ylT3ZEI+BRX8Wczn0UnoRR3/l6E1YbzlMDeKK02q9ImRuvbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUOTFkda; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUOTFkda"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7235CC433C7
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711448896;
	bh=zA7ZJDAuN+SAN6irJ1AVwHX5ZMLV3L9er92DAA81xoc=;
	h=To:Subject:From:Date:From;
	b=AUOTFkdaANi8+dN8tIF4qjQZ6SEs2lCfx3qa0dhQGvc4uKzSRYRLoRN/Aqr0ZobRU
	 6M7pdyFaNHFHv/7GcKBkXKrgNk3BzuR0SSvREYItbq21fsDPLc1Ovq95bs/nfQTzXl
	 /4C8f0wU1DglNrSYBCEZiZEZO/jpcL7mKtPBXBI2duUKydboXC1M3K2oRr0C9BYGb0
	 W9mZxHk9XxkrJCmRiT58vunZpCzQX+FOJ1vcEM3yjfp/Bqm43VTHiItQnvvQZiomsA
	 N7bgAXe3lcKfVV2uzFKRKmiUgVA/7Z4NZg3WrlrPIOv9W3shFccm7C/TAyzkq86e+w
	 5yLWqffA9+Bbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63B42CD11DF
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171144889639.2512.10637487580861319753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b8b8d824fb8a1f12d4ce0a4e5e428194370350b695b46bb19d96e86820fff55
Date: Tue, 26 Mar 2024 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711448896
