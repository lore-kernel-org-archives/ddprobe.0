Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EFE917E
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734740754; cv=none; b=B0HCGVMZZsy/7Oup8bo8qTO4SiKRkqJ4KTmqoe5G3nETZa6nh1CIETYP7a7+Z83qhH1Xqh8YD3hZ1MUfi7ZM5o+ZksBHqzkyZoyfEFNAbHxCPZfnjAJAV/ksXTL2PTeMIo+Ww5KdJHgfzI42ItGek7XXQlcyqEEYVmt3zZYf/o8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734740754; c=relaxed/simple;
	bh=JK5N46VAeTaNd16mCvmuRwy3VkH4EmQ/1923Hq22DkI=;
	h=To:Subject:From:Message-Id:Date; b=OwVv/fFzf3Sx3gbZdgcufoHv/tQPu7Se/7Y/Z26EoBZ1jDBc7pZfnax5w07vx/zbIldR5VlVEWIegPtnloYUrahr+/aTFNwFgZvaAWQn1Gbmx4Vxs0wb2yLUEfox4lR5UemfgRNQ/ZK8G/rPyPuC7CYvP1D8GG8NOuKAPAWd08Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EPxHaY5g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EPxHaY5g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B90E5C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734740753;
	bh=JK5N46VAeTaNd16mCvmuRwy3VkH4EmQ/1923Hq22DkI=;
	h=To:Subject:From:Date:From;
	b=EPxHaY5gH7VvC40ma5OBibVe3me3d6WweI0cwmsOs11fWbnZ5a+ubbKUoF8CPAv7M
	 Idu/kqTBAKXA1+A3bHpU7QnSM2oaeTfWhTwMKPh6redGVJEESVnJZCJ515nCSUaADu
	 t4njVxe32rvU4Q70WbYPAn65LkJpHZMNRQnThW6RE4n68WLXklX0HYqGjRq8+i/BKQ
	 5VDaw2a1cvquG901l+0u6pHCitu180NBPiEKR6gqTHJarvwn2QslZSY/n89cqfLhMP
	 rOyU0tBZ6m4WAzox7b4ukqfgXwZW8HQVTD5gaDPpy7fgZeJofKsoYAL9FrRtPa/fNb
	 QjUZvr++GvhQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CD69E77188
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173474075359.17495.9372480947557718206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3d12dd429531dfed124b389fc74e4d37c5c887b1d711e71cabaab1776958521
Date: Sat, 21 Dec 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734740753
