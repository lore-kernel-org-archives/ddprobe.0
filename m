Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B8E27BF85
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757183994; cv=none; b=jo04Sa8Y3WFoRZZcZ5ebmsMo7XUdnJNfWb5H9Z7JixMGFqPkJwi4ABcwuztXj6YGPGaom5myU/kobHU7uJdx8yDc9kgEF/J+3Kfx6tVGTWijDuefHVhGCN6sKzOfD4P4thQ9zERWln2oNMjXdlwpckE0jfhCwhYabbcqZtl8Xws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757183994; c=relaxed/simple;
	bh=rd66ohRtYq3Yt6d095q9XyZfiJmW+ShE6AkGuyuCFlQ=;
	h=To:Subject:From:Message-Id:Date; b=uHqrMM+TCzOjDrAxR+UjgvCZ/mcJQ9W1D5a1M+4jc3LfZaW9YgpObjvrP4BPpc1rur0TDYRFlNuG5LCzI+BwagY65NfO2tZocHmZAq/cEevh1RvwRlSN4G87S15jJHspGXYXKovRt38WRPgm+mh7YsEcEof0nyy1+QWR2n5eug8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fXPMzTc3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fXPMzTc3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4C5C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757183993;
	bh=rd66ohRtYq3Yt6d095q9XyZfiJmW+ShE6AkGuyuCFlQ=;
	h=To:Subject:From:Date:From;
	b=fXPMzTc3VawKb9/GwDERYWU/BcXR9XvdLBnWHi4S0ISc10zyf9PIn699vuYzSMvQk
	 iNKrtVJ8Yon797HRM6y6OmFqYrlBhOW8pLNksahrnMG567Jc9Jk3a7bGY3JTttRuyK
	 NkQRYhLW5OCH/lM4k5/wLY7W6d/7ZTsFRpDKYelaRJ9Yq8ICVdcEJUeSBY0rNqx140
	 VwKOEGWcfk/ggyz0BZlAa7ZsG29OV8iFgGGf7DE5Pasx/TQqOIN6gMkWdisQEp5QSm
	 H10jG4cgykqm+W+MlEG0ykVUytR21sMP0otQKaMhAw3IyK7dW9SgjECvJ4fqgOSCAX
	 17QQWNes3YGRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902A8CA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175718399358.23093.2438061430672851711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7e16fecdc41bed55b820628fb6dc29757fd3542b152ba3079151838273f6443
Date: Sat, 06 Sep 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757183993
