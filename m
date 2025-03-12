Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431EB1E230E
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 09:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741772934; cv=none; b=PfgP9iU1yCbGxNUyFqzbyT/LKaCXZgUQ23GVRVb2GLijMFLCXUOvnynR8z00K2uZXeZHX1f4NuUAXkt5VWlFZC38dNfegUDMvTmgwVp9bU1Fq1Mnd3YwnpH9BFfEi2Xjnr2owYuoRfTcf++u8ANnE3sp4j7jMfbF+6GOeoiBo20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741772934; c=relaxed/simple;
	bh=EjzmsWMCYfNANZ8o8w4BYiz5rjvcj+ZiVvlWj5DFwTk=;
	h=To:Subject:From:Message-Id:Date; b=huJgo1IqGMDz7jxKe7O7DKTv+r8wtCEi0dPIVIQMQHHR3RddS8ev/0kftkH1Xt20XqFdVGiuN6FfTV6lDj4IAHsLNPSu2IJVDBWeD1DFAlAoGsjUd3nh2Y7kLfmvla6uc07hbtuXBKdboBXwzMfjgLtR//sG+fb8WfIQQno+evo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D13qlsg+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D13qlsg+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE612C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 09:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741772933;
	bh=EjzmsWMCYfNANZ8o8w4BYiz5rjvcj+ZiVvlWj5DFwTk=;
	h=To:Subject:From:Date:From;
	b=D13qlsg+qSPUXDBNzrn92Xw95jA/6vZZTWboyUO6Xpd50TgbqGfkEeNrh78t4GtVq
	 09k/s47UhQFJv1NcDVPamm7mJ33PgEcxSvvap8JS0vihL4lDwh1iezHUN5bRvAamoz
	 9mB4d9aRdk9Fmko0O5tNmHD0KyX64yMVoO2UCMMhYp/X4Oh4T1lfRbG69pP3l2KZCA
	 5M/9ukEC5jxY96IWjVPWwY+Dn25Zjc3urjamtWZVMBXiVeDWA2KBt00KMuRlkcEIk7
	 RBthGREEsTMwNVbEE4QjK0E8/2vcqocM3DUVypVxbhzULQNvjLm50ZxAmOpUnyHZ4A
	 oLrte/o7udVtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953ADC28B2E
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 09:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174177293360.17978.2944682858365962699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b63a9fcc0c16310f5412205d87c06525e04484239fb4bdaa96a80c6ebec67f29
Date: Wed, 12 Mar 2025 09:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741772933
