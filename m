Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E77130D3EE
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786560034; cv=none; b=HEGsXux9ln0DlVrlSM7fVOGFQAO/H6WEKla/lyC8TLyLxx/bhCSYe5FPsguQvSBiuo5fd4xqvMHc9w1ydj0twnIjVG/qIuzjx7T7erJ8d8/K/dj1v7j22qs9y6iE/Ta3JvyNkqt4u5c/NVOi0dOKdSoJHeIgcHsFz7acpKAL9e8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786560034; c=relaxed/simple;
	bh=00A4zV4Tw8Ss8KXq5RuTbhHYWEEkhS2RvT1LQj2wjEg=;
	h=To:Subject:From:Message-Id:Date; b=ovsTc5rJYnyNSWheFuhyCh+RlypdrA0PG90bi8lYVefWCnunHqmWBZW/mJebdOUi+wQGWjE3NtBWCYixIi1Wo/spdQxvN7B3oN26Yj6aitzJU1tdXxoaN67z0btzJ/zwL48Mp9rM8TIV8feMaPD/h9o44iEdQGV/+Z1vPexealM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZK3DaIE7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZK3DaIE7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7CA1C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786560033;
	bh=00A4zV4Tw8Ss8KXq5RuTbhHYWEEkhS2RvT1LQj2wjEg=;
	h=To:Subject:From:Date:From;
	b=ZK3DaIE7AZwwV2T/GRgMxjhWuEDsenOWEQOeNz+As5AywyRujElf2R7FdrNyJxIiY
	 q1cnksybqINc9lXZnL2xdZ8l5O9q1/dVT59BaZSM5zgTNiyTsZ1fZg4D9YM8yzHHBE
	 qoJEYS+DAGm0NzLYQyiH5nNxfPSnwJQpE0HWygsPNgtIp2mJy6SLuNJu+Jf4Wz7wQz
	 CicGqV/FtRMhoUIQ6Kny5cgV9XST44sHQsQViV5yro5xCtovPIbFajmgIUKDuI7tBT
	 fZDNvomgSjlq4L8CtWqUdz7wptjOHD5dJnx/J63+SBv/738DNZH/mRpzVLcPA+QzEh
	 pdNV8F6ZOHunw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3427C5CFEB
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178656003372.13289.17577910631931846569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7f3b5a65264fe8e22236cd7dd0df6413213c7046b3bb6a0f543eb2593317537
Date: Wed, 12 Aug 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786560033
