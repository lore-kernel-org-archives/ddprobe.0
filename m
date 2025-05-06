Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343E2279350
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746536394; cv=none; b=HZadFH/yKFGr//3iyjFPkiaUaxrbAEGmMXeVZP9Q33P1ErzxBBH/C2gtMKHtRbTHUPslW6rqXGYOJXMHRrD8MqlxN/DBRG/cnqROj96MISwb7qFOIhNJqJnQn85rfsgkugz9mUFgmQ2lVOP7G5uGkUDuJTILzT/ylhHp1Lp+L+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746536394; c=relaxed/simple;
	bh=TpewJ5yZwBKhQkwyz19DCx8LEDA1IslcO4mQm9YQZ4U=;
	h=To:Subject:From:Message-Id:Date; b=VI0QmxwSaEzVuzroe7UGwHpq1g4uF6qQrtkYf9WfG5X/2b6PvPaIadC7hunz1SKiZgCekQP2aOy9NU81UIpG2e3fb2NbZWDv+lUu5lATzJoBoHUIYAZO7cMxyl7wYG2H1BocZd20DFg+w7sS2VgFFm9siQTGlnoWBOjpvnOjpBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gMPwA5wN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gMPwA5wN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C90C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746536393;
	bh=TpewJ5yZwBKhQkwyz19DCx8LEDA1IslcO4mQm9YQZ4U=;
	h=To:Subject:From:Date:From;
	b=gMPwA5wNXPSXDaqzS3snmgv3G1+R8uJMdMcvh06/7REa0wxLbDbkx49q95Fu+SJ7I
	 xP7giafEnDu71yl7RqWmpL1zP19fYaVS9I1uYtN1Rv2eVIF7JE1CFlbGwMWdm+6MrQ
	 kYhxnm1WsMM+Yv34bnCrIGTYpva3bBgCxxK/JFknM3jQKM3/zjeM3hUlIW+p3pIjdn
	 Kg6Hq3zTiI7sR59jtER+mEM8sD41km3oj549a/K/Eep4BwcoBNB9sSB7BjIMwgfXTK
	 WNZwg7Kwzhz5uSa8b/PHjmKmqLj1NJ/nPFK3KdV5AFIoCRywPAxCujEG9KmW8cjqlO
	 gDOCRkZxIYAPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9225BC3ABBF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174653639359.17490.9092287870915318423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d654f2cf9cd1c987e66a380b292f337c2e61f57b452f7a863a4e4d40ee8e1a0a
Date: Tue, 06 May 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746536393
