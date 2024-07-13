Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9644503A
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 22:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720909223; cv=none; b=KKZ3LIcmgWXHMmpHwosnljPTakZj25+YWtUsAXLHFZ+xHd9cFE2ii+0QBoxaTN+0xkD9Qrm/wwbeYJrQHU1x+3OHwiVgPcIRAS6TnRDtUGiTKeXiuy0ssVsT/HRaG+nKCCTarGusi63d82b5LJOBBGjOsRP9sewvx4kFvjsLQb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720909223; c=relaxed/simple;
	bh=Pk16jD5A08ZcfDixLIzW7MItc0+vJhR3DspRgyPSL2Y=;
	h=To:Subject:From:Message-Id:Date; b=JfW2EcwAZTxdljgBzK6aNZmjpcSZEACQKZCnFG4quvItWXyBtL2XJoZjjBVD6/hSZTRl6a9zEFiHcjQKuBAQmomKRfN9qjb7r+yYJ4HWj9vlMSN+BgZR1Xqjn2ydycfKBtAoJZuxbm9ZUGLBADuxpn6gvcAE0pF4RvryXsqLNRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDF3yxvR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDF3yxvR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDB39C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 22:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720909222;
	bh=Pk16jD5A08ZcfDixLIzW7MItc0+vJhR3DspRgyPSL2Y=;
	h=To:Subject:From:Date:From;
	b=bDF3yxvR4QIlc+iqD7Kck44ES31VKABy4TeCgtrazhrumxO2yFRr5VMAZBH8tFSk3
	 q0426Fx0jK+n7dboc6GLDoRsKiUK3DTolmbKIHMr2IM/I42Lphry4PXWQmqub5pj/p
	 2K+EetE/i8PgH0yDl3MT7IbfhbrphOeexa3mEP9gMo3nISr/4LpEcyXFHotQQmvb1X
	 muxrme3j7Thw/gbq5C3TdPls/oxw+Fm4k2qqECglBECtFDPuHPP/cljxJ/fhPP8XkC
	 75ome5LWICngsQVN/nmnYpU48mV9psFKuBWa5MvADK++PMy8/BII6ZSKszy8ojQvpl
	 SEZ5nTJe0/xmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6A04C3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 22:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172090922278.17154.5728394259059535927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9d63594679b00e3724b41b22f6609a992b6baf7eec24b88fd4887baed4e499b
Date: Sat, 13 Jul 2024 22:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720909222
