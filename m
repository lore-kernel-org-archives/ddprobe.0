Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7841763C
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 00:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715734343; cv=none; b=CKgEyQHfAkyOH6Oym074IcaNlreKTAOYHakya2X/6+FcqWUOHIJKNAGa9Qf9F+zwnRsT5UhdEZvlBWVVrco6xUmMnCTKGyjpm/isitSocj9DSG5ZWTRwBPe4MRvh+GFa0OUpaQs6RNPoL6TTAT3kVsyrgjGlbMIoMcBpMyaLS5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715734343; c=relaxed/simple;
	bh=BzYZAQewVGuuJQvobbsjYxenVAa2VOGpQTXiNm/oMy8=;
	h=To:Subject:From:Message-Id:Date; b=LMZbenBz17n3SYyAp12LLUfDVAspmyFzDS0M2FsjHGw+qL1RKR0wJ8MAeja4yyz0I/N8uTG7/eVHtStgzuT+M5FPwtnMGRDwvHqKKmseDKDOhkxmipyCY8gCeTFDcf9n2IIXCWU2LRJ83wdOf8J9Ex5Sz4qVEwT9sB5SkV/WQeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t9BarVkG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t9BarVkG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04A8BC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 00:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715734343;
	bh=BzYZAQewVGuuJQvobbsjYxenVAa2VOGpQTXiNm/oMy8=;
	h=To:Subject:From:Date:From;
	b=t9BarVkGVSa2i2aD8Pp1sHkckfSpxTIXwJxjgEg3koU8A9LE6aM91/NBlcbGCN8LW
	 HFxFGTtvspZ8rd9JTLc7NKTLGlFc2QJVOkyRb2auw6J3ToHmWk3UHVQGxk7bJPJjdw
	 Fnz2SG1ESi+QvaJm8ROJHZPItFoDqjWBDmwgrjGQnrw3iJFWi/6KZUCdL5Oielmboo
	 xPFDqTZzzIxny2S5e7c76MCsgiar5g2SlM4bRqcpmnpHnS6fOC/js2d96pHtbUqlSZ
	 C4aQPuOCE+ltl0QiHK2JY2xFektX6nQd4zrN8DgL/yo2u4csVmxNMhs18T4sqECEjT
	 zvErFu5C8SPwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC61BC04FFE
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 00:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171573434287.13213.17422544143586928142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 096584d8650fb02edadb5e6319f9c803f4b4790ac1324a6543551714c0f77387
Date: Wed, 15 May 2024 00:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715734342
