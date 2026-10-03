Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BBE439FCB1
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791019234; cv=none; b=Gxsl9EyaFzfVjvu8eWsq2olPKndcoY2D87g7yhHFLNb/nofWMVdC3mthH6I02oXjK7/6sFC5Yl+CnMnbLFhWXBqvAZJp8KACMyikQGTvdPynql+Q3RyfvevTDZSOWjScezGt/arCu6zix9ZV2ISV/XCbZLXsWva5FLbe1apSVvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791019234; c=relaxed/simple;
	bh=xn5PQS8Xq87c0eJ4+B3b3Kg8G7/VeXKYZyy4X+8n9/Q=;
	h=To:Subject:From:Message-Id:Date; b=Lx1ollb1lnQKSshez5w1P+wGGlohgi0zaRV+GNhlguKEjPhZZfeVr47zH+uX/bvGA/cv/j7mHhaBI/8Wtgz7MlNn4NHte/z1lFcgcjG1CQgCkBGBYsZJ56dgHIzOJiyfeYkyvuF4sr/Q/MmO22QAVTWLIBG0+fUJ3zBMmQQ12EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uWZ8ggHd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uWZ8ggHd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC3F5C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791019233;
	bh=xn5PQS8Xq87c0eJ4+B3b3Kg8G7/VeXKYZyy4X+8n9/Q=;
	h=To:Subject:From:Date:From;
	b=uWZ8ggHd+NFAWe0q0L/nFy5ARYzJjoGntIfy1IWWmn5Xqti9QZC17vJgHLOJP6gi8
	 EnNyTj/zHV0sgcFr68KAy6qAZFLyf6+i9amRYJjTKmL6uzzgQRwwzRFSaMdYWOJkBs
	 SVICm+jnynD1mq5D5F3HpJAplTEfl9toAY0O5l+/bnNauq9dTyCuiffWROXDcskFJ6
	 SREjIOCEDezuvEsvV6C7WYOW/7LMoqtLT2WrRcOi1meNkBw61H0CWHfTgqAkPYN5hS
	 PqsKf0AFZm/h9KD7pQ2cuRjbbZLKJDYAuA/VcAVvGei/VV0OVsyU4MfNWB5h9JX8aZ
	 x7BE6CD4ovTlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3BCCA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179101923368.26183.8204318719762739403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5bf3673048b8013167663c8c242eefb0a5a7f79e58fbba513a7e43970f3d5f5
Date: Sat, 03 Oct 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791019233
