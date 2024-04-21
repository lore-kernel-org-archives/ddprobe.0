Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E58ED527
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 17:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713720023; cv=none; b=iswWy9Hb5SQaruMkbs6oZExViOU+gqArTnrH5QsyViUNkSmMO2+JZSFcluA10Nsl6Mdb7jD3TYGhdVIjivEYx21kHJeaHXKsNDOZlz1rEv6tcOCi+SYSwomjsDFlxOQbucquumQhaBNMTYApoE3F7/PzHEJ4/UtXDA0YXfwNLqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713720023; c=relaxed/simple;
	bh=Dc8CZbYaucLG/MX/za0eWhKm10GEjy524MkyaSO+L6Q=;
	h=To:Subject:From:Message-Id:Date; b=nBXQ9IUqh8+CvTS4SjMy+33LLwLHQRceeY5TkzsDrnwz6Gh95OhjguhVdtawUHhD7GdR284c7ugO7Ms2WfMu1acnLdoCSjFQM8ZR7xZGNa8XBV/ixbODVIfged2J3vPR2HPBj0crJOYZR0TmU8lCBf6BUq51TRpGFtu682rDJgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g//wugi8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g//wugi8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFB72C113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 17:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713720022;
	bh=Dc8CZbYaucLG/MX/za0eWhKm10GEjy524MkyaSO+L6Q=;
	h=To:Subject:From:Date:From;
	b=g//wugi8ZSE5/asAdhG0Ype866XiHBU81LmbCdiRdNXD4+tP1ZEnbJRbYz6Ro0YVT
	 UskIYZHG/lOons9Thuqo21VRhsWPpO7LQWvxDuZZuoZ2HUfga1FAinm796eb1LDjZR
	 lAgtzHhga1NgxDrArBLG5ThN5phmGCffgs6d8bxPSz521kCtnh5rZGLMAMM3HwJISx
	 lt37FuuEyn+unYBaeilLu1o16f7l1SBhuHKJdtpg4EC7dSJTa1y4cLCDaeBtP7YG6m
	 2jLNgD8drljQTPfb3dlki2QTX6FjPQmdzRH5MWCvNbPS/mt4ohSJhZXyB8mDpMRvaI
	 wdW9+UjSsIyJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4183C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 17:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171372002275.12185.10448888991994504257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbfbdfe250c67c7792fcbe3726887cab686bc7eb0ab74b483bb927cb26d78d05
Date: Sun, 21 Apr 2024 17:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713720022
