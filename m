Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EBEF523D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 06:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719902123; cv=none; b=pMN7kUHWPQP7CKzgTWc+OLSu4wneCKc1xPqZ/faX2JSMgytN3WcD1cWCzRliG/leolNEavyIH/zgzpheWeDRLwSnwI52kgDAzQJoJ3/9jtCihMcGc3FGHj6O4gJC9ojuRqmqt9uMCN8cnGGsAYMJ7ACunRE2/zvsGNnwR/LXJgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719902123; c=relaxed/simple;
	bh=BrC+JIi4wQ0ZrnETgK2712je4CYY3jcS5+4bC9KhjTo=;
	h=To:Subject:From:Message-Id:Date; b=PxwNcdMxbauV33C+A/yvaXu7Y3UndMsAZ0pVcwnzFd5Aa8Azg4+imw2qbtPx6w1QKiQ0hqMgDZHneX/ELlwLIANyn1kCeRu2Dotu5onwkAU3AtkM8My/w1mgMbfeehz4fzDoR5RBN6KzsHtbPBklx6zMAC0TQ83LA+KpBZqdLoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PPNkC70w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PPNkC70w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB9E8C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 06:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719902122;
	bh=BrC+JIi4wQ0ZrnETgK2712je4CYY3jcS5+4bC9KhjTo=;
	h=To:Subject:From:Date:From;
	b=PPNkC70wGiybCReh1xovcP7HKfr1SlJdboerehKCTAZad7LbLsN2dBJ/UsDUDjBDc
	 AubszLWLCun+zQl7rChqdegzDPEMwO9FuNhkoUA2cnZbeBMMTqgUi1Gpoh2cQk4c5m
	 QlLhbL1ZuZv5EeBMFspK8GWC5i7vvVXDLx/ppJ68XZaJxlupr6jbh5s/4Sqg9A6UFk
	 pja8UDULAyaXIoHAC5k23Tar4gwg/KXAS8J/s70SHkGmFbUatUqYxmRO/XYIqNBQvj
	 KS5/SDbOu507x3fYQP7822lqTSfCZSW3/Ofq4CNNvXL1s8DhTHIY1ftgHy+fAxu+TN
	 1w3ciFWqXpDvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEBE5C3065C
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 06:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171990212277.5253.2955227501161167790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e6fa221d38ac6e1d461d36c681c30c023865420869e9fb27214521ba26d6a11
Date: Tue, 02 Jul 2024 06:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719902122
