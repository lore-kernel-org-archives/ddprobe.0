Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347912DE706
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751502594; cv=none; b=HYkGHPK8Xqv3gZOqOr1KmGBHkdKs+IzkQC1FnHSA4P8HDekNYAUooO0vg97ExW+tMWuMfD063b2eQp54NiyZ37Vm8EPKbHVy4LrpcEHyLYTppY0O7rOUDZyTcOKfvGAnnN/iD1gkP8qh1Z5a20g5E8TGumU98WdHubN2Ka0eVno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751502594; c=relaxed/simple;
	bh=snUQAID5i7sVA7Ne8EPHqwjk1JmKk9tKtaaUkQJzLYM=;
	h=To:Subject:From:Message-Id:Date; b=n71FlLqzYKh1Dgc1g+WkiITg35Yo/O1cl1/Qd69y/BOBQlW64SSmV5fN4Hm4foPtNzjvwY6Crf+mJ+M8zE5L66guOk0GIJo5ISX9/qoyF3ZpXb6fkUruXm+EFgUS1wI4Ti1ZeYTtV08nFqLCnNsQkaeKsvRBrjXi90qfuZk1gPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBcb8l8Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBcb8l8Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D8BC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751502593;
	bh=snUQAID5i7sVA7Ne8EPHqwjk1JmKk9tKtaaUkQJzLYM=;
	h=To:Subject:From:Date:From;
	b=BBcb8l8Z8WI8cL/S3dMu6+fsJ8XbzSYrjEWIMKC7jtNM7zk65sgqa4qeM4ijaYUO1
	 w74x9J9vf/a6Y8CPM5PI2/yKgQ4O0a6F74HtICPzs1AG9iHQQPljNcmLVSwU7vkkpG
	 XWo0YQJ586Fk95rWn55+70xg8vp+TBfGODCYOySvQlMqkZtrzLnw7zkb1C240HbeMU
	 /3czrgrV9ItMgp+nXv4MfPzE7ahgK6HdWpio1xYl7EyK5+0g6QC15WSWBnX5MgV2fo
	 W3XXhydwJugv6FXWZ+mE1IlVuFFiHa+YWq7KUK0lS1OvnCaEtIwQmWg7OrFjp/8kwo
	 685yIRj7mNaUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E51C8303C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175150259358.20141.2625061318006955220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e5923f6875448710a2601b0b2c010a36d5540d13889973fb49898953f0ec14a
Date: Thu, 03 Jul 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751502593
