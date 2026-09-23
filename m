Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF401F63D9
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790122234; cv=none; b=NP3DD62EDkZjSYaxPDg0JZKrS71jZdAbAqHAG5UTnAy0/tt9RtBfi2crN3A+de018jDjxL5c6n2CbeYHpjkhGWm0gPLGluJRpWRoALuf/bGI7J/Ft8YjHXlyXba4r1g5u5a5q+jUuLBV5GjVJ4FiZwIbUZY44wVBMga7eBJLg/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790122234; c=relaxed/simple;
	bh=4OMFL0CfdAx3n6atfK5IY/Mj3ua6mLZgb2L0VgJvamg=;
	h=To:Subject:From:Message-Id:Date; b=TVGerrdS6ZmVVjDCwq1LYcq8M6XLVpDIhSI/1FRM4tSmEjCKBYUEAfm/h4CVSmPUCBK33cVeq9Z6FLc1LBcnq+IQkkAnRboI5ZvJW/yEBn3cwiUHgwn2d1a6Nb5As84HKzsTVRrEgmubc88D1PuXFOK6mmh6JuxiH+nU0TpggDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bF1Zhc7T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bF1Zhc7T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B69C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790122233;
	bh=4OMFL0CfdAx3n6atfK5IY/Mj3ua6mLZgb2L0VgJvamg=;
	h=To:Subject:From:Date:From;
	b=bF1Zhc7TLlTgpsBcYf4ncAlvvFoysZFt0DRFBHtywjPBedojxHBou5XUP8wfUtS2U
	 wjG1bLcVp+K4D5Y9y8UdVrzsK6vAMU/6YBZcwtT2Iy/gMt2qE2cbSqLopMbrZHAYQI
	 1CJj0kIbjrWLr/46+FpxVF03+5C8L2JLDNtpmo4EaIihtLayv53QaS7nqlia/hhZKk
	 c0TWoM97ZaAhlCUZWrozdlT+wCZT5k1tdjUYQigMh6W+xpPOd0C1D50cWu9GMJm/fW
	 G+0dfKVGgnfXgmn0pcnwGvZNK4WnPHhUa7dvTNOoaF+AK1AKDbV3PgbdRM4TdRl3Mj
	 Rcuks9XOFNd9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B29CEC982FE
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179012223369.29056.4984872003044390243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8394b7fc0e8921ef39018a1b0ed7c01818644904ce4a6b38908266cf4f41711
Date: Wed, 23 Sep 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790122233
