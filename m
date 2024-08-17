Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F71012BF25
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723876554; cv=none; b=GoxdH3Pt6+eOoJOW6ms4mDnWYw3VQlW71LxduffK19tQrkK6MTsIIUOGTZGj6Ndc/A3EZ3iU1b6IsH/HAvf2GW1n5ElNOMT2wBJMlWBQ20B7d0fhf4M4G72cgTztNt1zpRowAE6OeBcITO+4KX/y5uGkvXbI48Ho8oEXh9zEUS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723876554; c=relaxed/simple;
	bh=RHO0CFzoAgrdF3cmWmQsG8800UJ92yvXhfq2TvM/nTo=;
	h=To:Subject:From:Message-Id:Date; b=AvDwvvzlluzcXHKBs1JawJctm8iqZzET6mtkupUp0dZ9ZF/eZeb7/W0QfIGW9kPFOxeAccpJOlkdMvjAQD9oaNmu4jA5PO9lM1CtJwQGywgRiUq2OcGL3qsTTY1NoFyHle92l+oWR2P1X+o1Cf/Lb/M9bzs0eXbITxTR5Gdfy68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCksWQWy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCksWQWy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8322C116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723876553;
	bh=RHO0CFzoAgrdF3cmWmQsG8800UJ92yvXhfq2TvM/nTo=;
	h=To:Subject:From:Date:From;
	b=rCksWQWyT5tO86f55rymo7CZ0AkidSukV4piRKJz9w8X6Iz5+Rhbebe8AiZIa8fMm
	 2YztL24bYF+ojMk1Dxr1MIcmDW7/w5U0Pd21mMiPuVpXa9YrLBzTvWOtlSEDN6retf
	 uWgEsXZnT1u9g4BUgNIaYJGf35u6Zbgj0CLRO1ELHxHDxV0V27PUau0H04jAXPbOcp
	 RzC0nxlDDECayFwQ1ejBmlXDXH1jPlqHnumID1Cz/9meOKAmFvWB7kMO2BH3yhkWlK
	 NQdBsHixUMnvA7UPb+1rVxT1t4dT9jQgSG2f4h6FcpB6N2q38vZ9x9qMWiG48Chlq/
	 nToLsbwCRde5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC80C52D7F
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172387655357.24937.2328006589435663469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bce2562c26e6a95181d5d5f74898086efb57eb326eecc04d68b9bc53b366b434
Date: Sat, 17 Aug 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723876553
