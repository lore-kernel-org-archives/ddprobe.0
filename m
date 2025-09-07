Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E4E13957E
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757268594; cv=none; b=dNyrqPwL7d3rIuwfCS10FAGqyeiFhBC2KyWU04T4ikzXM3i8+zSEFphKp/wPfuEI+wv17i4vy9qPyaouGUWN4GSn8yThHH/19pOyQ+cYUftmsJBAdSprcVNc4XKsiAsPzGnej0NkkT7l8uoDem9CfRrxd89mIF9vN35xLsL/WJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757268594; c=relaxed/simple;
	bh=ho28BHDXDYAThkUvw+zrlcKPVY1XURwaQRe+36O6LIk=;
	h=To:Subject:From:Message-Id:Date; b=Vt9bpsIw6N1aoeQJu7/JMMORsUcWnicX1ORdy6bp6IY4//v1EpgRsmUVuJfixtkzfWRkW0M12eqd4homedCTFLwsX4ix44ZuCurqhn51x8Vg8f60vpG8YCtZM/p3FU/CEacf2+fYod/d4Sg9p8WSFx0vgoiTbixi4Z2cZGwJh3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VALiBG/a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VALiBG/a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB739C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757268593;
	bh=ho28BHDXDYAThkUvw+zrlcKPVY1XURwaQRe+36O6LIk=;
	h=To:Subject:From:Date:From;
	b=VALiBG/agU2DNtjxZZX+Pa2LQefPIkjTnYl2rpFEDNWYrb6CesU6bRWaX+xGEVq5E
	 kgf8cPuCUZYAHVrkzVmPWttLkyxgFLGBaKq5McDh7vRFh5Wvvm9TMrQpIT1LhM0TVk
	 wX4B4qv0+Y0dJNa3p0ljnSAXmaPnnpdrs2IObcjgb+Gr77hpepHWg7D7WvirrtNsHh
	 +ks90uQcG//C9ML8hM8jmG6uMSVufXT780aeUB8fOuK2CfWQ226+O+w0adtLzBp2y9
	 cePvxCdmEJgLDTve5IrPCPxoN5x3LVJToijCfooZBVypv2UivPrOTA2M/kPkQgjTwe
	 geIKsYxEErMFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CB4CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175726859357.26034.11251472849289135591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e564549454969179db9b19b0c776f0843aae0297404fc43cce18118dc1bdfc64
Date: Sun, 07 Sep 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757268593
