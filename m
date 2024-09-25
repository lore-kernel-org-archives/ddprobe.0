Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1A215696E
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727256354; cv=none; b=B0vm3pPhiQ+z83gA3spY1l9JBlku0WGvVtPXCeXLiq4UOBjjmLhmERZWa8wCEcuFz61M4xRmavygVE3+pvERD9p5gwwUv4zf0WqtalC19vkZgquEziZeyf+Rn4z4ejTVDm86q9Qk8nGA7G0+SIKLy0BwWO1tSPEL53HZ2V40fH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727256354; c=relaxed/simple;
	bh=gBU2TcxGeRrYHI7//Lkq2TXCiNbJ9AUIOjmi7d+/hpU=;
	h=To:Subject:From:Message-Id:Date; b=PQt3b2Aw5mq0Zcq1yWYSBUIY/nC9jI/hYwRGmoyWkig03RkAB6HYQGFb5XbAn/5KQFUxjFqeDp6uQYTzdGLGwmAeeqwFcevrYqFUiZQFV4HJQ/QyQbOWgIUL2DJP8vm24W02p6KdLryJRrLUOsNtkXQPvUrpPP4QFqee3oAxwxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODc0Tlm1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODc0Tlm1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD73C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727256353;
	bh=gBU2TcxGeRrYHI7//Lkq2TXCiNbJ9AUIOjmi7d+/hpU=;
	h=To:Subject:From:Date:From;
	b=ODc0Tlm1aza5YW2MxjSUmGSMQ2yPahUKKx+/gcKjWpnpRYEY3lp23yrfb0cEoJ0Tq
	 p75834VmAAslULkpdU78ItskUtxPjDLcyO2BCAuIz8/b/J7zhstskd1vNvEZ9l2Ddu
	 voajKxvUNAtUxOwpjHPr32cwwSvEV10fM7g5gwXccie8W9s5IY9unCoi7nHrUehjr5
	 rMkncrNUzKn49M1vl+CNE0OHGLdWVrs/Wl/uQaqsbXRozG3xag/8YaM+PwqWgpYQmG
	 2DZy3W2rATzKYMsYAaVQIonL8YcEsdrAuUiBdZEpVIlTFv5NFOO3m7eE3c9/OLlDGF
	 Nsfe5kS9UBJag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8145C369B1
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172725635366.10912.6885207464297252114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f326f49d131a44993475a8e416e86a4652ea0f8647f6850f31117d5762bc002
Date: Wed, 25 Sep 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727256353
