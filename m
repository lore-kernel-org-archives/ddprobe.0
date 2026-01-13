Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAD143557E0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768301633; cv=none; b=qJhsPvXF7jpDa/kNy7QKOe3cgDALoj6dMoHuHq0MLxNEeC+XCOocgRvaxZHnIofdSAsn91/ZulgzIwA8RD4SsrSKyM9t2osFIF1kMVl1b0iuyVM/RWZxCLyQzsvzZo7Lb0CrBlpmhHQID+rW6fo+T2y8mXVni1F5cST+3nbZHzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768301633; c=relaxed/simple;
	bh=7b8v6mNjtQ5P7mm5QiH4TLZmqd72K0PrhKLy0PXv20I=;
	h=To:Subject:From:Message-Id:Date; b=kzeG1TvyOsfqimEmC7YGNEQO4DfvDrPISdwCgn/oI62TugKlKBFLv3BKC1r/U1/6R4MUmSGy6KWczBsYzmpOFYDH7f139k9oSG0NMRfd4z2GlH2YJym9UwRsYSOjk9NdWSIzFItZDWgZE+383Y2hAeB1l2C8rdcVnJc6nv7nakQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JNXyLqCY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JNXyLqCY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E126C2BC86
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768301633;
	bh=7b8v6mNjtQ5P7mm5QiH4TLZmqd72K0PrhKLy0PXv20I=;
	h=To:Subject:From:Date:From;
	b=JNXyLqCYy5KUnK8XSCwFvdgCdpFi+qOEwTOALK3VKvZRvMole1Js+UDaf8whN2X+N
	 rIG+BEFF+9JYWd6fOqXwqRBBoZrC402vAOTYz5tbVceLYDde7KHdHAjkK0CEm87I+E
	 zoh//caCqZ6kznFWloaGHkNJhEPboJfoEWSq1zXldOjAfXdXdocIibXLSFm4ilcNfi
	 2qslEtDSqioMLgJw23dot3z6DKDTJINjoUsVjoHsXZGVFUw+KLNgwto8oNC4wwN+HZ
	 n3q/pos5Np5KbvZa9UYBMZU+3Ip5Z3dv2eQMW5NBem4x4CDaxbU8gkaZOqhRkd93Fk
	 rXv4TnZfnQSQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB73D0C84D
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176830163358.3928.4650620581688553066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae17bcddbb5f66b5534d0b1c898b25c6b0ad85c1555c1ce75a7d4399264d4ca4
Date: Tue, 13 Jan 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768301633
