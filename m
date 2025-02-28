Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F35182
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 00:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740701335; cv=none; b=WaKy0cTmHNW4IKwCyp8RLOS3/1/jvFFE6EpMAsOf3jjMTiqhDPzLlqycA05RZBTFppzmKfSECYOa2z5qz4RM7or0IZBx1xG81CaVSxLtxnv1NFM6n1JEBtIvd9z86bD6YwqRKwBZRUoNpZNCy/lZ2n5QQahW/reB5lzuIARVAX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740701335; c=relaxed/simple;
	bh=6Mh50Q5VZDlZaBqf7Y/9dU6+2JPqdLGsHLaA51CB40Q=;
	h=To:Subject:From:Message-Id:Date; b=M3CeNWXAJpa5gxQ53pAR2MGjaqtw3WqQLrK+GG3ICJfOJnyMU9pn3kIX6s2XMbzejKNYm7GlY7/CMN2sFWlGZnGlBpBcfINFoA0s6NdSVLFruQVHiQpeNLKx2HW+VoiHcTK/bmcIYemKnBOBZ11afRy71Vo4XA6G10A3NGwoLes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N4W1hegs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N4W1hegs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF13EC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 00:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740701333;
	bh=6Mh50Q5VZDlZaBqf7Y/9dU6+2JPqdLGsHLaA51CB40Q=;
	h=To:Subject:From:Date:From;
	b=N4W1hegsyDzdTbyscmT6X8zkKP6pxWLJL7i7II3KPjappgABWbDclSAGzNcm4f4FI
	 WSy4/OdvTDbla8If/SRcxaCQ7AkRvg6DZLW7t/ASgTzBpXE4E4UAOYBuxWKif+9H4F
	 H1FPOoGYpWnRFEBMmdfc165GEpEggpUnpCpt4UJ3UStJofPyg4JJch6kPIXMUjAjwy
	 hG0u0aHn4wunW9TWLawyeHOGQ9oUdCr6DQTZ20MS/pF8wqFjx2X3CRTTmsZgi1hg/E
	 tHE8c5rEEkM4Tz1p63PBCxSwbUYaRZjKsRJutJCfWMaID6xoblY+P2qMUqr4FkTcpd
	 AVAtl0fxMlrYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BBEC197BF
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 00:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174070133360.29126.9057931073585375556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9543df08f30161f848568a0f0f5d7a51b1d09e477afce1f73205e4f617e2ebf
Date: Fri, 28 Feb 2025 00:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740701333
