Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A77615539A
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 20:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713816623; cv=none; b=E3M91tGezkTu4QKDzJquDZu1RtGhhNU4S+42n1sfMp07CdK+YbiD+a4+g4yiSM1zAErUqxVdsvJ/TicTuoXuvruMSOfYigmDtItNUyZUYRWojuGZxJgTiHVZ7q/9D/T5U6YwOyxNNFMA3ud6lfVugSm1CeYEOxPkBbqfF5qOC9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713816623; c=relaxed/simple;
	bh=e6SlWQx2KFy72392QuYP52Zj8lpqDt1w9JpuKnl2dSk=;
	h=To:Subject:From:Message-Id:Date; b=NiLaRqa2H7Tz7DNC/zsZsvycAxVzjB9MWuPAsv8qWxW5DnDNCHpT5IgIk/pp2W0y0zzgxkQazMfuu+Gi3Ha18EAEOPrzdLU5RkXEJwsIAp5JYl7dG9n6MLhOCP2M4g8Ipr9aXJkFkZr94AiLlAdMbKYxcs4bycx7y6BfeXlmyWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X3GhN6f+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X3GhN6f+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE95C113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 20:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713816622;
	bh=e6SlWQx2KFy72392QuYP52Zj8lpqDt1w9JpuKnl2dSk=;
	h=To:Subject:From:Date:From;
	b=X3GhN6f+/sGlI0+fwgXZHIJgyoGd1wXIfAWMbtKaeQTAClM297F/ywheMWD1t866F
	 QyAnL/l/rmVgFs9urOt9iMSBGrfW8cIMArjxQb0O5Qe9XiZzXWjo8z7Df1EBzWib9E
	 oNs6NulrY2NZwD3l3Dy8eS40Mq/hwdlYDJJfCNYxbAJdmdqIebSsIHRidcghcRe1t5
	 1+Ut7e4H6h6E67DgJn4nvJjy/yaOGYEuIveTJfd+73IcXKAVLhaS7OKGUh/S1Kmx7L
	 SqcIG/siBd5qBX+pDL3cxC/h56ula/cX2PYq6L6JnZExksL2OuFypgDx7CHl/cK8yy
	 3U5iO6Q58HIyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9CA0C4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 20:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171381662278.1334.9778087607854945524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e65e5e2401de9404cd5e2b61d677189c6f5885460b657da56bae2f57df2d072
Date: Mon, 22 Apr 2024 20:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713816622
