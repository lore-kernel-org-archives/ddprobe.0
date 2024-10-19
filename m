Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B752A8E5
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729373154; cv=none; b=ewtfp/6ST9YOXcxssqhLXQy6MC3tQNurwDsPHDP5qmOJtdc94G/6Dz7QVWO4sBtHkd9ZLZizZpt/QcwkGH6Bp9HnL4l70xS/8ATzdbB3wypx1XZ5x9FPIzKaNeH28SxPrI19aQwFlT4a82XKj90Ss40XQ2AMJAArpZ13E+MLJWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729373154; c=relaxed/simple;
	bh=pc7udSmeHFcqEFBnA2ScJrdiq5X0qpuJePFyPlLfvEI=;
	h=To:Subject:From:Message-Id:Date; b=H9HzPWIaN5jJnq+XIya6tacUxCfFHWh6hti0K2JOr/p1yOSdTpmffAS5WYNKZhdLt2zss3rp/bwWIOHKy6SSDUVDOm8bTzPSVgdeMLd/wivLRKYEijkia+7H2l+T364k9vvUq34QL/wUs/mfzP6LVpFbfpSjYSUGmIi8+PyOOgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDjfgPbp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDjfgPbp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9988C4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729373153;
	bh=pc7udSmeHFcqEFBnA2ScJrdiq5X0qpuJePFyPlLfvEI=;
	h=To:Subject:From:Date:From;
	b=hDjfgPbpz0JqIbc3aDMGSykxDEFuMREfiKv1kNnJqqAaUp8r+sdFAo72kil944UBF
	 3xznHcWRDkKhyL9w3QgXI5ysAt8uwxCNEpPrIuADfzTZFaWOSDE2XVnURH7xJueGGq
	 oRE46kZCKZ/wSylZfEV3f2g6C07G9+q8sQsE3e7IuuxZb7QsdiaiGVqHyRJN8nnz+r
	 y3Tfh6sKvwWjnVlsqYyj8AT2Z03Ul141/+F9X/LvWzfgHbonTTD29T6yoPGiaiV8SD
	 i0uKovhsRzhRb4ojvw2D/j5feSA7dltzaPTcxT5Sa5vg7mMhtCuxIpa6bzCSAt5oZw
	 AdV2Zj3ydN0wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924F4D3C92D
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172937315358.31316.16293109504361432665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6c9616be8fc7e51fa78b9f2a7a7249483953ffe15fc1b5f3345dc602c90aae0
Date: Sat, 19 Oct 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729373153
