Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A362D73B8
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 10:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782125194; cv=none; b=SjSe5XmlOwyt1x4bW92QFZ56dr46trVU3Ta8meZUwjpbnynkDFxQdnBK7Qqc+f+YIOK7HzUuNsAbq9Vfn8TmAvnCYya9hxg7kGCXWJCCesQM4vMAzD7DJ6VNrRPQtBJU6OCoDCKw4hsvJJTGzaFn8ApTeHEtLbypA8zuupV8Vcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782125194; c=relaxed/simple;
	bh=3waW+wdpE4gnI48uYQqZeRV5eYI/YbvUfO5ztVBvrJM=;
	h=To:Subject:From:Message-Id:Date; b=aQhb4xaC0Z9S6UmRGOwRVzJ3D58mqLFZT0bi821UBTP5ELNDcb8EroY0t9MKA5xqR13ZbpLpYsJuoDinUvTsD7vakB/vYjufcJF8SEesmY+iQcJ/S6hzviIyKEdcXmMcSU7mmEmlpcftajY+zZdEzfLtSmPwRH9DFggRNM7NPUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oasV3fpu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oasV3fpu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 26AD4C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 10:46:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782125194;
	bh=3waW+wdpE4gnI48uYQqZeRV5eYI/YbvUfO5ztVBvrJM=;
	h=To:Subject:From:Date:From;
	b=oasV3fpuPx5l7E3okvJgfZzR1l0pI03XCZh0mq6mWRNLaoQNQ2PNVZXtsDecPwbXv
	 Zzdsm5ZcC2Ht1OA8sWaCicYK9dchWyfHWfQykJmcin+kUdoUk4WRMYWtz9itWRiwEU
	 U4A8OZSM+QBxcHrv//0EVv8dTxEgOvXNZOGDjr6BDc0a10u9AZBGfwk6fL4xEoYjIU
	 WbpTPtZoP1ZR83pcrrp6lc3nVb0yNLsQ31pZnmtTV9tRiFVE9X5j+AVS1NN7DD2nCu
	 YGfvxVSjupPQFSq4AFd8Qat8sLeni4jfzocokszZYGDwTiHJlN6AQEDMhSQX4rbZl0
	 wbUwR6Rz/pCdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D72E6CDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 10:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178212519384.14587.16834751639202521904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4acfb1e55d33a1167993062f9ace3d1f5974aeee010029410245f9fadccad4b5
Date: Mon, 22 Jun 2026 10:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782125193
