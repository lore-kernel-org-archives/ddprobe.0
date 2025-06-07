Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334F31C6BE
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749322194; cv=none; b=MLOOOZdeSTlvZ9hJhTIYHdCrafatChrjwePbsZZntUz/Y1P45xJcZUevJ5E9mkAhk6tpoXYqIjdJy72ByeyVkSuhWLyj/O6hTzshiVvKeDWK2tg4/TAgXYz7qFpToXcMYa4NVl8xj4y5CgouTK91Cg7I0eZy5OYI6M7QTQ98jwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749322194; c=relaxed/simple;
	bh=twq8Mh02ThI2qatwKlLZR8BW3txgkTCKDp6il16+Bl8=;
	h=To:Subject:From:Message-Id:Date; b=rXgVeNNb1O6NrcLovi+B/aCotgCh94C9AhAxrIDfOpoUD0sN5QAluyXyTmF++gXOliEOaZBEAdBs7EnDZsI3xKKk/LuwmdJ/B9sjUTlk9bp2Igg+IWQOgLMyJGsfBbhW0PmD07KAKXaeIPz7J/JRgx9KvQBQ7tTjRTeBMnwsAKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gE0yi/s6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gE0yi/s6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D2BC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749322193;
	bh=twq8Mh02ThI2qatwKlLZR8BW3txgkTCKDp6il16+Bl8=;
	h=To:Subject:From:Date:From;
	b=gE0yi/s6ES/r5hFswCGsHMenRhY9ais++6pn9szJmzDdwrr9AWg9vfADXdzQnfqtU
	 yzhuwXauv16qIhwGPMhNreT5OYgcThe2X951h0lr2I9kocnx0BaIw0eGSJKFd7sFfq
	 Ls+dPyQZTDV6yxGjAg/ZS+pCEuiyheG3LPtom+0oDK4Yfp1E5Xerx+DZM+gYKhWhni
	 EJ4Y5vPo0KRqwz0fk3FgD7xiy3TPtc2zBXchnb79MY/yRUgRyK50JZcZ9tpY1OxZPT
	 VtfrhCSfM2hy+NECJ5KxsTaJq1GnN6ihJ2sJtrv8T6UuQAoYgQwJmhxpmuj8ROqI6v
	 N8NmFQySlnNHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AE1C61CE8
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174932219357.26254.4959368520473322118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 238ac3d50400cd506cbd4d5914dd53f35ca949c629bbe3f364d7263de14d8bdc
Date: Sat, 07 Jun 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749322193
