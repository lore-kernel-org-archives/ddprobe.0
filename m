Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D5C8175A92
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790481034; cv=none; b=QLI2EpeUrzzTPekA7Ri7JDx+HWXVkOeQFUhEhO5ymmC0OCrSdzl943dzigCeVHByItze9DmTchTUBvFuHxx/raNWIqM0sE8PEoFenmbFKAvEvv+6tTi6XgbgIx0OnCDRnPfPnSdYJtV2Igz87UXGmpv7dTz1+ZMmL6jZA1cyslA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790481034; c=relaxed/simple;
	bh=sH+hahvdveOanWDwM67sOhOxgN3ARgJkijjRNltbovI=;
	h=To:Subject:From:Message-Id:Date; b=nfx7ztvEkY7PDn5UecHWhP5ucyAmIqNLIPxZOtVSj/XZj8UxSWr+8CYsfT0xGYElHocKRZ9X9esZa6hFsAj3OGV/S8nSQAZ64iD9FzW/gw3a0JJCuzAtbQnjKusrR6TqUcifNg0n3rMPQHT99NAlz0BuP8UXtfWlJK3tp1zZywQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2gcTnR0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2gcTnR0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D969AC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790481033;
	bh=sH+hahvdveOanWDwM67sOhOxgN3ARgJkijjRNltbovI=;
	h=To:Subject:From:Date:From;
	b=l2gcTnR01dWJoeLtJnB+5JWALxLIxE/M6IViwpsFHaxwGaN9b7PEkMgxepm5ddP4N
	 E3EM3V2obvD+uo2ZeiCp8IsZcnXG5hPfIYu63dlcxnbnkK1eZ+4XGmmNHx0ucSlC9Z
	 9VZ2ZQRfzYalVR0SDYgiQLFYeOi/Ami4T+LOZ95KeVVGlYd4aeqcI65mR5inOMxb7l
	 Aa+Jvfm2J3jW0pYuewup5GIX8vh8CLJCCXfUE6QD6EzUvXM7IqAz+VtUnGwPcj1gBF
	 K/tOEN+iBs4ZRqWRoTHg9qgAoaQpeldFkary3Mgonl0Gc5OPi4KeZYF32t6vReNKkZ
	 dERxm18EEv+Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3FFEC98324
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179048103369.4565.13088836161918243176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afed5ecd1734cc1ce4acf5809740056c32f235337ad920e7c25a488b81b725b8
Date: Sun, 27 Sep 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790481033
