Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB5713B293
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 09:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763889114; cv=none; b=HHPiBExWrD8TCl6fIPu+3ReYGuyVkLD031lK9O3nDcYO0Nos/LrpJK5DlV/V+cKARXgANFB7LvVFuXIWGD7pJSJMJPtR+KgJ2rwcCAbQXNplTzRitJus4GV6Be0JjJFsDz0jrmDBH9FCWaGrNoirzbZh9L0hJ+bWJSwLug6tlYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763889114; c=relaxed/simple;
	bh=SQGkbcHqxmw+fd6QoN87Z/CNoANq7Y73Pu/v9RalSD4=;
	h=To:Subject:From:Message-Id:Date; b=i8kkQcc0bvPOY+1xANd08eks0gfjqIHj4D62hGitlazxzRiBHdvZ/mOfK4TcsdhhfEx4HSWv5wGKJbCwda2TY9wPgGGicwt3IUwV/JmqLreERJ9yj8xqtbdqF53yKhNwDMU/mampyPFhoQIw88a2NqlCG3XmVjqWFXb5hxNLcpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sri817La; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sri817La"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2611C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 09:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763889113;
	bh=SQGkbcHqxmw+fd6QoN87Z/CNoANq7Y73Pu/v9RalSD4=;
	h=To:Subject:From:Date:From;
	b=Sri817Laozm4zv9n5VEj+vYn3Lw3XuX6XsWlQEfzvbKxEJtCFUTS1jHmKtvbgxs1C
	 DvMeduN7yZE4hsYEc0pOfr3tqygHw9fvW3eWPQiA0SUcQk6g+8bk6uHX3m8qbpYaSg
	 61kCk6tnkgirYO5T41fRfidGDOHbLLbe9NQGmcZ99vnc58M6nucFqrk9DvlNt9jSSw
	 ZM+SHOmLwnd8KQMBF1a/GlpJ3i/sl3S8rQslizgA2iYXrp/XRm9K4j5diV4r9SojxS
	 GMcQADO4FU9x/Y9WOTMBfJR0zzvO+UnORiQe9/dtioiYoYdE77dhneUS1qQOtwNlk1
	 5cyB2wcP6iqsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DAACFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 09:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176388911358.5487.9985315944105879335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e3eed72f24fc4d39fd2d8031ebe0c325eae52d772888b52eeaef8348d567478
Date: Sun, 23 Nov 2025 09:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763889113
