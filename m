Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D971A9B3D
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749247194; cv=none; b=SQ6BgjHkIckWJ1sDtPUTx+l2VtTXQVX5d1F5GWtE8wfcbeI6LAtXFQxQT1eqxI1eZJUxw1oclO/VzOhUFfMGO0Pn/ceiMCRr6wyhxDe18IqqpRBd1Or3099ltBFlGd/EsNkn75+XNqpFmqifKVRZJK9dLDcr8sp70y/HQD550gQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749247194; c=relaxed/simple;
	bh=XqAJRb+EVhucsrZt8ELnwDieoUMMJtfboJFUmDuPv1g=;
	h=To:Subject:From:Message-Id:Date; b=hUdH0a4ZtynYUam7dQWsMmZGXdydxx+pffd/bDBkYIFpSoyUDRiJ5ZPhoXRrFqGXAGns3i7PZNZKkrNomTZvxFoYkAMP3UP0ROL1C3R6vftJP6OhHG1FuSa3jB9SovoJwYzVccOQ7bTMz9ltbL9iyZTdiivQJ7OT3NbzsUq1Sa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VO+ur1Sg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VO+ur1Sg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04CFC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749247193;
	bh=XqAJRb+EVhucsrZt8ELnwDieoUMMJtfboJFUmDuPv1g=;
	h=To:Subject:From:Date:From;
	b=VO+ur1Sg6RgiXVyYO8T5RBWa6OdeuaHrcJ4sE5Xg2oOf+o4y/alY/XkxN5kA4rYN4
	 dypS02M/Z7KACXo5spWd3Hc2zu6uV/SbDtfvXOUvtegvA1uygfaNkY3ZUBYyF6KOGK
	 MrDltgOQ2cIrWtBPFF+wfBD76JtDYyCOvZJXRAcoukOGrDJl6uYZ9Nyj6E0kcf1Awa
	 RxkMuiiDGUazCumGW1odhe3KfkTMJJgVtIkHVdbaDKNHZ1voyBT+7Fr9ugNdWy4WXY
	 e2LNQ9BX5AMvISRu8vDPzFA7AqGhz2rJ3Aa6UG42UUXCFW4n85e0L1UzQGc7NlkM2+
	 DgwtAREp7rZ4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91728C61CE7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174924719358.4133.3335473851194132006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c463a6ee5804e6660aae8eee4efa5d47b4ffd2294bc2e38b67d84ed3c9c20e1d
Date: Fri, 06 Jun 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749247193
