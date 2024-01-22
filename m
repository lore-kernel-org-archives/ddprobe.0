Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D2013C08F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 13:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705929497; cv=none; b=BkiR97qSdvQ6X3XJUJMwDhbdpuzlury5eqfAusvAoG3P1HIsy/mSrHI20BvcIxsQEbLIULHobO9gJe7FfOZTd1AJNj+UBGj8c4CWn1+DypP1P71bJiaH8R5Am+zWffTgq9YzJmaM/w7LsijS3xDD28eVpR2rWkawRE6LGGdlv64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705929497; c=relaxed/simple;
	bh=rhi/VpKbUTdYLskb/J8uN8R12H7zx5ppPTg2QmM24hg=;
	h=To:Subject:From:Message-Id:Date; b=u7o/EfunUaqCqS7jOTmmXNVFXxcgx/DRbvwXZfKcOhwyuzsWyaPQKNtZYLgu/qB+TTZ0lGm+DCJcrwolDuP/JUYCJ3nup5AkuDkw1lx/mHNqwR3Tjq05h49bYzSGzI+7N3u/9bC8mVe054yA60wELAE4o1iY9AqHmhMfOfA4CwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXfaXnBY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXfaXnBY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 848E3C43390
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705929496;
	bh=rhi/VpKbUTdYLskb/J8uN8R12H7zx5ppPTg2QmM24hg=;
	h=To:Subject:From:Date:From;
	b=UXfaXnBYL51e/r+cH9ZCd69IhL0/wQeX5E/gL6EKZ4j6ycYJnbRBVGQS9AYsJLcqQ
	 VDmnrOXCFAseE/9SDcqbwT0O/yt8J934kRCdrB5xIZDVYlA6qy79FUjEmGL8BmsfBz
	 GWThVL7DndVZSZCrweQA6Kceb6wW+RZUgk+QsNrRHTPv4M/Z7wU/W8q7iM7oryISLw
	 jXOZpMia1SbE9Z7+G8/0cLzcO3q/VqQeX/wobK0DNU3fqurw4D5POxwYuDRCP8OfBp
	 1stFXYUbBa5s71ZYQzuhoy5gEiLTdGms/51MlCnU0Na7AtDFh+ai8AzPaiR9+x6jYD
	 jtOcOX5HG+t6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65184C4725D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 13:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170592949640.5404.12481007896840238919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b6388955e9b9f99ec7cfd45e9ffa122b22f279f429fe0ba42b52dd27ed1546d
Date: Mon, 22 Jan 2024 13:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705929496
