Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BA8191F84
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742977794; cv=none; b=CGhf7DN1GJGK5hOpbOjmeKaWPCuzeRviqgmSGDHJPsW8WRJZtN/HcwGDD5MJ6uWGPSGH91kUGKHtxpqPJ3JIYGd0imEOBSz+YEuvWMOEJC85XRrytRO26uce6duTc/iHCRK7vDcH28jQSGiDn0WtNBhHvcIeeLwwpHA0Yi7JuXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742977794; c=relaxed/simple;
	bh=VGAtWjxSH1mrpbImPMzXWNBvKJ9bjkm+1z8NQDd6J8U=;
	h=To:Subject:From:Message-Id:Date; b=jdcz7x4fzVWSmp7QJC5Di4iIE1ls9UlxpIGjKVAS2dIMpMBSxZ+P/GbXOrui86tMihrkyZxE613wHbJvHFN/QkDLKXVH8k/qIkIrvMB/jqc0EnLfrm8tSitna0h80PprqrJ/IrUfEpoacRI5XN63g1YqipHI72evC5hgBUIYi/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q5RniLRR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q5RniLRR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E38CC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742977793;
	bh=VGAtWjxSH1mrpbImPMzXWNBvKJ9bjkm+1z8NQDd6J8U=;
	h=To:Subject:From:Date:From;
	b=Q5RniLRRAQ+ZNTf4Dq6ZBxbu6AyfxniUvKrJNPfWrsh2JFWCakAKnvBio/TazOJGt
	 Q0IZIFcbUyAjnnI6yrCfTsfyXIvLd417RkTaib+FcYnppJGtyaXmSQLySRuihVP0XJ
	 TNP0CIK7ec5X6rjliu88hWcxmaE8/Z1DBtG8AUM8jDsm7iu+PnW0i4K2knbrBtR94F
	 5G/RtaCHK0Pe4D+Pp38CTo2zggHHOdjCdFMvxfRmr1qmFlm1LguOZ0NXl0t4AOU8+V
	 NGR0dOVqJE0KcYNIHCtIYYnAJtuap7kS1HQchb5hV1Oi7q/PC+u4DNr+I7A1T5VB50
	 YJSTMfiBrzbMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECE4C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174297779357.27076.15532594159601016372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a456296b9af026fcf1bd0350a97c7d491850fa6cf4266d8ed0e355e225b10e11
Date: Wed, 26 Mar 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742977793
