Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FF42C11DF
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 04:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768883035; cv=none; b=tG5+TCrRPC/8bQk6JVJspW7j2CVkVH8tBdC+DxsQCi3dKb0C0dx0sVx+xx9xYBpvhp3Sqzvf+Wxh2KpAMyMUcYC5I4I2BZRq4at0xK793ubBd1rnMFpAJOoeDh0mLfCzhPljbFOmHGm+uj0gk9C7tg/EbMnP0miECzzZYMHcgrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768883035; c=relaxed/simple;
	bh=WB0NOQrQ2zJQfI4XABKcu/YM4QpvvvlaX/7MKmP39lo=;
	h=To:Subject:From:Message-Id:Date; b=Mr3a1Zg4ZhxMKuDAZOXK6riB0YtggZgOKqqJjbwAiPitl09kVafUxYbfyPr3JpoMD4vvsqmaFqjSjgXM4JM+E9g8GScFP7P2anwz9dGWegnUHjBOOnsmoHAQqgY0ZDktbQMMoKmE7zJaATS98mHQ6I16N061VSapmFqfWt/r0y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sf6sgHsK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sf6sgHsK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B797AC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768883033;
	bh=WB0NOQrQ2zJQfI4XABKcu/YM4QpvvvlaX/7MKmP39lo=;
	h=To:Subject:From:Date:From;
	b=sf6sgHsKXz5wcJQs1CnV5u8K79SjJ+D+2n6kLlVN7dWVIe9TNakXBt15ZWZDnIr0B
	 Dtd/CndxODmGXQ2gV0DQm5oReRLkX3hvceMRXCVdztOMxdIG6kGQxQqmG6fM98FNXi
	 MGUvb412XvC1gG9Gz7ehE0L41oV1cx1XM9XnwfzKYN2OJYisE0zxKdczKXtAGwRqK/
	 08cfk/NLJzxBA7l+9E//KgaLYmsY3RVHyAS6OHTCz89UcXKZxbdFKrp0B99iYZeoty
	 eLEw+XggKx205f103cGG0KR20YBH/Cikv9tvmSah9DIM396VORsxcis9K3maOZHc9W
	 NfW6wF+pbFKWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF8AD2ED11
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176888303361.7525.4022942412840126066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a5d73f63cce495299bce48434a9f0206471fe5622bc23ee7b9694cdee6b6f0f
Date: Tue, 20 Jan 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768883033
