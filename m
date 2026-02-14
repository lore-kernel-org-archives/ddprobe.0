Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3937226299
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771034094; cv=none; b=GUSw9LSpbXceVl5XEwiV76yC5Z69VEFvbeDcsqcx60GcODm2kIRxwCUqH4zZN49Q8CrITNJGXNr4Mn8jpmw6z1AQE19y68ex7RvvmHNkQadM9J3eVD58Ph7BpIZoa7GTz+BGNA+ppf8DrqcttNvpEyIUTfywgjS+tyGVMrhuYWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771034094; c=relaxed/simple;
	bh=OP7hz0E/KtomZfoHrkNYllBthnRa92BsAfOQXBXV8ng=;
	h=To:Subject:From:Message-Id:Date; b=a4l5I3K5Trc+IfLvavaAVJ9K8q6MsUlJY8OrnBBr5K4RgMJ/LUM4uhV/N1iV1odh7BOCxH+G3IgnF3yKVFo5yUtPtAZjWpsZuTfhj4TOCKcOWGRkPoTmr+WgxIb4ocfkNZ6CaQXvmUdh5h7zuodFMCVUTYnxsZYpi78DQgEMRuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lf1ObPzV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lf1ObPzV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCCDFC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771034093;
	bh=OP7hz0E/KtomZfoHrkNYllBthnRa92BsAfOQXBXV8ng=;
	h=To:Subject:From:Date:From;
	b=lf1ObPzV8lOJ/ZS2ssRaeD4WQzwAiUM2pn6avbSMwBdXKBACiuSJd9pkDnXbzjRei
	 XpFb3ZzVk01KULH7rgiKir2MWsXxqJ30Iqi3RAuk79+TC6H+vSNzFaAsQRNQjxCdFb
	 ko3Btm1fMo9q8D0mmLIIjeVaoh5r643Z1Qac2EfVLivopSVc7SZRawvuf9yG4eXnYg
	 UANjSOtOs05k3Z8aMRD21P5vT9yJcP1PeIXl80bDVXWBP4u59u8NbL+N7ctnaiVRN1
	 70evFx1N79GzPyLikH6o5IlVfxfWZiDBYwLnCO5R3pFKgyx2yyux3H2gs3tRPtQ/Ip
	 T44FHrCCK7X0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FAEEF99CA
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177103409364.11504.15350253169417060101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1165f4e09f6a53bc2cf228b7457c89d55ddcdd0a65a5f262b61da5636ff0269e
Date: Sat, 14 Feb 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771034093
