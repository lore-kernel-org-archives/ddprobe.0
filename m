Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319484A1A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736457954; cv=none; b=PFocoJBKpXKRKH9QcnL4dcW2Q5CE7oJdYDG97QEIHPdIgAPPPA7XX50J3OBipp5ggt5VmaoWWFiR0J4zkL7Wo87hEJnr+/D7/oaj81jAMEtgdL3/pgdHwp7IL23eGlIpsbVK/vWt0elZzqnMOdKHllNhvXFZrkzTGN1kj8+Z5yQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736457954; c=relaxed/simple;
	bh=ZQop3qooV/j6TGwcqzaNlHnFPt/pnuGbgnRXkrOzcpY=;
	h=To:Subject:From:Message-Id:Date; b=Mv3TmJNkAqObQuPbyMRfqK3nrXEUdMScfhosUPleGnbL+X5ZDt2h0vc/qXfUrlm7pYSMRfxPqFwzlS3qpLvvRnYID6HBmmLOeBKi0x3mb63WnJsw9Lnyco0YjdNl7evGowCLcvRc0bSc12g3eLtYMafEv5M0Yo1h4xGx05ZZkf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TDsRFj4O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TDsRFj4O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8863C4CEDF
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736457953;
	bh=ZQop3qooV/j6TGwcqzaNlHnFPt/pnuGbgnRXkrOzcpY=;
	h=To:Subject:From:Date:From;
	b=TDsRFj4O57d0ZbRTRtuUSjSbNownbjH71C9AyugoBPpzh9oIGaU0imljFJ1IPexPH
	 iKkQRhlaEnAnJxwKr24viAoUvW0qawwnmSR6CXRdHVG+kqDKScaJUsBjDCF8pbwdjO
	 pv0ha3AL4gjz6nrzZkavOP0zpVTrkE6ySMWOlvbVQSI8BNi9foh1lLkZ8Rlwn1mXa+
	 xp4q9L28rMdtHap8M4M5/xcsx5edbABxAV4l1bIX6+AkWOp0uj+JnBpsfNxQxaXDSS
	 h6QHnQXFV7EfjPo0F6YR6Tcd2IpD9vghW8GUJmW/EhZnyNxSSh/lumC7vbAgpttDPl
	 P+4/UkmVpbAbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CFDE77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173645795359.24346.5070903732490049165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c597ce1ae85098c23797b176f37f1b17441ec4d2612e3cc85b547459e78d24c
Date: Thu, 09 Jan 2025 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736457953
