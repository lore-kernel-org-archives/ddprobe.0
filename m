Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D1F2EBDD9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768829034; cv=none; b=MoL/QpqY/1471Gg2QxsyOSIg4D/DRebBKRO5JcStw9KQ18MMP5mApB/mGnJag2ltyveM6vIGYvqzu5QiXX309Ql14QORqmH6e5E3phrsNDhKUY3MJGEdKWbMgEPcecVM2SszdEMM9Y1d1/WIkw35stT5OeUrBMn0l0KT3nb/bSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768829034; c=relaxed/simple;
	bh=OTYm/KW8F++qNRJqDGKuX4OLXYz++Bzbz0rhI833fAU=;
	h=To:Subject:From:Message-Id:Date; b=UhQgfQxmuGm9w/dEvg5qnnQqJJgsSSEyOUqGzMSO/4fAUR8KKrSlIZw7f9jE+Rd4tXySIR+3QyRB830Tof5F1XCnZc5yy7bdpMJ2PUnD19UOZsbWuyuFHCpJLphJAtKq1T002iicaH6nr0ns9E4/Q5poxru+8dDf6wPCork1TYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JFRajPwS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JFRajPwS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A85C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768829033;
	bh=OTYm/KW8F++qNRJqDGKuX4OLXYz++Bzbz0rhI833fAU=;
	h=To:Subject:From:Date:From;
	b=JFRajPwSZxsxxMyLC58gVx/UEeTcvA+6M/WF2ZSXcmYdh9MlDZgNh3YGTWHN3f7nv
	 jDXizgjcCfr8H3B2//YYfUGNaRdQQKDxaA7BEif1yzT3XjsZF9rzOsxxG0jSJl/JV7
	 2HcFcsU7Oybnsl/R/0qxddiYBNbfBqWDorOIHR+cEQ/6FXeF1TAW/pCLR+7KpAuyOh
	 1zZx4t7UBuRz9C8mPim6/HaNvdncw3smyR1DZnrBW2BasHa+3pujJ6VX2pgwj4IlBa
	 aC53GRXzwFqcyV+UMJ0Bmf/ZDMLk6o4YslHsBbPsJdQA/q4QIHdB2/boyRDd8xbrR0
	 dZpVwysnRKQdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD1AD29C28
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176882903358.15215.15425588492962023396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac319dddd1aa7321560129e893af3457b3b6e2b6562553d517e347120e4f5a5e
Date: Mon, 19 Jan 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768829033
