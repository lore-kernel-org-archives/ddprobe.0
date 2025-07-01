Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DACC226D14
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751413194; cv=none; b=aLIiAxTGQJnxGtQ1Wakux5knoIjslNOeJzW89JqAzRd5J2fqsStxp2tp6JHvMRvQLTiTajyr5vKhWcedQ6E+sycIHrObj/UP0l/toV2wVtFoLpt9qW/V2QJRTymahZfHju/25XlbT2dluoXkNl8blE+Ke1WS0W+JFBER1zmYNBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751413194; c=relaxed/simple;
	bh=ijcBup5Kip6laTaGhCfePqtOgnr4JAHvXPLYD4hG0iM=;
	h=To:Subject:From:Message-Id:Date; b=Xd9GzPoqNy7SNRuElVnL5lDcQTZjYDThrb/wlDkOl4RidP4dH7nQsfEdbrlRoswWRNN+X7R3wD8K93JgrG5vLrp5Ad/GT2sVb4hQVanD7l2E+6c5g2dPfPxl6vLMiOsQv6losdOOz8HCZVRBNTNrNhvShWbgYIHyqtyeGKiOo/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pGUsZPq9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pGUsZPq9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD21C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751413193;
	bh=ijcBup5Kip6laTaGhCfePqtOgnr4JAHvXPLYD4hG0iM=;
	h=To:Subject:From:Date:From;
	b=pGUsZPq9sr5sq+KdZpBQL7lwAo7OlPlP3F9YhAI9TlS0EkqtAnPhV+cC1ENinoM1A
	 S4nQxelXMIJ2W8NDym1PjqCCpWNem0pIqjqJUlJkyL+vFehbtrYrsSBniNGv9UYwxm
	 yMlDIvdscTaMJT4t688IPtZSmWH1QrA4CJDnpEuFUAZKhETXnq8+ogo2Okz1+br+ky
	 e18uH+434z9P8vyAZ9RWjk1uKnZMrvN+voKSxveaVx4oiGTH/iH30o4vIo6btoXe75
	 zOnauvgxlofmVfMd2yetsN8LgQ9VU8HxoKANqzNFQu7gjPUC58C6s9AdNDqxfMnB2C
	 T28hTj4n0q0Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E42DC7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175141319357.22294.8782126597824467887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2033932d97db3b2b42b94dd246d1cda2cf8cdab59538d0e7d9594d9d97a9ebf4
Date: Tue, 01 Jul 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751413193
