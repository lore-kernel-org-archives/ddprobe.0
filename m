Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472B41C6A1
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723361754; cv=none; b=YUYPKLTvWKzNNJvoHoNqOjsL2IIaoJmHDYgVsQPEy9c8UO5pQuljiF8s0ZuxR0qCniDOzj3DeSIWYZNpIdsBwyaKlGQkm69CakPmhaiQ0kh2URs9ORKcNl4nwIs0jSxHXofEZjWDLalHJO8vf/VmM2bApYl4JxoMVmFWMNep4nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723361754; c=relaxed/simple;
	bh=z/bvlsEzbeEH880Km3+85lZgL7FtxxlukU7JcAXyNoU=;
	h=To:Subject:From:Message-Id:Date; b=NINPOE2PG97fO28vX66OhxJ3k5M5iB0CpzZHvppq1Jygmz33SiANXskEUDsFzZawzYDZdZR63tLQICgEnWSVsoMGndP18HkbnOgBbUhksjyl32fi2aPinEVjjzjNgLeYeXNCHDh+ZnAHfbWJAWMLxe8qxav7vUAGS4Ly9WuX+qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ies6HKMQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ies6HKMQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD412C4AF0C
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723361753;
	bh=z/bvlsEzbeEH880Km3+85lZgL7FtxxlukU7JcAXyNoU=;
	h=To:Subject:From:Date:From;
	b=ies6HKMQO6DbZhu4ZS2qldBg95oVusBq/2P0+j2zC79wU5/nXg7wn6unbWoZt8RGN
	 Rx2f0VRfYxzDZJZFkERVjI5aIWXpFWN0kW4qN9VczTGozaa3V4FGelLT533lOyj7Vw
	 uhkokE0cV1DeTmz4jvz+qJ+YdlXmFQgJJK1MjSGRlKkUb9PGUmrHvoauh5fdPisnBm
	 BDUx/Lg0lJ54RxyMwrmOMJn95X6KJcchjN+2qa6+Ytvce/kFIiTnF3uhATA/e1GRZ+
	 5ig6LlWMuCU9/APxmoy7QJrwUe8d9bY6QVEK7bde3fBcRxXJFt2JDpbs1yWVI+FPdI
	 xKjFk+9vCwDvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98525C3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172336175360.5038.8320513022514183555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f595c20954ffb27f91752c254419554feec46a35b138c015ace3ad95c497ca7a
Date: Sun, 11 Aug 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723361753
