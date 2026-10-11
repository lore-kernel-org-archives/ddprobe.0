Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 896FE4582C9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791757234; cv=none; b=iyDTCpaDNYXQSe2r4gevIJG9tgRg3Mng3O5x+fQNgfzjMBoFeLGzMjmsEjOHE/oto2ZHx1G7vwASdkETIutUvhg8dBVHc8gzjcePWXIiIrpGfQTDcOsXTWKLd6utBg1/EVkSowVabEo9dSUhoxDFB5U53bzWm8LQSYs78tJ3t8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791757234; c=relaxed/simple;
	bh=36mIo6ZN5OjNNG6lFzxK9Deg5msk9aMjLh2GP1+h5Ks=;
	h=To:Subject:From:Message-Id:Date; b=ldwhM+iYLVGuogcbWelEq8RbpGDxZRoK539D5g9j3easd8TG6zjDNOOt18wdAYFEwQOFxGOadsGGOQsnAlOSomvVFwRTUc4XlcoH9xaU9FqaxZ2P2Zy8lPvKy+R3/TtskH2VuAYafOqSGIc9iSVU1bsQ5dLqz3j/1QSq1+osKcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ENMwOn34; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ENMwOn34"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB010C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791757233;
	bh=36mIo6ZN5OjNNG6lFzxK9Deg5msk9aMjLh2GP1+h5Ks=;
	h=To:Subject:From:Date:From;
	b=ENMwOn34nRRAW2gFVJl15CBYzFF63S37eWqjEKAI7VGY04kJs2L63k1k+83ExJqUz
	 LqCHXayFoCnsMFVy5Y7r9VYAAbb8pGeYz7qr0pzqiLN71EL2pt5GaZtQgK3LIPPJkn
	 mbAadjEZNL9j/1+HoXbG+i5OCn9oAy/0rzmbq8MqrDugPgMTsUwyD3EC7Wxpr1ythT
	 t4tTIDha20v4jQSDd6m8hktjTb6LAuEp1vQGbANbLeoQ4utn5TSBv4JTYwuOna0nxO
	 qXNnZpSD2qlB0U6oIsUvnE6gYr7aVfsYJtJejDgzWTo6bdrZPzRYKCB7IrE+17MF4Y
	 OI0VhYkP5I0fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C60CA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179175723368.26944.1825913049617802715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c35a14478ff900c1e62ecb6c7c08b8923ed5f73e3b3dfd50dcb26ccc1dcb9b83
Date: Sun, 11 Oct 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791757233
