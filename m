Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2130B152E02
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749404995; cv=none; b=fwVvO8Zvs62driNTCIeHZZ9CVMUFlzRCpS7w6mHB6kJcYmxKEDu3QUj7lmDQ+G0B0fskevSkwV91NAVbo+MQ/ry1w+mvqhVs5wDmNBCiJennHsLccIlbRuhSiMyqnx5QIKfGL17/hKynRo0CKtyEbGDkIZRM0LjRD8mpWCKfo8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749404995; c=relaxed/simple;
	bh=Z5rhXRfh2D3FhnIwoEXhll1m7znrR/FspoJSXsyCVp0=;
	h=To:Subject:From:Message-Id:Date; b=T3cqEKS6Xxi+VJXrdmbm9NIKzOmSVS710FmJ4XqXKbNJsJCwG68qQjatF6IJEPUqsgskmBmE1IIYRfBBqjzrQVewO/OSp0Zk4Zl4yUWHaIywPLoAUTVilvjEmqwxfWTg5op5BHAabieBqQSSpx1mqb09pnZUCFxVReRBv2FperU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=puo2NPsL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="puo2NPsL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C7AC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749404993;
	bh=Z5rhXRfh2D3FhnIwoEXhll1m7znrR/FspoJSXsyCVp0=;
	h=To:Subject:From:Date:From;
	b=puo2NPsLxWj+mrQaNByK86YbpRZMDejqFZIkPBREwooZjBT+8dyqvYhnAgePH4sUi
	 CJ9Pv/Wb62CXmuLGJtZPgkMA2irzHcPb08wIHySZQxlTBUh2qskHXQstdKLMAmYxjY
	 yo+tSdc8ZIfJYdVElDdiiGM1gDn50WrSf2/5nHxS0C6yux9sAY0o5qzvRPVPCOAfOW
	 lxUMvJQAAxOyPctsczwPIFAi4Px55q/QzWtVw/bYlcnpfUVVQ+04/wjfsR08ZUVjeI
	 cYFKqA9NSFt1CR9wmhmoLWiBEsUDNTrGuwsXwiUiqm0xosfrTlLL55fxL1nLREbrCM
	 m/ZvDms98Rr3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9151DC5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174940499357.3777.15503412213114103204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5165c7f4d4c081f6b9293d5311812a81b4801476eb3c732f806b98ad7e9601ef
Date: Sun, 08 Jun 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749404993
