Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 028082BEFF6
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768673634; cv=none; b=eS+infeoRM7CN0F9HpYqi2U5WcLCh0tXbtBpJVU/waLPYj+UXC4SuLAbBdViIBmMeGd/zELzlFfIK25xAxVhW9xq1RPVOD/gn485nEnz9JGECXrLmpiqQ/O0o0ywIukS6brKB3AhSjRcmVBWzuUIPIke2+pdLhP7bR9vGX2ysP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768673634; c=relaxed/simple;
	bh=OVMWAofMPfA8QNGAfQTdv8TojYaw4P7BbBuubaphO/A=;
	h=To:Subject:From:Message-Id:Date; b=bTjUjj5cfdxne9zk3Bi1R5w4huJOw/TRO1ARG0+f/MCxZG4S7bTF65xxj02tCk462IqtLaHk13ePb6gMPmEEv/KqZogFtPoErCQFtLaxyWPnxR8JS4roaV2Ams+hSA7SQKa9bqwMscAiF0pMT2iVyuC1OJL6bc7JyiLs0dbaIe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJRP8dnE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJRP8dnE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A06C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768673633;
	bh=OVMWAofMPfA8QNGAfQTdv8TojYaw4P7BbBuubaphO/A=;
	h=To:Subject:From:Date:From;
	b=TJRP8dnEw6odR+BGIZRmKjwkol+eDRH6rVhu5jZGltPsMyg1dLxX3eo7nQDtSv0Dl
	 G0zz5qRtMDVnObh5s0XLZ5A8Du/jUAccAMCBKqgVub94AreoruoREeQQUMCNFUb3wi
	 Db1Q/v3gk8B5PqY2Wq4q+XSis9wpIMf/jFxjb5xRb7cepDviX/ThbjjNjw56lACrFu
	 qd2NUmoJqavCWvQxxqdqM0ZgjyBt+Hx4rR1wM5d44C9pMeNUcyu3Fqy/VPqsHaDJ+U
	 1eK3PUIUy8GSv+9NExjlEomH6KiihqU3bbkEjxMA8OE4vbQI9f8/oCMIOy3msih4Bd
	 sA175RKiNdoGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F9FD4A5F5
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176867363357.10705.7661999081680373830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dcb7941e78fd33884494c08c8d582a5ad68a43b067620ddab4d1c22883035df
Date: Sat, 17 Jan 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768673633
