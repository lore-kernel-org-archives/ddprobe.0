Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E823D81
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757771394; cv=none; b=ZW6DX1yv/JhQG7jNBXPfS2zQDUShm7feg+DGI/YyUf2Yj7t0zqTnbfndIJJWc0D3HVha2i8JP/4T+DnpDgV5xALgG+JLN+7fcrKeDaf0PlXBqfa2hAw/WojP4cEUL4H1mV4lkh3CP098VBBl3jYTH+BraZb36wPKjOoz9d6FD58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757771394; c=relaxed/simple;
	bh=La6463+Bh7R6iQa2zySczEBumQ7DT+UL6Th9iRN8zFA=;
	h=To:Subject:From:Message-Id:Date; b=ETFY9h8Rwhf/6cojW/EuhVIfFuFrwI3gOA/ohxtf3J6XBs+U+U2JmFiuxP8XOxnfmLO7P7go15n8ZXl0thd1sgLyavmUiVszZe8tANhyN1m/XGXoHId0QKplaq1NrgUVFIj3zn59fQ4iz+zIRcyFGHrC5q3iUOPUHZSCGVwGvak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMQ1om7r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMQ1om7r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2851C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757771393;
	bh=La6463+Bh7R6iQa2zySczEBumQ7DT+UL6Th9iRN8zFA=;
	h=To:Subject:From:Date:From;
	b=nMQ1om7ri8IE4BH0Q630WRDHyKSq9025jDISQ1KKYYOmzdK/BfUPfWahCoBFa/SSX
	 17yGPWL8kl+wcfqqnpoSABzHt0gmUbhXo3CNIHLhv4JvdA+RKXOUIMQ6//LaqeQ68a
	 Pl9DD4Ph2EngWieV4zW6brfckCnhaj6vlN3SxXyLewP32J6hKbD5EZ5J+i58AKdNmJ
	 1odyfhTZOPXa4JtvwqXBA+c1DstyYAUy6K5aDzBeCQ6Sq66ytsE7ztksRPDgPgjXyo
	 CY4EeOrZzb8KPab2SGZYA+8V+i4sPZ2Rjg8P0EdKEl5gG9nw9NsANiH90ce+xS/1Hl
	 +0/xCe+pHPcPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94139CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175777139357.30219.7298799274191546778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d1de072a1c1ac5e12a4965200935ecb044bfff855e989e5f7aef53942cf612a
Date: Sat, 13 Sep 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757771393
