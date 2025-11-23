Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B530154BF5
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 05:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763874114; cv=none; b=pNvZT8BVsEFjSfViyB7cCBwxtZvnWz6oiCnDnGUdC8tOV1xWxjcAWDkSq6vVUxrUghUlvYt39BcyL92MU/vNWzZsO/zZ3/RsqgtPe9IE1k5bK+7tgS7+NyL6+GK1XhhMOTNY+OsN6qTivkIHRw9O9Yg9thSnXZOVjdJLrDKY1XI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763874114; c=relaxed/simple;
	bh=8ojwERU6u6igCSXztrdXE7xVvnu5rxDdfkgB+kiMFdk=;
	h=To:Subject:From:Message-Id:Date; b=qWDSjKPnpAgHlxPRz15gIk3lLUrIvW3ug+dEJ3kagVfgYoLs2e1qPGE4DlP03ChqertM6kh15lFSUzIvnG9VnabwbZIMsvyFW8A7yZkWYVZRuVqGrgLsF63Rjfs6c57p8YYe0GC+Jjf/pxZKSu3dEnRcJpROBU1KoQxPmonU2DY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t5ygj4cl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t5ygj4cl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA19FC116B1
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 05:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763874113;
	bh=8ojwERU6u6igCSXztrdXE7xVvnu5rxDdfkgB+kiMFdk=;
	h=To:Subject:From:Date:From;
	b=t5ygj4clRluNJL8F72KDv43X4xmAWMzuEwSh2KCvdhjVW035cOnrec4BlYsIwxxze
	 L+y3owqMCmi/0bZOAxTZXaP23hGqmp/xlDgvCxot1W1FJ/pWH6/UopAhFc2k9Ei72c
	 gwPwe/HrPLnwyWHjbRagedaCaUUIqCDTGTOJwZZ0SF3c35WyDdh1Jxe8muF+Bc9R/C
	 5DJo/OHIBkL97TPZ/ZCE7k/HHBjMcsR25l/mcJnmkBAuGOhlbv2+D8x5hSlYY2UKfX
	 Tg8c5L8vhSndGaYxQzDf93n2CoardQSCGvPOYnMgO0+PGxFY6bkWNbrQVxE0ZNMgoe
	 jhz62u/m1T5RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95190CFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 05:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176387411359.3375.5861123324876947238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d1d5101319c018591ca051c5a825de64a5b7df2040462a4f29af07cf5a24599
Date: Sun, 23 Nov 2025 05:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763874113
