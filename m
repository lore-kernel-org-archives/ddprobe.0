Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D3C126BFF
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745235594; cv=none; b=Kw35W9MMP3bTtFmE2Bp9GRjKu/A5/JfgYQeY1SXzZ33k+xXw8j5ySAoO2epoICYIKA1kkWBw1trL5hihw4tXmyOln0GaQ7+CjksUWgi2rt4vMe9OiwU4brJdsvfifejFPSRd5mySeJcAEy+7NY3My+gNLbtO7ZEfd92eQlvT+Ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745235594; c=relaxed/simple;
	bh=n50v2Ui3sGad3wK/JJ/WS7Xoz2XyY/VC2onXomt9QpM=;
	h=To:Subject:From:Message-Id:Date; b=dPPTJOxqpJxKhrZKmws90lFwefmiHNLw5r1zdVVztko5iIMjdWiKY7Lh1P2BgseNErmeCQvpgIBoj1+Ly2fUHx5U0fL6xx1Pa9U8V+3XqeCsM7TNEUZPRCPaVws4G9CMqAGdAq3Y6nn/NFRfEa+QmJc1dnv8PeNgjbfFIGRbxNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KbHAcdAv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KbHAcdAv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B407EC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745235593;
	bh=n50v2Ui3sGad3wK/JJ/WS7Xoz2XyY/VC2onXomt9QpM=;
	h=To:Subject:From:Date:From;
	b=KbHAcdAvCXX9FzDUMhQTrFuvLHm+Vodu0SkzLVk94TttDdnGXyTSxeUfYM+chCecW
	 Xzv2wK0ZMSafJjo0/oA/Xxa7qachiQmJG1vtKyjfIxouzFxBU9UAT/dGLM+Wt6p2XN
	 iU3kR3O5JQIasjN0Iqm1Lc0DjxtY7ffKmSd1Dif+NaPpi9TcO8LV43L7qGR4vJ2rMy
	 g+5M4yk62UB/vl1soEtYzBp8fU8rTRJgVaiW4Mjqqv/B9F2UwAQvHQrOc5/wxuDyqW
	 HYjRuSTL+TNQI59HfMyARDQjG9jN4FiNAUWoCUfnk+w0AIsSnKFOivVf4FYIgRbktZ
	 teZsF+i4sEpEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A00BCC369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174523559360.25976.13905661502308317386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c43261f99d74de5caa95dc79f9994af5a874176dad6e6cf873ade91b2807f65b
Date: Mon, 21 Apr 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745235593
