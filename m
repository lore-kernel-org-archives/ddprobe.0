Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137445381E
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728660954; cv=none; b=dsirpsTmDWgwPSgXaiFz45SBeJQTZZIiwkvnkkkIYRyUcjcf96I0nlwkXpa3O1n+vryEvohk0ijooXYOUFKaSbfpQxUXx2Fa35NSDbuBQHqwD+6Wuxh5/jD9a7dVAZ/i1PKbSBqXcvpWkQI0zEfDsrTwq7OOIoJHFvaL9FBkV8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728660954; c=relaxed/simple;
	bh=8wXFQCwXdGSRCWVW8L1P+efX/m4CvyAD54U8WlZGpFA=;
	h=To:Subject:From:Message-Id:Date; b=j2Tjn2dnSJXgmsTsOYvY9crXIyX2rdyM11vj8Ees6nITXRUk2adPBPDvEw0O4aXLS9GX8LpxAVIgJEZ4cU6H2wmMkKKITLrm+HpGZjz//FF9k2Q9bUcpQ+OekrR4km+3OGzCx5OMzCimAkK51kyXyXb3RJ4Alv4BpUYeOnn3yrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EKcwVVTq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EKcwVVTq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D53C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728660953;
	bh=8wXFQCwXdGSRCWVW8L1P+efX/m4CvyAD54U8WlZGpFA=;
	h=To:Subject:From:Date:From;
	b=EKcwVVTq21YkK5rpk9xqCVWY9ZxIYBxWItbx32vsPOW0XgFTOQYhCG0qk4LmXpSR1
	 JJ4LqmboDdV1ETkeSiwPX1hSGfnweXo10pNiqivvmWCytnyiPZZ8QFhk2Yns/5DLuY
	 vfJfO+/2DeHM5/iVGinHugxyH7sVkrNVFp0+Bn671os687g7ZSmSjXFKrQmff3kMWK
	 xvHJSjPWGgINjhDiCOqh1QgZCNiAvyClkEvsblKIzOcGJqdLQKRb9EFoEsgWZwxFOn
	 F6W0A/YLk7WqSPoRCCjgdKdEXnIGioT930nl4NwRWlgLGiwlgwV5F/CmBbrv9dcPyQ
	 THTmKe3qNnorg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96749D0D7BB
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172866095360.27126.14273846326756086149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22d963f9eeac7f7fb8ab2863c07c55cd55d8fb195a975caecbafa113d37c1b71
Date: Fri, 11 Oct 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728660953
