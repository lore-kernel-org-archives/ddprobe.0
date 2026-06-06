Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396EE24A07C
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 01:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780710874; cv=none; b=gpL69a6UbPKJJV87Ql/9pcBAgkLqVckZkEGkAPPHIOXpyRIRihY56o2Y1LZV1MZ59UjBVHlOoCs8ZT9XC+BaTA16ZF6MKBNoZ0+ahm4yUB7zTIxCb/PX8mC48XXx8ntJAoSpSJu5ydgJJl/Mu3nVxygs8L9Dlpy+cXnSvmPpnOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780710874; c=relaxed/simple;
	bh=SBebjXaG6Ps4++wQCgCjDB3oodaj2+M4e7MldPV73Nc=;
	h=To:Subject:From:Message-Id:Date; b=NvvltZ07aw7b7TWxIyA9Dqci9nt03KctlVglmmIXSoHRXJzrzvVEP/cxZDAm/sjUMFvPXNi5igFvOrisyJXbprCsWM7cqaPU+v0hk6EOIj7j4ti1+Ytl6dvRkWwEIivLarYRYkKIk4nuhfTw1xpCpT+5gWquHRyUFviku7hzmNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d9XpEFlD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d9XpEFlD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6A9FC2BCC6
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 01:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780710873;
	bh=SBebjXaG6Ps4++wQCgCjDB3oodaj2+M4e7MldPV73Nc=;
	h=To:Subject:From:Date:From;
	b=d9XpEFlDhFmT32hbim3AtgVo5T5owv0n79wxueIwqEcz7Pa5u9mBNbC9iWz9GtCSJ
	 VFgihnL5QXBNcsI/4Je3gBNEKAALdmaWJR9SwrwCnsMsiE51hyb8xxCThbtrg8vfOc
	 2uNV/3YEWeLp47f0QqBaADYbIKpLp3JWCJChN/ZpHKxyE9rTdMuTv3O5eS9XPn0fjC
	 p2+OnYDChjINEfLQTlknUSIa9vrEA4xBSuPXnKhOJZG70J7jTnkzHnbrWTMy7B+xSb
	 xB/YzBYo1eZxR/8OoKqWDo//Zk2DpJnULb64SaLUjiF1BEcroA9Y9oQEhsMO7oeJay
	 wgOuJz977K9rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE514CD8C88
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 01:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178071087369.11780.1389611691411794044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02e38ccd65f3bc20d165602d735a65b9e9a0dabfeaf705473f3246ba068cdd03
Date: Sat, 06 Jun 2026 01:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780710873
