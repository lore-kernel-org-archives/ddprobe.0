Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE3A1F5838
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761407994; cv=none; b=HsOqp+EozTOoPig8wuzzFMV0uYwUDVlUQBd44HjoN2Doff3iCkorXGZYbWBFew3aHR33cEbqCdUk29EqKBuVLQKbSJutuju9Zl5mJkzXXjgsH2NGb3IijCDpE2qJcGVJFisMYqM3hpZ5iwh4ihfC0ybQ3zg9wzKy2zvonVUv96s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761407994; c=relaxed/simple;
	bh=T29XTqwTE8wDY/DDX07wbZkUc/xKfHHY20apNBym6Zo=;
	h=To:Subject:From:Message-Id:Date; b=hFgLYgCodRUB7i5CbXvh+EG3EPwl5SZE2J5N0K8Kk3kLsLzW1VKGSSna6A7xDtJosOw/zQ/vw6URLCvCq3UJwtk9Zgse0RI2rl7Bcw9ikQQhs4jICwZxZuNwvgJ77+2Ky9lCo/ttTyWtGyNbzZJG+tvQxCkG6Yupj05R24jJdL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NnzS4XsS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NnzS4XsS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6234C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761407993;
	bh=T29XTqwTE8wDY/DDX07wbZkUc/xKfHHY20apNBym6Zo=;
	h=To:Subject:From:Date:From;
	b=NnzS4XsS+P8REZOjnlLFH3TxtsaSS4QaYlZmZdZMsUlhpSCMS2DBB0TTJTqMI54P/
	 YHywz0n5v7Nw6jgiXZqLIqsoEeNkGPHnA9uImAdnm+xPHVWPrUMV9J8PSX5603Sggr
	 P9fpUJlHSCEcn79762uy5wA0nR878BsQoGrwo/swcL0dVJVLDejgLAg4pCxWLHBihH
	 bcBuR7Fq32KmqWe+0e1/C9cOVUYzxSsU4Vmr+mLmk3GP5RjgVNjs3tsN1LI0yNOlV8
	 YtVKuqf3PuKwfdSULGwsl9YT33tEAklhJZqTP4B9Tg2tc4oVJMnS1IhjTO4lv3qOIK
	 tYodsyhGLvmHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A53CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176140799357.16195.8915844713019798489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71750ddd2cf57ec79337cc5da9a37969559cc25f19a7aede70e4974b223ef04e
Date: Sat, 25 Oct 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761407993
