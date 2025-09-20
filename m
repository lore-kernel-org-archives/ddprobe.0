Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8A823FC4C
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758361194; cv=none; b=XaWA6VZb7ewgoP5AuziITEsL7Cu2qFaGdn8gzUr/Fdqa8eFguP7HrX6t0KvvpxVRo92EsG1zPuuVqNLHd7Wg1K/WzS5Bu6OAhji3U0qenkM5XWyTeZs+aWo2BEX1LZxPYyGvJlTbtkb6eku0cjta9hGDWKQBhWR7i/gqx8Wn1Ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758361194; c=relaxed/simple;
	bh=jYK+EGJvuNcJRP0AkegdkQe2qT8KYH18xZd1wMroCks=;
	h=To:Subject:From:Message-Id:Date; b=Bkp1Mtmp/CHcVE1//Nz8mS8KYRCs97byyGP99XIQ53Hldc+v9sdNbk+TbzvUgdpHUup72unuOz+8VJ0M2TjsbMYAUrCMVn16UEaAo83u1skkApm1qtLZe4DY5hcXdQ4ZwBY8Nn8q7vA/KdWoGRExTsB5/w3+TWusfgUjrYnnLoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SeA/H1V6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SeA/H1V6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE05C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758361193;
	bh=jYK+EGJvuNcJRP0AkegdkQe2qT8KYH18xZd1wMroCks=;
	h=To:Subject:From:Date:From;
	b=SeA/H1V6+1j3VW9ZAEJ94kBDOaed9it83nFKKiaHEDBaBvz4O0mslhTBBMKHiw7bT
	 R+vxFldWYkofav1cilkcQwPJdp2XYJGALSP96GyxSdSjWdubLy/6WBFuxmPnvzoMOe
	 S21bN4cOmiSLRHBg/7iFvIOy00Az3VhQ0R9Ii2Y3AhGkULvnsYfC1BxlhbAv7xE21i
	 7r180YkctIJHM7aQsZMFX9LFw2TxGFDgN6byoRXI0YKCafM5XGEoB6u5UJzlIbX3hO
	 BZaP0iZia03yMSvLrp4YPzBHTsNO0gheWBSaaGyRfLZfqkqGo4SJUZ0AxJ1C/U7B+N
	 1tFKf0AN58RxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9805FCAC597
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175836119359.21640.15653222345456947795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9be4aa05f2af645f386416e066c6ad31defae4fa746cd6c004efe328381fb276
Date: Sat, 20 Sep 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758361193
