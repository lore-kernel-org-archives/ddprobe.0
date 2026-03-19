Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1682387570
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773944694; cv=none; b=YyH8/gTvRRrxFujywpN+JQrzaw1RJ/X48pyv+Z0hiVNItG1bv38nzwgjHVom2dAzHi95do63jO+BfMb1Xjy0pyfdg3az+Y/5QUwF3u48Ve2qmJoFE6A6Ntw3Z0t6BFectfN2MMDTMvKXtMnsQgJ8CR3xbamVI+oAWgEJC9bbGoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773944694; c=relaxed/simple;
	bh=eLLH0pw5x7c0zk4CnWCeTI6sbDME65qL61UtwMSdfXs=;
	h=To:Subject:From:Message-Id:Date; b=aVdp1h3ND4ntyWHeHFJI+iHI7um3qCPAv11B0VDOtB5Cr9u7yz+hsOnAQQEXmeqYLXQsfXok4Ub2Kpuh9HPZS4OgjKBf0zXZXmE1N+AIPZvClIAZ3HrguN/guKb7/m0X4qCLdZAdKQt/1i/maz1fToc6FpyWr0zJ4IQZsR4E/3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qDggr450; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qDggr450"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A220AC19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773944693;
	bh=eLLH0pw5x7c0zk4CnWCeTI6sbDME65qL61UtwMSdfXs=;
	h=To:Subject:From:Date:From;
	b=qDggr450Fy6GrqzxCAvRLn4tejwV1cn3VvDbEqohwZySWd0BER2sLzUTCPY9Qwic6
	 24rbhCLXYbp6wsytVbZuvd4U8kCFDcnBPhhP+5ZaARevQaToAWaGQ0hutHfUMJbTJC
	 03pUPoAYmbf1Qwl2/D8rvTLZTF7PTCxwhAJes2coTPPz5dQqscSpxPMyKzMXWFs97N
	 MM5i2gTVB0RCtERB5EjSe/vOMYslEQ1kYu64aE/j5lZtCZwhtZmDE59rr1rCJ+31yJ
	 rth28WrWWAHJyUQtymcfKpUk3TEu5YQoPyMD8OQpUdyKQLIWE9WXH6cbLzfJcCbFTI
	 QbSxXvBnM8QoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910761091910
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177394469358.27050.1563206420577502753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0337878c7fa7b4d8a8ecad67a79b8f638f60483b0146c9920ee9a2b35f8503d6
Date: Thu, 19 Mar 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773944693
