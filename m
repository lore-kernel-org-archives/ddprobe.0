Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187C43A9D8F
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 10:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775558134; cv=none; b=WFhNfA0qxnwKD6IOU/vnZdRDk7beaA4eXUlRprotxL7u6YeGQAE5D8szqA5Za+Q4A5Zom0VKF9bO2a7ad/mY7rTCR4BEUAHXAqRvAKOpGj24BLjWXeePTBCCFpt8DgapO7rDhkZEKwtSg2ePSnuYCncQsDWrazPasGre2Bypm4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775558134; c=relaxed/simple;
	bh=dz2WYTXcBZSVZ3inR+hhLKwjABhiU3cBLuJfCDh0Lnc=;
	h=To:Subject:From:Message-Id:Date; b=HcxzNiC9ZTxlxs0UmQdAq9UQXfEN+VkuRHh4sbWLw70aYaRPk7/pGXEh+lX/56YeErNrkc0efFlDOJieL1FVy84s6mmcmLC61jrWwUfsxa8T+4RR0GOewOxbXB6WYXoH3BoH7CXB4RxAQmTESXj4ibUgfptbuqu0k2tVC5sUbQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ys0UjRal; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ys0UjRal"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE64EC19421
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 10:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775558133;
	bh=dz2WYTXcBZSVZ3inR+hhLKwjABhiU3cBLuJfCDh0Lnc=;
	h=To:Subject:From:Date:From;
	b=Ys0UjRal/PL/uLxhksu8QSPkirIqismZi4aOkMKbGH4hJvK0k/xZqhlpxH6frXu3J
	 Xdk87vADcFeorKGK/ofYC+KU70DlM8gBY+w48hCBtbMtjISLYtcm0igR1cJIokDV6n
	 tHYWAnnjARJb4vPUkFVZcEYjmfwmF+NYPFyURgc8YUIuXzmrK0vlasKRcJQDHOT8IZ
	 dcpnBY4GbBgIqrN5883JRr4SE/adcLcpFfJbN33TM362PP+O1WcS23MnmH2v0u+VJN
	 AnOxSow88vyofcMUN6p2ubVSCR8JSqAWT6fh0RJm6EeAjV4mM99k/E1hddzmRXaMbo
	 4pbtLoAAXAcyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B030FEDB7F0
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 10:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177555813371.25258.17751849227616286822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 615df8df93f70f5a84340df789b984a0350fe460a43a8c59499c8db4b69b239b
Date: Tue, 07 Apr 2026 10:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775558133
