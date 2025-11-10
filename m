Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37AEF17B43F
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762777194; cv=none; b=OL9rInXuY1yzOiE82lVRowi/G7ht7Vi1DoHtWmhAr/iZ5MUYgArl2/lECAI0p5DngEZIKLKuznMebSNWUSoUG1kXMP1291Bj0++6+9e81x/BN8lpkiCiVJ9VEP9uC+1DDo8HzSqp6nxNlEj199oR/RP2023lGh7ls7iZJ1KxtzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762777194; c=relaxed/simple;
	bh=6p1z7Q4i4w6oWnkXMW5rSwEZyoB0EPNh0bSit/WpV2c=;
	h=To:Subject:From:Message-Id:Date; b=itnsw8B0MrstRKefzEZ8a9ovu9hIVyxadP2nF4IhDViCw3H3RaCXqjhOIroRi7eUcEj2/dGYV/HmUT6+2NBdmOw70mMULYamoZPiJuKb5ifCtcFUqY6Td9YS9NkNK6MI47J6jROpH62VETPPtAIfAz8NsCD2CQm8NP8PPTiD24k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sD2rmCD/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sD2rmCD/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D628C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762777193;
	bh=6p1z7Q4i4w6oWnkXMW5rSwEZyoB0EPNh0bSit/WpV2c=;
	h=To:Subject:From:Date:From;
	b=sD2rmCD/ESxJeOTzwOkQi2tLb/xeYpRS/JQJ01Z5gkOiV7jVCcD739STjBrLNzL1m
	 Ush8MmCnKt5cbf2re//7bKGKszlKQ8TgELKHvZMgxl/a4I0bklaZ2w6c47PFNC16Vd
	 2awjZTSaq8fPgAbvuGf3jh/7KfkgFD2pgzJSy2KnR3n/4ZMDjzi7ETcinnmZx8iXO1
	 nqbUHrajxHUGaXOWOE7s6ibt4UDYGB/xJQTGlKE+jXslUHCdSUdGX5az3PdJ1SdPoY
	 JxOB5I+gmBI7bszqWtAmYmQn79OmZzECsKGkJdIzwGCuXOPwDmGI77Mb2X9HXwy2Vm
	 T3OBK7nqZRYOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C2ECCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176277719358.8116.11431220907020877790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecfce936c5f2bc712769a1f639b29d3af45997af49391c810397d74135347a7d
Date: Mon, 10 Nov 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762777193
