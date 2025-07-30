Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C73E42AA4
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753904994; cv=none; b=kRvtg6RqtsPtdI28iqGEE7YW71FzOmNfL1Xs0ejuq5h0XIv1c8NpNqGVx998iRh4H4qvZE94wIF64UENcfnedZ6RrWwRzmQrw/Kh7fdVxVC1MASSKkSan4GzAHrQdDIZAcrJEjNIB1PlAYHLlg1D6afsHzP5iL18WyA7+wP/J3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753904994; c=relaxed/simple;
	bh=1OEXo+0hRwcp7U7kGduXwNV9+kCW47bwO6gsVNnIats=;
	h=To:Subject:From:Message-Id:Date; b=OwBW1eSnC/6IPU2edX0/4Owpj0yVCs25c8ZO5hch1V/bpiiUD/ToTDUrlOvc0W2GSJadlEYzRcQTFIXCS6qmqHSqefHXlWtQhmfqBU9kIhWpI0HNOI0OevdAWlV7cXNxyRnjfLHq8AinuF6UShI/1/Mwaij5j0eAZJTexYVZkzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gkxo45tf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gkxo45tf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F31C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753904993;
	bh=1OEXo+0hRwcp7U7kGduXwNV9+kCW47bwO6gsVNnIats=;
	h=To:Subject:From:Date:From;
	b=gkxo45tf54bvMCskmnaUwK6K8KI7lscbZ6M4pBZh0pJZAkw7ZQWSphVku27AXlrXY
	 nrtAr07B8WWt8igKgmDzp0MPE7Ba0GFO4LwrAkAe3S2wKwAqzYaVq68Kot/Y8iJ/Qo
	 xFFbrnCP2NMIr8NMUH379+DGmnnhsEmyXhRRw2sOQ8H4wzfoCJ9mjRSJWlNz5/fyll
	 FhzcxU7UB7wTljOSTYDCbuNq1bX9nBh8JqMoA2S+lkV+x8aYmRoz4fugzto0QnkPiL
	 LCyGiDKhHh/SoZIrHiKu484T2RI+znYyTzbxtzCOaXFSaycfHdwGV6ttjxMm/POGaA
	 V2fUryaQIbqEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93125C83F26
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175390499359.17921.14725775149081059421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1a652b09797fe1de3f65eba06b25be8c89ce4804acebd266d689c9a062fde9c
Date: Wed, 30 Jul 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753904993
