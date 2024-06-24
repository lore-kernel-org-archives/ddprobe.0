Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 599A949649
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 20:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719262403; cv=none; b=hNeaZy/o8gr6vntUb3UMPQdRYxwv+ajojKRhLElsm3fLRNZRxphpLFK/KKn5+TsAXAkGZUi/m08LUufHPaTxPfDBtXYprbFbiqzSDdS2GC9axQZjYetb0fTBw9G35fBdGtc4boo4UPbrISmt/rDB121A42ok23mjyNn2MmFZgFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719262403; c=relaxed/simple;
	bh=4eLoKUYJJW8uoMJJIRXI4QeQIWTXoF5SY7CFBO2HGpI=;
	h=To:Subject:From:Message-Id:Date; b=T+Zjdw5yHst6XHZdmAbY/WSRWJrd4DB0x+22IcXuG5Ak57aRQyQW/3mo252jro45T4gxYe3b/HQgxXa4pf7F/zPMvcfPMEWh+82ztjOuqCPtp0bOCW3NiaLhp/OaYIp+xEIB318KERcM9+4DUnmL/QqpYj8ij4fpi6CE8zxvkYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=miIj+71t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="miIj+71t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAA65C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 20:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719262403;
	bh=4eLoKUYJJW8uoMJJIRXI4QeQIWTXoF5SY7CFBO2HGpI=;
	h=To:Subject:From:Date:From;
	b=miIj+71tiHEZSesQgpNaFvr4qiwivcKF7HHzTz9kJIERBANSFEDrmTXjJEQ+jsFxu
	 RsoHYFWDvKjqJzL9nzns3KozekLd+fcf+ocJUfhBtpAVYZ/Nej+WBzuRHDu+EYeS1u
	 cNj0e5SeBLe0uT7V01bEgPUKGIcgjdfuLvWcrHggYwIB5aHNcNceaLS1IBf4k14obm
	 ym2OKEGMknoa8Ph3sTIQygd8NRnYKcR59oCVwisa/KVzbwEhrgJWQUm6Eomoc+xA7m
	 oWbOX/SA4IDL9Ko//NjIQLQ7YzcjfNAC+jyOG5qEd3Bo/G4iKYFF+I5eORFaY0Mi0Z
	 bwqhd/TtmLdHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA2C3C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 20:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171926240278.30512.2177342329304757982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f2c1dfc019cd631cca9283d02085341e2c1175fc56bb5d30f41f050287ae27f
Date: Mon, 24 Jun 2024 20:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719262402
