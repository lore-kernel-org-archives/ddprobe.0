Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7F6C157475
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712691497; cv=none; b=ouhXdrPQaHV3m+ch+rp1hVW3Y4ID/zIwUGl9nBa0rrXiEhvAanKoEnctGhr8MHZiWflz1L6RODRnrM5c2cQjrnNBIBlADPzSWA4RfMXKtq4oQKXg8SCXhhjBpCjR92BZ40C4WRErzQO9cjKdTFDco8WB1tOiZ0qj54LKPjXYtCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712691497; c=relaxed/simple;
	bh=5MVchgJiRe8wvzZLa9bnSruBLCs16lGWk4LikoHzy6U=;
	h=To:Subject:From:Message-Id:Date; b=a49xNAZL4wIqYnbIqWKgwhYWNpLJ/P7gYxTW8yHmCGhdNUweA94MUrvZfXDbPDE45fOvW2atdmvkE8lsq33xE42hMEnznN1twGmPMHe3gQZ0zwGICa22cAooyVA4cRYTjaEXcAQKr0SKeEAstTM0XcN8OGdLCLMBopUpbuRwBZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/Vrw0kj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/Vrw0kj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EA27C433C7
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712691496;
	bh=5MVchgJiRe8wvzZLa9bnSruBLCs16lGWk4LikoHzy6U=;
	h=To:Subject:From:Date:From;
	b=c/Vrw0kjNhRpBdMqT0GaDZfKXAQyQf1XJ1MhHAJ1l7o3HnnV4zgxv2aKC9kkITAIA
	 Po/mF9p4X8eAyd9P6tmxjgfHxCXxX+BYydS66wHDw0rGJFwRLCgq0+2tfz0VfXLVi7
	 UT+lEHf56JcABAA+BqC39NWRsVr7F0/BIpL6lgU/Pu6HDt+BNtavt1m3aZMnpOs9cZ
	 Zc3thSaWb1wG7B4zd/KjkWfOOiokJt5Zl8rjCskgCJsbdDqbRMy3whjpU51suIOWRu
	 x2FqyhjNTw6PCBMu9+KqqCfNqmdz0eYg13o30Sh4xAvpJ9vvTpoSk9CtVqm+P2YHcy
	 E7FP6HZ7+YwaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AB75CD128A
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171269149642.14466.15731387419299102183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8c32bb8d37b0e1f485e98f7a8369e85089ca769be8b408828ba578036e5aef0
Date: Tue, 09 Apr 2024 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712691496
