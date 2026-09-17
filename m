Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4532F44AB6E
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789675234; cv=none; b=JXIdJcAfhad4FNRJksws6dyn5BtLz1MMn7HZ0bXOY/DaQsWl+FWSxwm9PLubYU3onG2rh2XMSrolGlJlMqZoJyVp0eTrxF2Fo4aicpfYUD3FnSzgaBu9zkQerHvwQ59F/9D6fdZjyYpZvNRzayxPRHsbAotzMZGGpeWiIj32ZvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789675234; c=relaxed/simple;
	bh=ign5LrtjA6LMa3j+BpKtXSDV66qDRqUxVpv2bhYle2U=;
	h=To:Subject:From:Message-Id:Date; b=XW/F3fswjaBkLRN9vj1k5A95yOZ5qvdmV5GULM/AbKljr390EvCfu65q5U2SLPbUfth3B+J1oU6QFPXbwFxz0rHvkgkTDMsTy8+20zTCFyxx/C6B+mjLTJIadoEO5RK8PVGPpcU2Br0D28LNM7JYOATNLUpEL6jT9rbOb6J52iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kkGGukaA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kkGGukaA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D199CC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789675233;
	bh=ign5LrtjA6LMa3j+BpKtXSDV66qDRqUxVpv2bhYle2U=;
	h=To:Subject:From:Date:From;
	b=kkGGukaASZULCrFYRJUpgYgyVSYuL1pdJ1XiiKuUpelE6g8GfL2MgtKWksYipqObB
	 qPZz9+Zno3HHdUqlbO3FLfquer7A7h8EhvvdaFP7b05DbCAwSdQGy/YnKpBkohKMMr
	 eLOBEU7R6c3+A36LK6CeX3En/UuzezIOrbiQS9uQPawVqkLIwDIeOvvyDhTnY8Dg7k
	 e/zEcvUN92SzM+kidx30wj3G/puXPbHY7YXHCQjzWMhufinZ4nvVjfuBGcASBLU7O0
	 4tk6wP9NqE4N6XBi10AaAHGIr6mV0jg0LsXD5To8E5wagcTMn4jweJ0DZ1ciXZuXwl
	 Ojcgh5HvmXScQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0E3C982D0
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178967523369.17933.2764797632682909250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcdf170238bf79364074e467304648b1d91513a4522510da78aff750c65001ee
Date: Thu, 17 Sep 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789675233
