Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B5C9503BEB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788634834; cv=none; b=MrKQr4lCUx4lbWvDAjQAz3DJPOMnx8IaLyNszu/PAlWwXgpE+qqW3g+rXlCcOs4RKkr88OCH7x7zzTcHh+L+IIfM8mw9677lqcwExvzUtwF3vE+D50qfa2UFrfBnXSdztBnenjjzMF20W83kLCw8zU8illcJgc9b/Cy8WMag80I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788634834; c=relaxed/simple;
	bh=GTC2pCNgs/pDq0nY6nHjZ2wsQcw79s2QSvgaoRKxOTM=;
	h=To:Subject:From:Message-Id:Date; b=JR9z0NxhNqsGnzc573vUNQzNS38kQVU+mrb6lMsqK3+GsehBzaZns+7RkuS++30tVoRtnzH9M7y2239Lvc0i8EKGFPbDGmE5MznP9Qa8nbcEDkqp6dlC8MTWEl8lLi1mCVDpTU8B0VKCnChIeUEgZb1WQldrWyOuebYqASxLXmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f8HywMkV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f8HywMkV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D601BC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788634833;
	bh=GTC2pCNgs/pDq0nY6nHjZ2wsQcw79s2QSvgaoRKxOTM=;
	h=To:Subject:From:Date:From;
	b=f8HywMkVI+2ThhcPPKQ10kPRX1ZKir99ur8VBT9dfzHNFcPpzlFHQhv7urDOKVvSO
	 cm5KwQWB5THHubi5qQNKgI/MjfrLONcsIfk+rOJJMBz7tfU9u1UzMZ8Tgx1dijjRFA
	 /k8sdw5DtB3MyHiz3mdlKjgjb3M7dbpKT8ibRJsaigZ0BjNH7AXoCAVPY44730GSf0
	 a+IdN4qClaojV4eIYiDzOSNrdn0d+IXbQNunMC5NuCcWYRj37Y4kl0diGhNevTyMKM
	 9ys3cO/dO83trJtT7jtZKeMiNgGF7evW+6GGLAYyAoqtd4THQdbzxlSYNWYP4WmHP0
	 Dn0lfbe+X7uEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02A4C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178863483369.25261.718664224512468408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c8066b624552421d51b29c7e50f601abc3a511485e476da91a2edb4c14cc71d
Date: Sat, 05 Sep 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788634833
