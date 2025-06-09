Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297B32459C9
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749436794; cv=none; b=YrePRlFphC4DOa41fZWs7Mis4U5+xz4KEC2rEsVFTVD1npOliioppTwhP9+jZMbFzoDKNObWiOKq2wtLPRq/KMuYA0+hUEVpdj3g5LYcdHGQlKkOSkG3SgIfhelnd/d4YjCGHrYffnesvTZ70DzTdZDHXoomT/UyeEKlW2/uUxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749436794; c=relaxed/simple;
	bh=5WxxFbSE3xHZOb8GKcj5xQsDAbJ4WhU3M/O7cvIPbGc=;
	h=To:Subject:From:Message-Id:Date; b=gm8aMXIF09uNjgN9BJTzJEpb/d657PQVw1AB0Z9wFlaPoXEi6EnJjQgMPctBWS4mpDm9b6NyUAsm4QCONuH3iItKMTLM80P0e7Hw2Ty0uSqfoQo0TxpekDl7UT6DjP/14tNnRz+n2nJCxU8gzAaYN/So7Uany8QFaicF4K3WjQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YbPTbxfK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YbPTbxfK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBC3C4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749436793;
	bh=5WxxFbSE3xHZOb8GKcj5xQsDAbJ4WhU3M/O7cvIPbGc=;
	h=To:Subject:From:Date:From;
	b=YbPTbxfKaNUUu4RL06s2O3LXr97WvB3bM5DCS72CXshHRRJG7QYo/KLURKKmAed81
	 6lRmQ3KO9iWXxjcD6w7/XYnfpyN/+bofzBeuieXPO3rRTIVyWt5TkXG72kmTkhdZdh
	 fn4vbbkb4HByioqqw/7wvyPAhyBemip0WlsCmY3WnfK6Y5u+V9+szPXbYEH92XgShw
	 WWaZzQl2bYj21umVauhRhtNzTymKwOsbNxhh3Xf22siH/pTx/sUUghyR5TYBdxXcKY
	 H7bdGy7aLeHO81lvXXKwdr8XOchNV1oWZHhCBcjImJPNohV1PvvyZMF8lro+D4psES
	 Qwby1lH2DiKTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E28CC5AD49
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174943679357.1197.1242223669487727120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6976fcaeb56d32ecbbfc63ff4a75484a99bdc5dbcb6db95d316c22c878ca9dd7
Date: Mon, 09 Jun 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749436793
