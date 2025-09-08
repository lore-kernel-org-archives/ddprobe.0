Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB822E7637
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757315994; cv=none; b=Hmi0xoCNYrbvNDYJpRjMn6O+nX2cw20Y8xYiPlkWOaMiCLqAwAxxwoNMNfxOZ9FLRZRU1txifIgupUnk8NlgaTeHsDb1mvMCgLp8se9+Sv2V625Zo9GT2MBvk/IS01FAVX8TwsGNgKGj6terkBleWzlJ1Xh1nzQS6n5v0fjwKq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757315994; c=relaxed/simple;
	bh=kQH6NgL6QRBWw/P21oWLpEhhAWghc08dAtxS5DdxfRw=;
	h=To:Subject:From:Message-Id:Date; b=ZluwDhMJ66fRjVh3CruGVreALMKn3pYlP7kgYdWQnmg3eINapCXH6ZhMNFxbtueGOZzDAIdtEHiMx3khMLtTjTl9ApK5k6u1hEnlprx1qY5SaoVoHpO4KkB3fZ/+DwkAmu6J5j5mUIMxX4OPpSSf1zas/KAzq7ajBQ3eDytHIa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=beRLpvM1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="beRLpvM1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E052C4CEF8
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757315993;
	bh=kQH6NgL6QRBWw/P21oWLpEhhAWghc08dAtxS5DdxfRw=;
	h=To:Subject:From:Date:From;
	b=beRLpvM13CWu1eC/6duNBY23xKx8cjQ5IfScIEN9xYCSAyLISp7+7lJrIE34cAoED
	 4Bq+Q/M1XuVcjKe9tXOV5CgXUIwmZPu/MMI39Uo77eHaFP9O9Q/kJ5DLkgcUjPf3s0
	 cEMWrfvGd0e+xCQbgyxI+Lbourcn/6R5BvOKIpNnZr2hFyHbStzWR9Iz4y6HyK+Hts
	 Ej5hIQQAaxmV282E1K3EJtW4RE3TgnbZrT9MPgnwhyzT0HYr+f9iKa3eykUtf3LLTE
	 yHHkALRJ2bQqktiO3M7DYZC2DyGNM7JddzsEOo2e5u9smRSJ3F1z2kt1XELMMPE1BX
	 60/shy51hVqaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8CDCA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175731599357.10344.14452822140072300663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31fa325e5bb8055f9420c00b30a6ec434f6edab7a8d6ff9d122253b1865983fb
Date: Mon, 08 Sep 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757315993
