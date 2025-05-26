Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A6712F2A
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748219394; cv=none; b=bGe2tehGi+m0A814r3k7xDjV3nLs406trtGjDpoCS2GRfW3bByb3UlRmWms4Hum7evluY7wQvd9b1KPqxn62gvmmAqdI/cg7Y71HwVj/OHDAjQvgv2/O1p9yTMLnDw/5fzFMgCIQEsw4bBqVh+K07cF43snaGQ5ZsPZNTYN33Ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748219394; c=relaxed/simple;
	bh=6VRYifaLlpMyojYKzV9oVG4+zEiejaHQ0cv/ABjmyP8=;
	h=To:Subject:From:Message-Id:Date; b=iPmCFCw+nHptDzpVU74Ofx6nXrqKfWyxdmX72LYMqBnz2a9aHAuMF2S7cj5XlgamXNdkiCnUXNNVOUS6FEOIJi0fvKNUK86mzi8IZavm6Sol92tGQWEVfL50Sm/D88hhygYdZLoIu39wdA2zy7Hi1TNABOIs2wbq4Ok7VBDnS6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rMtr0wsF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rMtr0wsF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A726BC4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748219393;
	bh=6VRYifaLlpMyojYKzV9oVG4+zEiejaHQ0cv/ABjmyP8=;
	h=To:Subject:From:Date:From;
	b=rMtr0wsF8PBHE37bqD9izw/rwcVP0sQRlLNadsznSK4soBw6kr9aToxUFqGqss5PR
	 YOyPTnKnYyw68SfyIXsJZqd3JmBPAHMAS7z5JTbSWTmwoY88P5nxRSoSdZMbcV9oWi
	 bgr9wIO/z9M9PFxzs2b97H+jXV6SEFV3ETvU6qH8D2B4/V1se2AQMSYdWPJMX1sV5l
	 rdJjjYehbp819KU9/ygYniOsI6bcURCxfXyD5X79IIBem47a4vYMaXe7YWJ9rieArK
	 3jdBISnJpTv1MaP4ceNNh5Z2iPWTXm+fmsdw/eXDS3p4XlPKqkSz5qU7mHyW735PMN
	 iesTkfl3oOgjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91892C54F30
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174821939357.27764.16494638415700184597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e67dbda30ffb2309c6a5ce321a0ed5b36e1e04e2ca8c48e38b6646ddab714c8
Date: Mon, 26 May 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748219393
