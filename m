Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0A841760
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745012394; cv=none; b=MeOQ1Vdp/3Qc3fPc6lVlyY0PHtWSIJzLUUHXbI4gyJUw79ehzk65bOS+NHc1poowRKgO5wVGwZmKaUXsnfgLmMYM4mKLRlZN4T39tNHyarFzSsntDCB6xyF8sIsEU1HqM589LEfuIn6AQwpA5Qd8C52FByGEgTHBaFsyQJQCiSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745012394; c=relaxed/simple;
	bh=Peh+BYkTUMepj8dRowCdPiT+MIoCm+1DyYE9xkZbwa8=;
	h=To:Subject:From:Message-Id:Date; b=WC2jbUy3ce0G5mrr7BEnVrGqXMz/38I4qWyRC8at0iU8q/bTiXvO/PXUWqSD8uvT+uSlh4b9v8Ng7hgiINaoB/2Al3Mu9Nmoz1IIGr1F1T20bdx1wHX3iSQPGdsedSSw73ib6pCufnpy2ZNfksHP0mPH9LKo5F8YDjGX0N1/ab4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NvE+0jt/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NvE+0jt/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3395C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745012393;
	bh=Peh+BYkTUMepj8dRowCdPiT+MIoCm+1DyYE9xkZbwa8=;
	h=To:Subject:From:Date:From;
	b=NvE+0jt/Bcu1NzU6Z5NOarqNpTzI2fLxpYL3ZKe+3euqLi19LxWkVpBg51LH3jqAD
	 cOXRYubIVPcEZjJknete3u7V4jjWntG8ec6qHal0jCcsESDkT14oLH4lYyXs3vfc4/
	 hc37I0RurJVWoQ0C1B8/fAGW2CY5/lgTBYMvH4ZG/Jxb1xpB2wafqY1Y9C5O1VfHkB
	 BDSoOwOxRcbHeEie3shOFuAwvvzelIcxBT8pk8ucqQvG/QCY6JhsFKJNOVpR6Qca6q
	 9Fql3O6HKHhMVQtU1m5FqscTZNblfIwMyUqqMasbkaDFTAHJIDjdR1Vw7KAniQyRHL
	 J1lTI/SMiBXQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FE4C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174501239359.16114.1681149429142842420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1a0b8dec59edff042c8ab5e5712f3b2cbd0b7d4a1adbca104aa501e8c76f20b
Date: Fri, 18 Apr 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745012393
