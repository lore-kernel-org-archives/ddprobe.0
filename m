Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474DEF9CB
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743301194; cv=none; b=aw5piBlgEGDQd25k+DnEdxtTTEE7fdvvXPIQxag3TS5kuF33k3UndiIbJjSpIrVgUJsvItdcjLxnmQt7ZKTGJsnawQrh5TgDzi23Y3Tn0uzlPhWQmkXxeUpwaMPyuW7N2w7sFeyvBmMNi8OkqoBkgA8lO4GJxYZGwr0q7xevj9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743301194; c=relaxed/simple;
	bh=R+bwXO9mAm2GDge851vOxtr4N2ZVSQIaFYFYglGWZK4=;
	h=To:Subject:From:Message-Id:Date; b=a+nUExkRk0WhrVLWTmdbjkRTwIeh5wR0rUaJxufO7jFt2PmQP8Xai84dWYzaQWrRgHaFjSxREqvjbWXsUADsPCouxcX5cW3tYjR0WjCaxCaYjYOw4nw+fZFw0dgc1vJK8LmwThK5/WCWBqSE+K/PFc7uXY75ggskPCJllOTMRGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d1lHu7nS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d1lHu7nS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB284C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743301193;
	bh=R+bwXO9mAm2GDge851vOxtr4N2ZVSQIaFYFYglGWZK4=;
	h=To:Subject:From:Date:From;
	b=d1lHu7nS3VWVK/PFAKDKVXQKpNa9oN7L/4xzA0B4msuQj2FqDbey1mLPs1ga7sqGD
	 62s0TNrFInpcKyDPYYlcQgdFreYs0gFRJ5hMpVZvyDrOq9cDhzGYW31A8npKBMjH+L
	 jELYnGV0pOX75XT03SQd5xdj/C02S9EXxpeGgcqQ2XOEsfkkqqc2yc19aS3mc7xIJv
	 k6qswwkICmzWVBsNCelekIf4Xw9wy2/siTqu4/jD3Hr2LmIPxUz3jY83kCP5FexzFB
	 29y30cIWr+dA59foX3rbwESirwu6xQeR1267C+WZWwy8Z+fovaIYrgEU9kLOlYsbBm
	 yMPxY17W611qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CD6C36008
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174330119360.21461.13523715927997735821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 271319e3e3fea991c05fa9187cc97bcbabb6c47d8d17542a55ff00d24b26b275
Date: Sun, 30 Mar 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743301193
