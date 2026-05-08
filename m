Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3674C2ECE93
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 03:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778210254; cv=none; b=leFusG82cSvCd4qHI/IKzkqDFn2xAeD9P9piPttZu6zk3/rJOAvB+mgAn/cqz1GTBQMvsYlfrprgaF5c2A3Uuc0jlz/fem3ai/g7G2cYFhaA8nLhn9CqXeEXk8vGs+nDzK1SlKEcoK+mvjEGEf0l7gpFB075HOEiXENEa5lr3eI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778210254; c=relaxed/simple;
	bh=9qcCFpuuP2mWpl3GhrjNpjhlyYIcH1tdfmBQ4nTrmhE=;
	h=To:Subject:From:Message-Id:Date; b=iXbML++m2vcKtVo7sHlmMm/dmBscfPM87ImP+/l1iapsUI7IoQJRTltae8t81SRQBDHrzj6qyydCl9GL3lfO/io6JCSr0I7LEcJVMOCbGYLAsaQcdXk5IIMi22TdyZ7JiBAaH/jJE0s2nK5yY32H1sosuUX5KK3Df5lK02pcVhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i1gGl1/7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i1gGl1/7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1619C2BCC9
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 03:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778210253;
	bh=9qcCFpuuP2mWpl3GhrjNpjhlyYIcH1tdfmBQ4nTrmhE=;
	h=To:Subject:From:Date:From;
	b=i1gGl1/7uUUIpjUBqSgzNxKlEhQXyYV0ma7JSWs4ogYq4dZAACdz8bHffuFMOHRkX
	 GHv3MEPOly/KwYTS2Bv44z3dy63weVzkIHVI47oGCFHwOkzAOLk51wm7jiF9rCeiSY
	 G/674ix5j6/ROcKgTHsI+kLjvNBhP4WpIOOFHbcof8wiH/pmqvb1irRPqwk1qqgPoH
	 R1YcCvdzBknAhmQ++DQ9O07EKi1nRdRPgE/vknA+1uFo9XwrFudrf6ed+kY19cJ3sa
	 VQk9Xl2pgqtZj0XlGRPdByev7SbUR0+UhcMLQIqhwnkNQtImUs+8bvwU6M34ShbBSg
	 vVB6+z37PwHCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD85ECD3436
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 03:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177821025370.2456.10773514385401964275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d6e37520a9f116e70dca2b7a323adeab6fb3d4f7a8f647889a292d56acfb9bc
Date: Fri, 08 May 2026 03:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778210253
