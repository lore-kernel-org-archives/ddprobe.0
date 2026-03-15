Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 106775B5AB
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773543294; cv=none; b=kh+gs9tvBfeFdtx3odqCPmnJhOPqsATc2N5tWK3zC6QIVM9V/buUfRbfmouF7iGGBml3ksO+oOgNfDjbOje0KXFBNAeACKd6kfhzf2SUvSZVHvXPmtM76frJojnjY1WULpRwKnYfSvGS1BZxJ3nw3xUVhYcgiEOH9t9bGAe2Mqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773543294; c=relaxed/simple;
	bh=YUVhyT3GdR7/AnuXSEUs8Qqc2Y1m+GCbGaGdXQx0ly0=;
	h=To:Subject:From:Message-Id:Date; b=rLs63+6GxnkNAsctZAw0ttgWPX6rFZ98jmTtUFBM9Qa4EjLgJ/S1uOancojfpA3NUup9TboV3DnBaqFAtJ6wS+OvZWWTcHvth6EhKcn+x5533Fmmptx4rThEDKBb4K9q0n5jXNpP1sRty/xL96kLOfNy+CAkZyE7B62euddVMIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WDM0WpQt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WDM0WpQt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8850C116C6
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773543293;
	bh=YUVhyT3GdR7/AnuXSEUs8Qqc2Y1m+GCbGaGdXQx0ly0=;
	h=To:Subject:From:Date:From;
	b=WDM0WpQtRot6zFCqAO/ut1fqgEaSJYhKxYwZgeHECzSL6qRge6K1txGGLlhTfdD24
	 OSd0mkuCmQzm46EJ9hariqxxPy/+jiPhLMMOqY7TyklWowucpOWVD4u4n15a2DJQhF
	 PbWZYj5H22PmvZ/rB2zwcm1iF0Ru4ivFXomcXYoHtP2HeMPLZhnLEnhLiImrTsHhyd
	 I/71c77uD4ZxH5kW1IKAaoxpmEUiuy3iCr+8DCdu/Mty5uZoveg6xtDlgQ9m6CCC+P
	 7ZLCfrV4mlNryei92X59v0d8UK7jpcWeq18Sb5lBnPLf3PS0HTFyiGl4/q0tx0BCyU
	 LHOQXwy3qSUng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969D310854AA
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177354329358.31985.14235665625734810714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 535ed21abd6c08d340c2c9d4aafc0e247f7145ec07f9bdaf501de436c9a362d7
Date: Sun, 15 Mar 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773543293
