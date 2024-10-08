Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5301DC046
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728404754; cv=none; b=acU9ozJEtHFLCOnsZx7mnEkQz6KgaIC6WOXkZZFHzrUIakCzyXLCk1cE/JB8WVj37R1cFeuSw8954qOZ/Q6PP6og6hv1OobYFWskcYGOI8nuZ4D9uCe5LyThPCHxi91kTEOStQQMQuczOJ2rNB5unE3VnsPuXjjYc0aZFCEvazI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728404754; c=relaxed/simple;
	bh=fh1Vq13OLk1xvnd43E1zq+ETvsRxn5/zxHcQcI2Nbmk=;
	h=To:Subject:From:Message-Id:Date; b=j5oEjpvms9WiECKX/0ABu0ALnWjh+N6AeF0Gzn5AUIxQTAXubPm/y3uP7BKrvybVjKRlj7i9MW7kQHSYUi/uo+H9eBZIMuxEDN2kaPZWerU/pUvcsI6IqJBdEDEq4eGWFuLwU+iBRjOoyBK/xjfjaEGxrH2eZJMdk2ayrbb2gLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jBA0ot/j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jBA0ot/j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A7FC4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728404753;
	bh=fh1Vq13OLk1xvnd43E1zq+ETvsRxn5/zxHcQcI2Nbmk=;
	h=To:Subject:From:Date:From;
	b=jBA0ot/jjiLpyv0PTnooiAlZw+8aRT8YMIM7Xp5dJ3iuDIfREXrP4ZDj6hY+07yDa
	 egylORGbv8NQbj5OknHOtI6DFdDOMMsy60PvADAkUNBgiyjsUhKnUGjs5SMZV9i1ZY
	 bHkfXa3KOmqVuecWM1cbromx+RX0TtBgy7fF4gFuc5mel/0GP39QB73Kdqzf7rTcfz
	 AvDxSCReI/0xGQsrx1fEU05DR098dGpx8t71qbpTcQb/a8B9JYsYxCXW0fBulIBDBb
	 /ywygkLY5jEKiHPyUdh7tVwvUQhUrh8NjFWz7ZNGRdfL4cX8vK1IqIbDexM4sc5R5/
	 C1ExcJPwOJV9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9647ACEFC2D
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172840475359.22817.8008582508488424014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 438f61ca4f6045746da8dc6d1df3eb1e5cf147ff6289b06a0079383fde6ea4d6
Date: Tue, 08 Oct 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728404753
