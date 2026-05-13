Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44ABC19C542
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 00:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778631634; cv=none; b=H64yt5kNLaa27KZREIbrkjFHHuKu6PNWv6/2TZ1xM8UV4ABaQo+kmKgzKoOR9+c0PfdPjCYchN324r2SR7gwO7/+VJCUGSuAxPhAgA6jY7KJPeXG3rsaCqGglYEgrpMrxyBkeEs0LBpJQEtmomy367wjZH9KzHh2J7UUEjj0oFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778631634; c=relaxed/simple;
	bh=6pyOIPAeIrIOVA59zq2YeIr9RtVwQk0TxQkvBSN/1h4=;
	h=To:Subject:From:Message-Id:Date; b=Q3CMD8Hgqh99IMcEYbaUvstA7EkJTUaId0Mi3KrqoFgAlMMQMalUJIAPJo6VinZFFL0I7ufWMaJ2AnjmXZuZhKRu6jc3zxNpPSdbifexRZYqB+OdEOLSYo97mlq9di3THFQ21yTR/9R8BdBwiPq3bfPzmmvpDFSeiGm5FaBxCnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U1i+43Gt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U1i+43Gt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C62CCC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778631633;
	bh=6pyOIPAeIrIOVA59zq2YeIr9RtVwQk0TxQkvBSN/1h4=;
	h=To:Subject:From:Date:From;
	b=U1i+43GtewOBhcQytBvwdstgLH9tEJMKnJjczTz9m7NfQaZtEmJe2g5n14PVd5K0A
	 vFAaK/hDK7SPzaWZeHEitNkRhylB7ja1tEpNrRaxfwmqPfMaLId6Xy5V9mq8CKrHvB
	 vCJ+CBEtKepggX+W6ervc1SOqw2xw/hfu8EhJCXDyTeQYLW6vO1lIaA4lvUkHIi0mX
	 dXYS4dwg/mrzDKx2HZ6r/aoOm+iU/VrwT1oMejFoadcTMlhMvg7VqAq5c6LBZpIS3e
	 9158XOO/WGkrlqdJXcaRan8TloBQpNFazYBVE0rIfh78YUZjqje+2uVd0BJA1jLb3L
	 hwNG6mmmmQC5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A46CD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177863163369.30294.7239884976874804326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55ae5ff3bf256850ffe77ba5378b533139064c07c6159ee5edf463d988e9842d
Date: Wed, 13 May 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778631633
