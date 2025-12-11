Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287E82FE04A
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 10:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765447374; cv=none; b=b7zFqPH95ttXrR1Djd1JMunAvwG44hQHV5O7JXYlouHa6QkYa0i13aiXuTcrzNn6HUGAok3LWf8Cd8RL6ikDUdeSXiXWaAmA1U/vutIv9QjZyPdiQ/aEFRd/iLWCbxeqpfmE/Q2mBadv3UsJRr9GwJq8QJfKHU0hZ+OoEH/O0oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765447374; c=relaxed/simple;
	bh=xUgghB7ZCAeRO6CI07cg1Gig4wmporW5eaMFYfWorrk=;
	h=To:Subject:From:Message-Id:Date; b=eYU+zdGWDgQ8X/phHIQhsrjnfjbRaNUw5VGSQwQ6ugE7X80BAg/2D+5YDx1+6kp8qfZfzpegYK0D749KIL3h2gi9RvrGhtSb1qkX/eK4DJYimvzeJPR+vAQG2DfYaEXT4qSD8iFLJBIYpZ5LE1FZmKqk2HVaaj/osTJgAvvOF8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hVGVutaO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hVGVutaO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B014EC113D0
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 10:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765447373;
	bh=xUgghB7ZCAeRO6CI07cg1Gig4wmporW5eaMFYfWorrk=;
	h=To:Subject:From:Date:From;
	b=hVGVutaOMM0I/H31VqPHtDvqbDcL1S5lsHchUwmAVoADHXgXY2lRcw6Jb3sA5I1Us
	 fweOhxhvE68oJcewTvOg+woGtarFz7OFmPmGvmqzTp3pB9qloxaUa0AMSCpC3qgs7B
	 0EnAPJo9nhJQvciUP4sE8kPqEXpWkt9aEgsLuqgFlE0cUbtKemQ32DgxzJdnZ8HAuN
	 c8/NapyZdWJuadum1bw0uVVQ1v/tCsWUaOgmfKTSMbqORNhYseRTi8JyOjcaTeSbjm
	 FDWGwl8MCPXc54BP8t9AlmfhNxeUDvp6NxQlEal/3/el3FLztgHF+bfn0fHbzuslm1
	 f7+1rqQ43XSsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD37D41C14
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 10:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176544737363.640.1854043543258228176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbb8576959d80a292563649b53d1b6b5fd5c95bdcedfe044aa343e7ea4faef5b
Date: Thu, 11 Dec 2025 10:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765447373
