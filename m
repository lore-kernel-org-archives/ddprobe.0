Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A89402EEE76
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792242034; cv=none; b=upZI+wBdgi+0aplxmxFEjqKyffi6lIjXYhHYLePdTevFlaPkMp2lO1XhYHXvrvBxJfnjI9PBh6fzhiE9kRUMusltFGqnDPvkzaWvS+XmK1v8/Ikkjmm+6hRTQDYnoZvDGs4TYEUwjxnUv2g4ZL3g4W7QP7MKoaaaU6dgTgCjO3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792242034; c=relaxed/simple;
	bh=BzGZUL0MKpsbewVqffIyc0N8GirunyIc8ZuIIX4G8Tk=;
	h=To:Subject:From:Message-Id:Date; b=HPrrLyBUGxa8xksY3QYWocKDvqDFSrlOOwT7gNbnkTyGjg5EzHIiJ1mdO9/+yWctAFM/wl5Cee7ANit/5EFzWYf6ak6LXpZ334nftNmTuQeVHzwgR38QqujAaCT6h5MI8JipceViR0as9+JaPTlfj9CZB7PC1fVd+//3dljYbP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFRiEcie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFRiEcie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E18BEC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792242033;
	bh=BzGZUL0MKpsbewVqffIyc0N8GirunyIc8ZuIIX4G8Tk=;
	h=To:Subject:From:Date:From;
	b=dFRiEciePFWSs2QM3ya3+WDjLdraGJeoaR6Wy7WebIDDlVl+rf71+PTw1W3fXxphJ
	 e6ukoWDdmMnoO/Dx9pTQUYwGVCHF8cWDr96iv4KhQsevaN6G2be6JPd8F32jgju9bO
	 XgLHmn5fOax0UlCbcA/BWSjchzp0517S5plXn5Rl+wYpEqrfrxao7MB/F/9Zkr0bXC
	 cz9PeL/whqaGE0FVWBqUuTgc7n84ENUjfbiV7QcTauF0AFYMdeFX7HD4yfsE+NuOQE
	 yMTqMR+qsySvIlU6551L9moBQ2d/Z6HrFsUnBdeTfzM2LAsWqbevVb5sOcLIp6RYeK
	 LwoUKVc5/THGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB312CCF2C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179224203372.23628.13515352812534503090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 548da3f8795ae32802bb44b13a847dea5a82abd52918ce75ebbb377d33deeca3
Date: Sat, 17 Oct 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792242033
