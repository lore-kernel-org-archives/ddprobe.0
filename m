Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28629E56A
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751311794; cv=none; b=VJUuk58O76vk6kNPELOyBNqijb2oA40N8byq3VAAIMBUlF8TX7/VpeVXO2r0WloXAL3L81Hz5Orc2UFP1N9EF+IzBYe2C5dTF5khxToZR/BoAKPOdDt9S1KDydKM+4LeAuFgTKyewAjGTDAzt+46imHfk3/7Rhs/H3E0L56oJq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751311794; c=relaxed/simple;
	bh=gMV62KU7Sq5pvNQEtuD4T7pU9J0cgGDeiiE4/IV+ZXE=;
	h=To:Subject:From:Message-Id:Date; b=NFT6vg9oRu7zo4TUB52fR6/1LQf5xhIPms6E7Jk+hpfDVHacoYZ6aVq1ZdyVHyaf/Yl1/1/PKFVKMNvrk7q8MdmCLsrNpCS8N8Q+SUpHH2Tfv6JkXdK10FjKN56m0JEzXOkj/mJLELR6YTr0J8uIH8COl8P8yi6P7LaDel9uKG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHaCgopN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHaCgopN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86E8C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751311793;
	bh=gMV62KU7Sq5pvNQEtuD4T7pU9J0cgGDeiiE4/IV+ZXE=;
	h=To:Subject:From:Date:From;
	b=sHaCgopNyVXL34irzXw/lXDQPOaHbEQRM6m9sT1HHLH5UwYYBWM9ICEM+VDn5+u2y
	 QsfP4/IFwHrJj+S5dc+yv/5n7Nq4Uo2YEdUhJT0oRIrTI6IhBY71hOa0adDX18honY
	 qZWW8gaMlodd3YkNxzGGS+vTyUJ2AZh+djgtfVD+PMOhIysy1hU9hJEwf1yF7X1cQP
	 Yz7lH0QZtOdAKjDm9Qqp40P4tdX+lkn3AlfLR6rz6BKLpEFSKq3kowUWnUwtx+c8pr
	 n8/4Q45yCVIMK8bvUBeXy7rUC/Cx5njcj8KUUiGpfVivdRwgXr73IcAQhlrHOTERSd
	 ZUwP0U+5cT3Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DF4C83029
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175131179357.32503.696906367006933302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c228f51ec7967b1df5f60622c58a31ede6d65bbfe9cba0323e8cfe6b2b62d882
Date: Mon, 30 Jun 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751311793
