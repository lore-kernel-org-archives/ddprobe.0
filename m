Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472FD18872A
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 08:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781770594; cv=none; b=W6OoMazvIotnqmdy1WSeIwUJLxXestsfezU1bQ+DzCJYPf+x4stZFvAplVbcJjfR8hmoxAjnDsYjNi3NU1iK7c9CvmFKTuBtbhw/d64NZR4QJ4zOo+w4tSujjDESDdb9eKiG73llvxxWgrcZL0RVtrRoPu6NAAo+Xvkw2Fgbr04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781770594; c=relaxed/simple;
	bh=VQcFJp5aY/I+mT8Ey9El6w6esnWvW7yxaYyZUR5x7cQ=;
	h=To:Subject:From:Message-Id:Date; b=RIkW+YqXU7Ce9bsoRb5gqQMRag0aabNhm2EzDhAt3pJvF8FQZ8p2BxCMBFLVm9INmLRKcmejV/XMT28qoUTkFju+dC8PlAEcGWTqMSrNX7XMAxhHPn6ctd2QRHdJjdGpqDLWsiS9K7qz0aiLn1KblveeKw5kK32iwoyyvSR8/eY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HS9TXMa5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HS9TXMa5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF99EC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 08:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781770593;
	bh=VQcFJp5aY/I+mT8Ey9El6w6esnWvW7yxaYyZUR5x7cQ=;
	h=To:Subject:From:Date:From;
	b=HS9TXMa5XgFYxwWQ1zzji6uUqvglM4REi9vSPqwQwKQcOjO2BGtLGl0p/bQZgK85t
	 h+7o+BgmCH/JNBkXXSg5nUATW1AXBrwFXngrMfKadI2SJt23QdiicENWcn1LFBJzXL
	 aVPm1I9YhMiaYb3Kai3nG7FKwW+2YIQ/QJKgsUYgIIYSx7FAGGUhQhZKOJqOg6G/8w
	 eaRZJV16NTce9bR5O33dHf5C/AOuPoVyzf9VvzTGy2J8wUgHAyE3HKcvh/Jfim39fk
	 A3yU0uDEF8HnhryS/fyRwz8Y5FQv68/o1tOKBNa2Jl7wmiskfmFJO2AXnZXrEkzj3H
	 6y1h5zslG4PZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE71CD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 08:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178177059369.22390.17745894551689769404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3397241474adf63d1b917d16969bb69b9643c7e5010a886d7a553859bbb4cdd
Date: Thu, 18 Jun 2026 08:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781770593
