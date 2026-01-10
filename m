Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 064C2221721
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768060434; cv=none; b=JEyPMz1iYgiAlbi7jP8QGH1oW46awCbDiYHXuxcrp6gynNC7O+/tSqUjELEkQ939DleI43QiJ9FhAsi0+k7FwH+x0rvWgEEqF2Aa304R2o13/V4+yoiIBQWbJZSJbGwBZK2ft/O8q7JjBvl1GtECqfrXEFkHdwnBhutaKdlOO/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768060434; c=relaxed/simple;
	bh=b3JmPx1RrARCNSQlZBbS/ZiqVASy28idM5WgrrgCV7k=;
	h=To:Subject:From:Message-Id:Date; b=erKDiYG9NP8g61sdvF9MtHZT2534iDXSy0TQSM3+FHyjF4QfUgM0jFKLpXIMoreVCuZ5oIaS3btlC3azpnP87U057bCXKErkNoN77ZYmUYyi395yTYawl0Zwv6r1UobBi4vlcYXqcmCgcXM/zQJIyNfso9bPeXysrYDPL/YrBgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ly0EbhnU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ly0EbhnU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF79C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768060433;
	bh=b3JmPx1RrARCNSQlZBbS/ZiqVASy28idM5WgrrgCV7k=;
	h=To:Subject:From:Date:From;
	b=ly0EbhnUefloDe4kSLdwikWokDjloY/vksWWv24c97Kn6iR+ZCLH9xFoavk0T9hP/
	 i6U46TivXVkYxh5JGvBTM1WsrflA8ydJA40AbWRW9HW1BDJAX6wtreafJ6dOxKvMwo
	 DoEwox0PqjN6XERp1vWDQxudbroRDrc9xwqHwFiZBz5bF0CvcB6//GQHcrAbpfqemc
	 jo+C30qOBx+P9rp4+hZvTQDW9Rh+KyeOAhSVn8u1ALVQjEye49iQh/pfZOvav6JGFz
	 LWhMEbExmcI3rH+eFIEjclWI+um3HIsKKeMV1DC/SCrQJP6F9UGhpkR1jX3nr1pyO7
	 ytV8TckXSV8oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F00CD277F0
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176806043357.10513.4669437990229250490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd597a644b8dfcc17f68037448e23039742015a61b0deca539093d7a6adce43c
Date: Sat, 10 Jan 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768060433
