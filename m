Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 777921BF20
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 20:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713730823; cv=none; b=OOxyN8OrtluTGxTAEtJ3y+iSbLh2wyQ3Mor1jnkjABsTKYiZ5TZONchMV5LHq33NNlIa0s2BriHKDsGZHPH+UWD9+Uk13RB5+fxRHGy27GkLHRLMkwqmn42NV0+FRPWtchqNye+iZL+/OWP76om+z/GJPEvxhm9mUSJShor6jfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713730823; c=relaxed/simple;
	bh=nWhMTwgEqTIT9fvLQ+HiZSN6iCyVJMKTm2ISVhnV1Os=;
	h=To:Subject:From:Message-Id:Date; b=Z3cCEbFm9mk9Bzvcdln3mcaMp3P26SXZ8gwPrf1yJ0vkrHYFaKWkijptRyzvcTxXyli3NDDBWdeVihtbYlA+yvucUsztYZoQEf2xSqk3KWKusUN8cxX31KKPP0cEvZ22ErZ2Ax6ua1ak1X4A46hlZSJts0xufX7BTxUM80TFXwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OCfVjBE6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OCfVjBE6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F144FC113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 20:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713730823;
	bh=nWhMTwgEqTIT9fvLQ+HiZSN6iCyVJMKTm2ISVhnV1Os=;
	h=To:Subject:From:Date:From;
	b=OCfVjBE6mtiok/cIpZT6ZgGKOv2MRAZ49D4DAjBCVzFyCuNl4z80hKf4NSZom4V52
	 E6P664Bi6KvJ4o87EOxE4D/cUYo/FgpPm3YZr6FFcUcK++l/zKvw8NQVv4WsrqC0ax
	 lpnAqEjt3nqm3FQH8QC3fJ25OnBcd2BWsw7/TP6QrZwKG0hMZhnQynmQ62z0wJ0ATV
	 lM3ih8tivc3OU+C2jDB6/Zwydv/qHTwd5TA95k+coYKqk8DLhta3O0mjgXEsECuWxY
	 aGh/RSo5p+Ei0MH38Cr0APuXPPut5aEd+DKFIq3rrSxhJOIU2delR0gydlXUWHGTnA
	 0WsM2yMMkgqSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D60AFC4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 20:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171373082284.25238.8853307216780073320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8f6138723ca2c0fe735e0149498529d41a58f69f7b03eda7724f003504e03c2
Date: Sun, 21 Apr 2024 20:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713730822
