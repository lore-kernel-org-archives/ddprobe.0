Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E6C1332EBC
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 18:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781203594; cv=none; b=sMfsX8a66ba5Y4TgcsSn4zQki8CKyCRnme3IzeSdOwCL3FgZ0oAPI0MsU027SBNn7L2yjs4+Gbt3omnNCJ/5WaHGjFf4uRHMH+q/VZb8aavMq4PddK+uOQdeSQ7qaElijzJRjoOG+RYZ67Aqrgew8UUZh6k+2ReEQADHmfLvbo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781203594; c=relaxed/simple;
	bh=Jq0gycVC9UW0SXV6A6zNxWNSAcpgwOx6JXEBMRiryPM=;
	h=To:Subject:From:Message-Id:Date; b=l4pm54dN8u8a+oB1N9QMj3YijtMfHqHsvTq9AhvnHVD2ivYwZLeJ5hnMYu5kDXy8jFjVc5to9Y5w9KCyVk289hJQyiv47/rWF3tgbtDxLOtnVYS3m+8ympqMwwOcBMQ6jIdAbQAulXmcIR7zbmmOqpDj7pqRK9J9ymc4KvjxZG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tU0MWqdA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tU0MWqdA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7E10C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 18:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781203593;
	bh=Jq0gycVC9UW0SXV6A6zNxWNSAcpgwOx6JXEBMRiryPM=;
	h=To:Subject:From:Date:From;
	b=tU0MWqdA74cVUUmoP11PDI25XI3uutUyTz/diyeq6QvryjRzoWoPk6YjMKxNY1qZk
	 XMmOrHfhu9fNXuQaBKK7G9xidKXl6yjoZFYAtM8QJ/AOkph4StNOP0k3Am9YJN58aQ
	 6J1clNKCGYQO6hYqI/Qvbn2crH9ps4TyYUxfJG63q7urMsHyEObkv4ckxxl+pp6+8l
	 N+bze8DxULGeL+2+wi7jQJaHPh49UlZ6qwvzpKoAPEI9ih9Hd00oi/nDg7KCBlfe0f
	 JQfa6nx17tSvPZRtnkaBUgNTbsCp8VRxlxgoveh0VvO4UUbWHdDIkGdwQPnvw7NYLI
	 iqpK4udZP45fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C55E0CD98C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 18:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178120359379.20515.10204087212999597196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb5dcb0f591bd0933d72bc4a0848a0d7d62ed4176c71bea85f06bb9fb7ca7556
Date: Thu, 11 Jun 2026 18:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781203593
