Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BDD3299929
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788016234; cv=none; b=GO63tusrkSQ0DW+4XHtN+8WVySxc5zwZ78/1TfCSpY8ZrX2aqJpu3QEM4kf/saTjLsKgTwS/kTLOBB/qPR4kwnNLKozxHfXrsuZ4xmKMdRI5AG74lCuamQM5avkt8ESbg9i3yN/1lbMrPmGSKxN2UucAAyVkAgX3W0Ht2NE/cFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788016234; c=relaxed/simple;
	bh=5iNAwTqPYdiPOTgC0gBt0MNdv4b+ZDrMf7LrIfQqoGI=;
	h=To:Subject:From:Message-Id:Date; b=PwOBF6m4xtSeVxS37pjfyRlqjYxi/a60MF1cORloZh9CUP2Dz5/561ZPE+sDZYQTvjXkKyD1swImkBJMwmYX0ak/Nvo/RYWDvKuFUHpWItg6jsNXMqAahCBiyKzmzgMtsIK1xzDmpcCQnOjV0BUHyMs/ubIla0eBv0ujlPqkgZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZzT6yEJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZzT6yEJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D598DC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788016233;
	bh=5iNAwTqPYdiPOTgC0gBt0MNdv4b+ZDrMf7LrIfQqoGI=;
	h=To:Subject:From:Date:From;
	b=DZzT6yEJqXCNjEETaDcIn4ivEs4juu8ziRkuH9qQDFKHdneeFnsjebeNrBVbwAJat
	 ZZIVgRMFyaRdpIWvnTq2J1yXaLoZtKQegztGCtXyx+ucVXuEVge90v2QnnN/YJoCUN
	 8lBBwOQfkh9rvYhQTGQJT2aS5wbCeulv9IRq5PYLSYBQZTSS9m4gztbxbhAVRKM20r
	 RpX/tdfy81YvSfeckN3aKfDahnDM1OjBDzQxDwYGAmfqT+L4cdF/tVux0SSB3DNS4l
	 GfDfvKutUAwJ3SRnlKeXsQ43IjYMMQVBDDHU4GEUFyEnZRriNE/gYH/Q2hxn9vvxEA
	 zalThK1v7/fpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBEDC61DD9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178801623368.1428.3599254813079823614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3c8d0ba87fdfe23a8914079a4941e3f7d2fbaea47767814860dbf6100d08394
Date: Sat, 29 Aug 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788016233
