Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B8AE15C0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 05:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720934423; cv=none; b=dyG5Z66a7Qw55L+I+OssoamvH3P2g4NfczA9DQ0suT94Ot1u4WXhhXGSe18tSYLaw6OTVrucuBCG6zOzEz07/l831wT3KbDL0rqP2amHuvisuBZD1OGhTZ5G74OVrn7Wj6kcUGO/yRmPnKAMtO8YB7TJkc/Psl6togq3K2jalU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720934423; c=relaxed/simple;
	bh=t8EPbvYgtNY1SsGDaaiY7/iQLhpbmPYTJHOnv0KMxsg=;
	h=To:Subject:From:Message-Id:Date; b=fZZSg05PpHOTlEJUu9wqMgBvSn5mynvRyrb66QGCnyV17Fd5FHgXnUsBHUxi+k+JWwxFydSJwxAfmDfl9VcLQZPujNB85dpCAIUsefkLr7TJWTiAhHh2Wxi3t3jcrcuUXvbbBZ6O6Uq5gA281mhmj0r27wKhulnlTKW+7stj3Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z7z7r8ia; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z7z7r8ia"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6118C32782
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 05:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720934422;
	bh=t8EPbvYgtNY1SsGDaaiY7/iQLhpbmPYTJHOnv0KMxsg=;
	h=To:Subject:From:Date:From;
	b=Z7z7r8ia1p+UHDG6f4pxOShPuE//7zA/xqvhOZ7oxxkZT91pPil0vx8Lk/tf404vd
	 SVqaXiy08Je3/d81D0HTLDiot8pczFka/m+T2maKhvMGY/w+YRHanhzxLQCeMZ4noy
	 G9ewhs6PE3/o4rGsjU/Nu9ipkOgrrZ5+ASchEUaSraeKgZA/PWZashCrYFvc3EGR7s
	 npjV8WdbCZKQ/36pbrQQvrfgYAC8YUSTSs8E85aZjoRUVDbqoiw3WAWuW6+BIxXB1j
	 Sh5M9tRfLm3/1/M+RH15auPjE/iBGgOy8pOysdp1PzEJCRfu0eX7SbxYFtRxKQRUQk
	 H58WxhRLGbrHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1E33C3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 05:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172093442278.29693.995899110411356648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 228d8aed5de384e998283ac75733d6203232f30b6a62886f2ced7df82eeca5c0
Date: Sun, 14 Jul 2024 05:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720934422
