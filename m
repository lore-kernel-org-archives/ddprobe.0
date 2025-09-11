Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F43C1A2387
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757592594; cv=none; b=uz7YqmPX3Rz1kq+XTusGD8KuAnElyfUcosdQ5J2Qj6OjGEwVbQ9GTf/V3KFiwfzcZ2bk4Qx3CWfhLDKwY1DGKxJ0/DtBRj0hq+RowtbMV2CfTxeJiwJOgcXWtP3VPRud9huJiuMAuWxYdRH5W0T9r6E4KdjkRfRw1+tTzCbbvHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757592594; c=relaxed/simple;
	bh=3gWVePgfALI76bowLzGeeTaLTkP2vLkxho73Its5C7w=;
	h=To:Subject:From:Message-Id:Date; b=MWNgG9aSmV43v4/E7mm/JxI+ebOi8RCdtgMqVEQt1GRKsafVXVVKAAj8bbwIPLUhNAdw8BNAWdV7pwR3Ojkdc+ndVPcZ3IeSYxYcCXA2Cg+/KxRNFWOOmhKS2RhkrnFnIgKpTYDV/CWZPa8MDFdukmGyOPZpwjQnjI1XRmWLUec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tJjsTmOi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJjsTmOi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03F2C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757592593;
	bh=3gWVePgfALI76bowLzGeeTaLTkP2vLkxho73Its5C7w=;
	h=To:Subject:From:Date:From;
	b=tJjsTmOiQ9UikWqUQtIL1Px6wVezpy2kRFFZE6n7OZ7pkUtDQfhXeV1fys+qoy8IK
	 e5CDyRlOQXVt3CSOxMLdoOaq8Yjhoj0oUkn8K/FUDBkjXb0ejAiTR2bio7L2MBs67N
	 H2UMZEEnbXv+cCRPv/ehIISAONCK8a76vJA1BiD9Xh4prZC/FHLMbX/mPm+n2cy9uU
	 tQhbySU0RvSQ51hoz4URiqcUjEjBqIV0N7kJpS1Fw5o5W6kdGIkv+VlJY89wtbuw1S
	 QDUfjiX5lBbFSrK3ga3bysGtPRCAIr8zsrzGxc0x4NMUyPDDwAxEdS0DXwhSXRDG4f
	 aVjxAA+r0tOBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED38CAC58D
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175759259357.10111.8787058705968075520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e0332632c9ee6e49f96246a007555ef43439c967e4ca10ee1f219039ce3a409
Date: Thu, 11 Sep 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757592593
