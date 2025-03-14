Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A76192D6B
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 12:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741954134; cv=none; b=CgXWZmbWrsBaB7HfTADiPZpDPG0chm8vZVRy1T+3SvdPmrdwk5U/zSJts6uzUflPPJOLY1egrb24XW1FkuJ0inoHjglkZrl1FjekDPCDcW13FaaLbE7fL0TxQJdNdfKa64w8IyO97KhxPzsCLT9arL/wHzubdR8tv7TrsJ8ZVgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741954134; c=relaxed/simple;
	bh=8FF4R7Fv7kq8QNWof9JolnkWLzv4xZDNk6cQ4YvDmfI=;
	h=To:Subject:From:Message-Id:Date; b=VCiGIqh/8TochoaVVOx9x05hgLAPBovFTX/HdLC18YX00KJmi9p6MxSBjhMlKZFTkrvrQtcZYb89tJe9U4ljFzVwfFxms647FddVuS0ua8vRk9Ap/4B9zAwJXmyEeBIry7qr71LieSpWyFrzVNwshrS3fHqKB+Nlt0dhx1/c6UY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UAiGqw/1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UAiGqw/1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3416C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 12:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741954133;
	bh=8FF4R7Fv7kq8QNWof9JolnkWLzv4xZDNk6cQ4YvDmfI=;
	h=To:Subject:From:Date:From;
	b=UAiGqw/1nTHXtfLvMahsoSbuOAZ3PPSzo0udMx0JW1azeTPG0bbW/SqQ2czdV9dKi
	 kpjnYbvQbF6bMl+rwIYe8A6cYG5iKSaV8cdrwY/em50Sd46PKdIMVUzyINVNQVXd9y
	 YTB914VsQq6FsI5QoQSfPGc8QwxUdqaa0F+6EG7Z6w/jbfmoq9IaESaKTFDJc4Wi4S
	 3p0BNLOSMYcEiF5/aZNdu5+SeonvDfEcyXU27tVLgZrtw2yb+RfUqWkuxNhchOaWXQ
	 5Qp+p1iZ0ORGvLlW1pLYhKuJ7kLZUVe0AukzOc0XsM1S2vrybzRYK/C72yG1toiLiS
	 g/gwg0UDSO6aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F282C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 12:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174195413357.28236.15262284998258741289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3346116a2a31733bb71782ef075f2a0ef4f86d485672ac31ac56bf1b9a598f15
Date: Fri, 14 Mar 2025 12:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741954133
