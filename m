Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF8A1D63E6
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754067594; cv=none; b=YK8ZgP0mnbcQbOu1uQvVTMImRQcTeQUshjRub9uCZ6W0PiqeU2dpeOqSRbC+Bae0ID0Hm6LRw3DILseNIw9aS6XRdfEzPt9S2nedz86m0IIkSO6KH8CJt9u67BouISjmxxoL28Vo5Rfxw3cbZeyVL4AiGBl3A/gfkoXn7313K4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754067594; c=relaxed/simple;
	bh=sSGsQ+jxHIRTTYC9I9DDBCQhMvW3+KzaHVXShdOf01k=;
	h=To:Subject:From:Message-Id:Date; b=qGLF9lIAFnpWAeMAdXFgDV1Gmp79KDf9TifRJ4IU903BXXNdmBfO2POgoXuvqAKD/oYm9m5Q7jpLOxbabp2JAzPnF0xHejhpLGDN6X+XJOxNkv73AxRfpAfAF50PBF5/j+d0+XesbgvgtdM8T7AXCqYf1GFzTXqm0P2rRFdzzzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DocJhUNl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DocJhUNl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BC4C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754067593;
	bh=sSGsQ+jxHIRTTYC9I9DDBCQhMvW3+KzaHVXShdOf01k=;
	h=To:Subject:From:Date:From;
	b=DocJhUNlXnhiLxwtMye0oBoS1upw2bq0eCOdcmBm28j6RYHSsRDNivHZ25kKN6okE
	 iAZYNZBLhtHB5nm52K/sA9JJ98X8us411OS4phBqm8X1+ii79oiu8hNTokmyT2bH1m
	 QgV4fP0I8HixSnMWmVA+88sDWvyzEOPgWYOmXyS8AFQ92h/UuoJbqn6csl9E+WyHYH
	 GTDQr2+zFYH4jOis0aHJylQs0Og9XKKgaEwF6Cuu1vTIGEQsvjqtTFfhHL6tLqaxyD
	 szgUXrSgvjtANgOWDmtGC8JMN/zQSSMee0RVfX9JJhh11f6L2wGQmY5QNlbfkW1L2R
	 EYbAs5n4k7Uqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902EBC87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175406759358.20276.2137924793773658093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 968c1ffdc0c2c5ccfaba6b3c490bb5650074ee00c2b42a92729aaf1316f077d1
Date: Fri, 01 Aug 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754067593
