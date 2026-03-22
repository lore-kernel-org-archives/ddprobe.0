Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B919128395
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774215294; cv=none; b=FyGrbunZb1dvwH1dk1kMJ2LD4T0lZPq9Wx4edVf0adVFBeGmCM+ClMPaNlunhLFXzAi+r2cIwG95OrJhE17Gq9m/6M3UprmAiHOx7cJwSWgWpfH7wPk6fLI6XabIu7gCw6uwYL1TV583TDo8TSLlIwmtvvFWnRg+SGcXheSEgqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774215294; c=relaxed/simple;
	bh=uVjG+8PVn/ryV0/Q9c0eNjMlEo6bRhjd588vkDJdQ+E=;
	h=To:Subject:From:Message-Id:Date; b=s9AB93wcR/6ny+zjnVdJsMgkHDvIhDuj9rGtT+f3jNbx+t9GBRkxMlDzr65gR3inBQUWpI2WWCCWXStnpse4r8XKAn15Ul6sy4yDfTpb0i1erHICdz+bsCpZdO4BQgg5PeSEOaBZBkCp+vLojSPU3uiijKrb9L2Bm0J/l5E3/rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uaTzU7wY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uaTzU7wY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFDEC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774215293;
	bh=uVjG+8PVn/ryV0/Q9c0eNjMlEo6bRhjd588vkDJdQ+E=;
	h=To:Subject:From:Date:From;
	b=uaTzU7wYH88aNHwoCA6ZJmFfnaClOeSVYeC/GK/u+Odn3ISCjX0xeSK7Rhdc9xUoF
	 fx3FP6BnlT/rvrLLkqFXckyvT5UB492BVRs9KIXGh/WX1Lb7ExZWg9VfJkublkVi3m
	 +ihodpc131OLz0N5NLVC28dtTbpZfQa5CynLXrd17ZGgYdfblUg/5uvgXL7tCQXjm3
	 U5v0rzm2/ZEwMlLsGnNYNE+gVAogt4dvVAuzfY/aOYoimhio/OsocpoqF8MPZbDf1x
	 hDggRFiNHzh5IWSrruS449322qA5zhJpKUoIS36TUe7v+FPnwLoYSL2o1xBBUNUrVo
	 /NgpXG7hAi33A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974E4D58CA1
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177421529358.10116.1193541353476394538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afaf8b120f774c40d21fe702da92624fca7911e913ba5d37cea4964e0f9cb10f
Date: Sun, 22 Mar 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774215293
