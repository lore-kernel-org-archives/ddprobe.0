Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E5C145B29
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 09:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720172723; cv=none; b=Su7ldIkeeF9bs4ojILFT7nFb72vUlAVx58aIujj1HT8TY97Hzbf0Ut8iwwtMJCUxoovcfAYdmQ+bnPQW1oxuqWYr+bgEiEel3iN/4sF4grIMvbP4U+kajU9T9E5UwhvotLSj/WkFT2EWOmo0DMDE6pLtq35/7VQmGBSS/hN79PY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720172723; c=relaxed/simple;
	bh=vXRnMQaPmat4pFjBodVv0RXrWxzvkCInUqEL8SKTozk=;
	h=To:Subject:From:Message-Id:Date; b=d40U3xI73JZOPvV8iT36MALrozNhc/PFf3wcA0mtwAIQuiytfN7eXjpctGEOKX21GC369PvO0+DUsufVhLI5cHntynStiIC5o+g5mDFHTqrXQDSx6c76cYDkT4oAvzPlqvlK3+xB8Xywn7DfHyGd8eVOJwG0KE8zb0iGx63EDVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GC3NaCX5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GC3NaCX5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB9A4C4AF0B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 09:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720172722;
	bh=vXRnMQaPmat4pFjBodVv0RXrWxzvkCInUqEL8SKTozk=;
	h=To:Subject:From:Date:From;
	b=GC3NaCX5oVSaolEukXTNOESEY/4pKTxx9/49oDGlMb+fwhjHLouj4PYybte+CvTp+
	 0Bn6Rt9YvqoFqz637/CtSD+gHEhBgMyeYK3i3elXsisN0lpIdl1KTEFHdz64svZFbM
	 EWjG88fAgrZ1sjmj/FUFjM5OxbQe5HXDSftUz+z/iIIOl4argF2OXTJxSyIWFHMROl
	 Y0LbTtjzp5nWze66MC6BUs6GmxKL7lIgQjk1yAD6NzKt5N0r5jkiwYo4cICO/9XXjd
	 xh68SExAMJoBX9Yf4D/1cn98NCMJh+oGbLPuuWCxWKJsmWHbzTKp41yRtFSTybVpL7
	 S/zLQ+X+ML3dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3E70C3271F
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 09:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172017272278.17047.9551829588957096030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63930e123adab46fcff2c0e957be2cb84a8a65b339a8d46c5333f110711be442
Date: Fri, 05 Jul 2024 09:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720172722
