Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE404C69
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723738554; cv=none; b=WliWoOUHc9SFjH5wfXqx4GwVhf2zGCJByPb09Dw3k7JmIjp9Z4RT0SZ8pnVe9s+o9uUFBApkOb/1j0sTIURqtDYqLnAUsEe2l8IpK6D2AOCLonhD3lBaJAP2rFL8HAAq0tKNzkC1mAj9zhpKk4ooTepW6qsVJLJhb8heI/NDaPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723738554; c=relaxed/simple;
	bh=/8dIQpSXNdgR9ujOF02osJSoXi4PMU2mourciO1xZkc=;
	h=To:Subject:From:Message-Id:Date; b=PIXx1zLH75OQk5dfoJ6PTkk5ebhOOYAprqfQ8A5S0VZJKzpsBLA9WfPAIkwhyQYHc+pyHiqJLLQ6VJe/bnszU4mCjMh+Rafna0PpfPAD4EDV58/c1sr9q/AC5I3womaMrzkjZ4LM/9Hzf/FAZSzG5nD2YLNqpLFNVY/9vA/WTbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hs/pMtJ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hs/pMtJ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C02DDC32786
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723738553;
	bh=/8dIQpSXNdgR9ujOF02osJSoXi4PMU2mourciO1xZkc=;
	h=To:Subject:From:Date:From;
	b=Hs/pMtJ+vL00ZwiI/GMc0+bI+DL6G3GPC76dj8oYh0ZBzu6PtVqjHy24Edw+S0y9O
	 nINqD8Dd6u0Ur8vxEDJJFwpG17cx4BzRbHt5mn4JPahvc8LzcfIaiSfPSnqCqDW4x3
	 dNC+ZW3trxUh6BMY/5nQOYKQMd19cGeucAKByC5U2Fjc71JKpgZttotdQZ69+Dhvqh
	 Qvy9Mbz6e8H07ouJBtemiNF8jn9UUyjPvZ+iRNe+yoBbODsRly5fRAkXSCwEM6DIG2
	 VyeGmdTJw0CBRQ4w7Vdt0z9MC4sPKBpcn0ETh/SebM7T5b8gKkzsPqUmBqIAXUv3O7
	 6wxSnsETJ4p5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4F95C52D7C
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172373855365.8423.5108867036401037485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ff44c636128a574a8cbcb32755a57c0db0b2c475042969ab9d1dae9996755d3
Date: Thu, 15 Aug 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723738553
