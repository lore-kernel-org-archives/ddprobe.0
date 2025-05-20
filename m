Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0C225A339
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747781994; cv=none; b=N5LpIFSvbNwN/Gt/NcmYMzxq0QgijwTCWuygaKb754bjeBuhuMzd+o1tNQL+bpc8kI8+5CH2W4SrQaHLvUY/ix6x5hv0KeUZeK/hJEKJpJ3VxwYDxKhc5vcuFhhimmgCOJ5l9blZT4dGnPHFFyNbQjuTYya54mY9A1wBSi0K2cI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747781994; c=relaxed/simple;
	bh=SIRmBk4KEhxdu9dc2G8qgeftqpogZcB4PtkfUKrmC0g=;
	h=To:Subject:From:Message-Id:Date; b=h63EneY/XBigvyipstjv+qx6WwaZXOkdxBh7VM/sxRMWYeM+Fbp2fS9LeAkX5iY7jrXnvdAPi3CZZ0YHcDwpI0Sr8jc+IkQoMXBv98/CBMVENzzJg01JMmrVswsO0t108CsVrockL2s6bXxKC41jSQlLSDc3lvV6P68jOiEEC6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cn6Pj1TB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cn6Pj1TB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D635C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747781993;
	bh=SIRmBk4KEhxdu9dc2G8qgeftqpogZcB4PtkfUKrmC0g=;
	h=To:Subject:From:Date:From;
	b=cn6Pj1TBtQ4oIgmZE+PnNY9m01Pe/7n9gzF1FkJ7d3dophQKn3VCgt8k97q4SgFtd
	 RwEZ4pmesmuCZ4f3UYAdVC6JOOldtWkXNAjBjEN4BgwHiP2VCLoGho/ZgUrr+xHFqQ
	 VQFJ7JcC0RxP6sJ5NOA78qgi3hakOyQveLDUrVEfCMgOWtWiqyCSdsrXOoRECDNKmB
	 DqO/BuulMcsiyuqu1Z8bQpXitdwCJbBp5Qfmmh84asb1WwUq2ARgVUMUgWeEd+i5nx
	 TkYBCu3mHVX1pbllsVIm2rAPEQ0i/BB9nwi1m4D/rKhFNclkQP8iepXkV0rP+keJkL
	 f0IbsTpEu6KVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBD2C54E71
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174778199357.25971.7108616404749577827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 793cb6730fcff49068d1cd16bfd5ece0edcc7d0e7e5836a7728427c9fce9c81a
Date: Tue, 20 May 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747781993
