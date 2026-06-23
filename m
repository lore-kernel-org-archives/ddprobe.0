Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522A438D686
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 17:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782236194; cv=none; b=P3rwVKz+N7UqAsfhasv76tOfu4KYr6d8PlHxlYtheIvf/k1/bdhKOWeTqAzISYVArZgCPBzZFeaBIDz9fCNaKlju6c21MfucakB0x2r+qiFu4s6z+mJRlCnO1DATcIv9CipL5/z0TtoXrPs15cFptV1I6LEdzA0OA9pyYNL/Yqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782236194; c=relaxed/simple;
	bh=pTYtlebH417KvHWzK9Ke2mb92uFFyG0+rReDUKO0V+o=;
	h=To:Subject:From:Message-Id:Date; b=Y0ge1UGcafInOYq78/QJQLVvkhRMosWFCPpv9vAE+PjYhW4Glc7x3d5Q4MdCsh1NphD8Kf3REjMjkqA9WeNmf3ZOIsOHlLH5fsaJGxsh3VTjeXv0UdjFlldIC4Hz0XAKSGi5kYhZOnioEe1x0tomWg+SRrUXy0Do3vU3vgIqoIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s1M/iTt+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s1M/iTt+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B8BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 17:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782236193;
	bh=pTYtlebH417KvHWzK9Ke2mb92uFFyG0+rReDUKO0V+o=;
	h=To:Subject:From:Date:From;
	b=s1M/iTt+lk3bZ519r3gxkv++Bv6TQcr3hyNY+77iYoQLLk58tiPsn3YQkF+yB5zR9
	 M4PtuXJBQsOmOvZK+UScE0nt7aOO4OMYOiiQw8qHmoOfxOBwaiaBRWFMW0FsLmEmz0
	 aEaC4VI9SSZt/iP4egLOY53Kia+0YMtPkv+E90xrlbLNEUztmApvM6I6KJ0rtoQASu
	 3OATN8mn2Zg5dybXDSQ/3hig4au/hQeqo8TjV9qNjuhZ6tP68TkaX84fYka7/XJim6
	 cUuw0+mdL+tpV9lvoxeU6ppl7HHlHp11uEBM6mPfleq5mjzhUAOMz2Nv/CjzoU7tbN
	 lNg7VhxbzWQwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0533CD98F2
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 17:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178223619371.14550.13775956322145912266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86e34937656dce3629939118b92a5a015adbec3292c2d3a79b7a33559af50a81
Date: Tue, 23 Jun 2026 17:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782236193
