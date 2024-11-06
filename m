Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B37A1FF5F1
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730900754; cv=none; b=tQ3jT2vbJYc+98mFTXWo96nzjou0c3l+TBeVSxkGux21tLxw+l7ah7+DB7oTzxCHlWcIxrH4h/V7PotNKuibrs88pEKSrJkv3W0L4ydZ+3XTJzFInbVeeg2px3Ttx+nej+G2BPCu/K3Kp+Hla1xWrlClwQDlXTmtQGKdkb2NAWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730900754; c=relaxed/simple;
	bh=Q5WWkbTgksj2Ct3nd/ZQjJzgdXNVj99igoAiVB3gpNc=;
	h=To:Subject:From:Message-Id:Date; b=gknpnPMFtD3u8LN4lx+hACAaQeCdWiHyxcYa6qCt4Bo2pkt59iPvPqTqzjFWPTWGMvZli/jjMr3T5pef2nqu+wZbR45x8r3I3lwWOnrt5UXuAYW5EUer0PXPpGoDhxS82xFJ0TmFza2n1skO3jUrooiBv/urcZ0IteK/4LqUr3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BfAEj7Ws; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BfAEj7Ws"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CA7C4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730900753;
	bh=Q5WWkbTgksj2Ct3nd/ZQjJzgdXNVj99igoAiVB3gpNc=;
	h=To:Subject:From:Date:From;
	b=BfAEj7WsrYRUfm6eWOTDoXZOBck9IyFfxuOhge5K7Lk9yYyyPZDTq+CWfO4El+6S8
	 zsOI7HFijgq04WEgWEcvyFheK/Ed+2PlS7mK8eTPZMPKQadIxrW98LKUQhkMTDaXVW
	 xX2RjE2l9IClIEfpFnUYgu62O2emivFGGN1XTHS6JTpZRfz1AfnweVAfkKG+8/FVA+
	 4/8TYr2v+fvaPSJemgXwUCtoOo3is2qRyLDR2wcv7SFIUH6NawqOBjcrk4joenBYU6
	 ybT4uuYiu8S23HJy7R97+JqpIYVZB+ve2L7S0cdIpD+XUEk6X9uQmxAUoBKiTQ7lR/
	 1V/fKgn+KiUlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5BFD44D5C
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173090075357.4216.14416548181249064033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b3b7dde607b44711282ec9e4c52d74f42f498c1030a11eb89099d71dd236316
Date: Wed, 06 Nov 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730900753
