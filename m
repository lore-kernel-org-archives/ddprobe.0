Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DA82D7DEF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 03:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783825714; cv=none; b=XFpnJMM04ddq9Kx9SVebaWxQBNTX/MNFakJE/qmQpey0SUZG6+nRATyM3TTZpaE+k+vNW3umAoPVQg6ZRcSupw4H16qgi0rsl4DuVTQ0fyZbqSfbdeug/gHhk/iy2YwYc37rSs3wLqk+bfZKaqS3gbesCZbYMZhEVPZNwwj5YZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783825714; c=relaxed/simple;
	bh=oVfLh/WrjtCfEzi65LR73Ku3ba+2Lk0Ze0Z6wCiDWUg=;
	h=To:Subject:From:Message-Id:Date; b=jkVcODqBH61yWjv8tY7YAGA+69/7nv3lWNOogzsIOd2/5OvoQJImce6kf4mS0MgtsjlgaGRjk4/TEdfit5/PTmCFqXbfjYF+MgdXDqTReh7/RZPnpZCZIRVlBPQQqdCYR7/Jzsx5QWF7z7UaAbipODn74YAeC0rhtV8P/qkgTNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ux+3850b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ux+3850b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE03CC2BCC9
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 03:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783825713;
	bh=oVfLh/WrjtCfEzi65LR73Ku3ba+2Lk0Ze0Z6wCiDWUg=;
	h=To:Subject:From:Date:From;
	b=ux+3850bvsfd+anUotPX7NGxz1662EfZUo4kUFWduRFcqkufhn8HXk9JVCjmuZj17
	 uVd7YGW5E9smD55eAgxJvHhYV7TJT5SYHItqh4tSf0dKcfCxIv9bBhUyqslTM3SpI+
	 wTdaoHUueKCyILaxeOe5w1DA2+e4Ofy0owaAvMykPGHQ2M6BBskuLnBpBSfv5ADmJB
	 pyUL7Kti9wLqjzbhOZZ79jYeDxqO48U3clwGfXRri6QfkDsBVqkjrCOLW/XTa8YDUh
	 zgfabjGpA4eX1ghYRH8VE6HNQ0tcwkXKZgMq0kblIC5Fyqe6j55VlWYxF9qSQ6mFac
	 3Ujek4rG43G6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB069C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 03:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178382571368.26219.10730330245347659161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 423e7b3e876a39977ae5e6953a053cab841678b214df6680195f077eabda126f
Date: Sun, 12 Jul 2026 03:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783825713
