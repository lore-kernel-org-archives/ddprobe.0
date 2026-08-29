Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F45141A785
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788047434; cv=none; b=LtDfMnzagm+i+HugVOvcfazPWmtx71mimn2Nv4hs7vQF8/WsNOeGYC0U+1/5ieDixFNAZnGmkZXz4HohtjeGeHDYssZ2ojamK3hgWoym7qZY2wyel5tu3aNsImRKMpqpM1ltDZWDSM/Pr3NDbju7qqnHqsi+snbF6QXU7JeoTKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788047434; c=relaxed/simple;
	bh=A4JMSmR/NE+6HjUolJua8RTR/qHP0NQkhcSYWsmG+UU=;
	h=To:Subject:From:Message-Id:Date; b=mTNeSrswXsDwGKjjnyrGeoSq5qLobjPUV507YXKNw2D44WoaEIDkCYWcTA8AGqWL7Iuxq3RmnTNsY3oSVDt83Vti2mYv0Say/Lu4S6dBdoD+z0Q6G/yf14kthuOpvXZA3yLjy7NCt2vxAIA9zs+E85OQH/sAZzX54xipnq3/u4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D4/MshkP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D4/MshkP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D338FC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788047433;
	bh=A4JMSmR/NE+6HjUolJua8RTR/qHP0NQkhcSYWsmG+UU=;
	h=To:Subject:From:Date:From;
	b=D4/MshkP3YzcP51x5vNrjj/Dlq0M42Xu7q9GMOUYQSwVcRNY+NJejN7mtdyY4z5ZU
	 L0LbebIvZqBrGyEud1GtJSeTRteKEaRSuDtUlWcpC29TTKn1f5YvmWoG/k8P9c+Ip7
	 a5E2LkBcE6atuIciiwi8yCqcunxFv1Utr6ISwFaMHIVBAh6UbhVxiOCWCHb/liX5KC
	 jD59AUu1cCKq6Fx1x1CGaWfaHhmFXpogcp9GGZYfuSSJYMKCPvbX1WbL0j8orA+Pxu
	 OAV1Tw4zbx8echwMCL/xFcxMvLShJ0uOJLZgRAwDSUzcEDkBa05lsnAdMe5E6155hM
	 AyJwIqt1Qqr6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B055DC61DD6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178804743368.1711.16505640034920244273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5618e8aff572b3fed18d9b67b12dcb606766e404ee58d2790895f5388b936644
Date: Sat, 29 Aug 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788047433
