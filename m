Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B6C1B29C7
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725879954; cv=none; b=mdyjRBGe480N9X/62Ob8xBD5prHUDFgaa497121ztvpoz3UJ371w39E9C5NWjIpIAHBVKsHbKFWZ9XU2cs1cFAa9890+N1tQ8qoiq2lZWnwL7nUiZqBj7iK0z5pjQ+/XfTZ/hGRqdAjsa7Gd0NvKhINoS9AhRqMab6v5ngzb21o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725879954; c=relaxed/simple;
	bh=PjTCD1h1CObN/z1BqqZb621yabi2hFmZJ1m4NmlX01w=;
	h=To:Subject:From:Message-Id:Date; b=LaUsCdJxv84PijEaNfgPPN8xLvdKUd6YGFgYciblz51HzrQAZAr20GNoKZzyPrdtKDQrUmieVtghoHi4pxrAyfb+fZbzcy7RKp5EbYz9yjH+ypvBak2dFnwT0xEC/Ux2gsjO26txrf80Qj+4t9hcCZPb2XFXwMHq2sDWyuiTsWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z42gBo0A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z42gBo0A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD391C4CEC5
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725879953;
	bh=PjTCD1h1CObN/z1BqqZb621yabi2hFmZJ1m4NmlX01w=;
	h=To:Subject:From:Date:From;
	b=Z42gBo0A73Xa7EglRoPU7uEAleSfjUR5tuyq5MauZpoiKEFfJAgoSrj06rSn56TmR
	 RPtOUaE4xIOWe0olQEze9o/DN/qFfzYNL1mTuQcWGFegljczifQg2OVoxWEh0FqnFq
	 SjIoItT3lA5tozvZygorMWvMg4DhYRIT/Puc3LjlW6rTPdT8zS8UEFL3E13SHtIUON
	 Je8v1oaIbrN4QMHrY46mqZfzX2cvivqAtLD4l0MJ0IKwh20eX78oHi2SB4OV9UP8ij
	 lj1yHBE8r9Pr7keit1qhcktp4D+wrtz0gdxTSKgfbUHJc4fy0fcshSpvjhBSGzmlLx
	 nXoDE20OvEczA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADB0ECE579
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172587995362.2449.279340845825816686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85db36ef05d250ca42616082ef28d08377efe78e6e90759109898fba759e4f2d
Date: Mon, 09 Sep 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725879953
