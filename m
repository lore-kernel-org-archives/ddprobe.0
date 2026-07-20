Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339C139A806
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 14:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784557714; cv=none; b=J6Ophxh6U0+QSceihXiIDua+qPTFjtjfAIw7qXgEsVk3FMIwJqRgi5SVtArIWKAdAOy/5/dWYoNIygllwBIgaFqip9cBPuM/xK522KSyvsB+A7KjKOD+5DqAuMV+9k+HCs8Z+I6LutYsMrZLiB5f2h7pQDz27TK7x+BvY7XYE+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784557714; c=relaxed/simple;
	bh=C8JpljwjFoO4jjYV5NGODUzzOlVnrdU3i5F9v9XjWAI=;
	h=To:Subject:From:Message-Id:Date; b=qUa5snSl3RKgJZPBKNH+yeS0TWyCHoLnmGWvjyDR418xZ+0vbH2DBtvTIuoqIQy8AkyCbvlnWFIBKtoF0k0ZIJkAQtdiyRK/wyvrUBs5yAwRxekyLuDptA0FpIgi9I9AV6WwAyiS3YRe4bL5YjbzI59cIBm4t2G4DE7Nqfe/hvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nC1CJtn8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nC1CJtn8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D558AC2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 14:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784557713;
	bh=C8JpljwjFoO4jjYV5NGODUzzOlVnrdU3i5F9v9XjWAI=;
	h=To:Subject:From:Date:From;
	b=nC1CJtn86jl+N/N25fmbxvNNB/SQgUGOSzxtHOsMGFhDixahiRXEM7Bb04/vLtkUf
	 dG6i7zINvo/ARa2GN0Ko7UTtgaMBH9dk7+5WPFe1XY7Zmc3VjSyafZzRmrgDi4Nj/b
	 91BU2BKadmV5yNGyii5vt6XLIa6pjlInjvicEZKcwSlkH2bpsdAvgKPjjrG4s2X2Bl
	 f/oSCL1+INLxsvcQhw2T7+y9joWLiQBmJ+VoSdqeeCchPGRtCTQWaEdd56rk/IiicT
	 Mj1KYiWiDfWGXEm7vZA9rnkos0RdqmXMx+HDihThScXDIfShThS4f4OMR846/fDYse
	 oODIIrd9B6ncA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF02CC44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 14:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178455771370.3504.1170830301098903680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76bf5495f62e7d5e90b57e2b66d14095d2fa072d057025cbab4c2b9aad7d7b99
Date: Mon, 20 Jul 2026 14:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784557713
