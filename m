Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1F01624FE
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755187194; cv=none; b=UPG8Qn8+hruO2n8Rh09Dm1b31SIHTxkWrkii+D/1+DY7UfiZbMEhCU+/hDDpP6XcLOL82YPNgN6xFXQTFaN3HBrTNL8Z9wWeSBGtfiXC2zS6He93IgaE6GCqGXied07Xp7RFyrmEi7hzaUzuWT1CZAmjcbdvDwJlZ8cr4S9AoJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755187194; c=relaxed/simple;
	bh=kMuY8wEpguNddEzjDvP9VoTRCYn3nFeK9EJjGTtFqSk=;
	h=To:Subject:From:Message-Id:Date; b=Vu0sM5zbqOqIbhc1SPNrrp33FF/T9BTjNR0+P9UzyXDnoLQY76kZbe/lAsxLgUoDua8oc63HLiNaNo565Qou49lOJhiMbF0Ewscvk/pV0ZmpTw3nS1shS0gvWh51mqqwTyBIkCHqgSX0GZwzBTDbIKfCxh48z1Slk3XoHNCyQQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NpaTNi9V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NpaTNi9V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C111C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755187193;
	bh=kMuY8wEpguNddEzjDvP9VoTRCYn3nFeK9EJjGTtFqSk=;
	h=To:Subject:From:Date:From;
	b=NpaTNi9V0NpHlDKm+tNKbjgAvUlBIo7DuVEqDFhG59DBoDfMceoYFdbXZQvgPQAKf
	 RZX+Xz/pXE3Ve4BUnFVsybhwlU36sL9Lsw93N9LsQjd6qu7simCb5e0pEClkMMDaFO
	 i8MhqZw/dOlgkB5TlSjHNqi1xGptdM0ch1zMdWy1YKRwFa7DYIM7CC8G4D0ud2/Qx+
	 X+uUNcXlscRfl8MsIaVPC2vklXHCAl2X/SMGvM7D6E1psX9QkjxnSnkW/4tWU0GKOx
	 IPAcQRV5uNxiiI1J0r2Q4hu+eYgkPFqZNcZOebqzbnZ8Vcxl2yW49IDcOwbQ3YmJJX
	 Tpuqu9tBiN5rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5D6CA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175518719357.21229.7080269851601538451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39d2d006b3106a6296ee7cd6dcba81bcc027935ed8072b326073a25e8a7b475d
Date: Thu, 14 Aug 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755187193
