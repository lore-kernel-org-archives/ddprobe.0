Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46ADF411FA2
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787225434; cv=none; b=CXQsbANdtveu9tcmqfLqQG4JgZJhhspMOWKhbIyT08he5ebMM3mh8+jl5gRUnAIyOn2pu61DWKf8qnOuukSiv2DwNYXt5B4zvBR25wM6NsreJj8NtiMH5kssrO57r/Uh3zv8N1KsKgxk985eYmAHSxz11OafiPSlw3wiaUD6Phk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787225434; c=relaxed/simple;
	bh=0DAvipMQzVk2G5XO3T1AqmVRR1ioJ/eqERPRNSeWFRE=;
	h=To:Subject:From:Message-Id:Date; b=GBmgY3XV8qaDDiY7iUPbEcfKz2JH0Pz7+/kvre6ZGRYlokz2L625xAf+8lMTeKHW3b0vhVaY9uhDyKx5xkSDo5y/rPEhPM4L1cgROKUBqLzJaJJD0b3ZW8MTRUFznRG17FZfHwGExIrVb7F/1hnhbueeXLFS+asTMXMb8D03wqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jIFRBOWO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jIFRBOWO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB38DC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787225433;
	bh=0DAvipMQzVk2G5XO3T1AqmVRR1ioJ/eqERPRNSeWFRE=;
	h=To:Subject:From:Date:From;
	b=jIFRBOWOTHnsYSDw1K9yYuZW4Qit45oWY0uDoEU0UCFOJac5A0ss2sAuUj8qNTUat
	 w7RSPgNNBQj/FDcQ1+0p3Pf6WlFEQ2KXgGe5UIVtgW3lqQcgl45iT8EBxJFU7ndtJt
	 9pvr/X4cewJdxyulg6MwYJ0owXmSwEr0fl+6av34edBit36yPEKuXlevJxuqHQDbYa
	 j9PG38bUcmjaPp16qXExDaTN2rKvFphoNSgL5XEYdtCPUPrua+FC1lr0LqyO2psnmt
	 syNhN7xLIh9K+TC3NYST+hvac0YKLNOzui7hxjgGg/OA0ZX4BVWNdLaAmCEYzS39Rf
	 G1bO2eJyVgt1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B577DC5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178722543372.31827.662548781993086377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 819aed26c2f84b2d088bc36abff30917662710b693b6c4584c207bfa39676d51
Date: Thu, 20 Aug 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787225433
