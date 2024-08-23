Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4229D41C69
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724431554; cv=none; b=UueK4tJwrWY8aR3kWHSXB5HEvA5o2uG91e39CnNvWIYUZ/S7wgAZe+obQc7eojhmwPMEHicxHbsdtOH9QSsxgN9wW4PPuTTEZsgVHaZ8X5ef7/QvnWlz62mO00qTHQNZx5TNhdNKB80m9UnmPpOBDisFUdfvCrbhUzOjbCdCAfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724431554; c=relaxed/simple;
	bh=BYKTbhw6fnIV3hT7lQjM81zGxwfYFdtrv/ZsMtPX1+A=;
	h=To:Subject:From:Message-Id:Date; b=KXOAyM86rtCPOmtI8DX957fzotMmzMsGuWv6jNGbrhBkfeUTXM3A13c3CndwSXePABL0aS8W5ZHBALe0YtijOhXIhuMy/KOa0qtPRkk14+wi252La+uqc5MVIwaC9JBb7cGVRHEE1AC2h0Oi2hy8mrIcwpcWUJ9MIcJG0XfQYRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AlbBRQhm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AlbBRQhm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B66C4AF0E
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724431553;
	bh=BYKTbhw6fnIV3hT7lQjM81zGxwfYFdtrv/ZsMtPX1+A=;
	h=To:Subject:From:Date:From;
	b=AlbBRQhmnnVeYp1BZw6BT5TIxRJY1v/36C3uHxHgDolMiAwGI0UXRAs4zIEIhzZKQ
	 6AwZwPky7Elqc5qNr44/K7eYS4Hl+ynjMTD9Q8d4wJvWq1qLgv05B4KqMBZrNq73sQ
	 qp1HbZBPf4+ks1jJCFnY6kpIuHzlIzi54F15D9nSGzxNPHjM2KtfzhT2IImkwjw1G4
	 IkjyzeXTAxArrRfMRXkV53WYrsSoRtMjnVzHKkAGGyYL49NlyfhUHm3+n2o+jsgv8q
	 weFuYlsUCQR0D7QtIR0RU2OMDmk0ybSY1VxJF7DqWBXlFSmE3XD+mnkb2kBZlFiRvv
	 iWyZrKtxfzUxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B4CAC52D7C
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172443155362.29557.15726136108541514174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83e98cd5418b0e5ff512bcb0862a981ad75b90442eb8d6e6f2dc22add1709ea4
Date: Fri, 23 Aug 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724431553
