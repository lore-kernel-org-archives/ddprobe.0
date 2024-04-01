Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF9C9A59
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711936697; cv=none; b=AobWQnCDPVpbBhEH1KAZIdlO5Wj8Db3ifDitR4KFeh0pS7EwHw/gZGaNgumzmm0dOWM0WYoKq0O8CNKsG0s9gIe5X6IP9T0bBO9gVBJE2h+Fz64RJtNaxQAm0QG8tWW2b8KXmSKVxeCM9ezCsRCqpCe5KYeMr8qDVevBLL/ptMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711936697; c=relaxed/simple;
	bh=IypH6JlS3Kh4TBUleEQkI4dXvefPPTLxdpyeyd0QuNA=;
	h=To:Subject:From:Message-Id:Date; b=OoBVBOMmS+RfmxXCmetfJdg7EJ7/K/b2MKbWQEqJngRWdmceQRIx6+Qb46px3zk4ak9OdmHDK66aaVcbugDoDZW8v45tLGtydYFDlwTe4yyKfCiVk/8F1ANXZeDTkyM/swI0yy0TiD9w85PjXF6ZFRLKDnQ70aaMBTJPiZJUNQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O1z7zXDS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O1z7zXDS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76EFFC433F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711936696;
	bh=IypH6JlS3Kh4TBUleEQkI4dXvefPPTLxdpyeyd0QuNA=;
	h=To:Subject:From:Date:From;
	b=O1z7zXDSTnqEuiiLES+snr7uQyMPolNQSaZrePLrkg+vjcDC/X8VYYBJ7ROX+JWca
	 xb451DbQmuT9bmZeyQvy5HkqBYxCjoPY+UICham8BoEeExcuDDFM+K2DmtiSD+hF6H
	 /sH62HL7OtcC9MoZEE5sQBFUk7eE+vttFOTX11m0z+yeKN239qBgJSavmg+C31B0Bc
	 C/KFH2VLwJntzZFItDcqIt8Z5nLJI7JvGugJuIwl5yRJ3MuLdaZb783W2IamNC8qIU
	 1TKeMpPJmmUr3Tg9biCixlzKXgKqpbNqRGZ+Uepb6U593FYef6bwsC+YNvxSvs8V6/
	 kbaXU3Qdut/XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63675CD1284
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171193669638.5623.7677147150525465633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e97fc94cfa62c51d7322a5c2878b93d42b4f25aae08cbe002ea64ebfd6bf74a5
Date: Mon, 01 Apr 2024 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711936696
