Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51EF010E0
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735185954; cv=none; b=RZGhz9x2lYQzxZ5dF5Qizmtss1EK2U2id8m5yaTnE8CyA4E/zC5b/hQFwvsPZ9ohZ3gH4jgtUcjXZN8qqYvdavx7njCfklR5vhUeB5imcFjz58kYpaM0zl57HID2E1gvSnZbiS5/M+TMqDY7jP0hgT7LGM9MwLhKGCNFE3Al7eA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735185954; c=relaxed/simple;
	bh=75mz0Tx1fc8NbbM8w4WLE3WHMB1gu0xggGjv+nfKOsY=;
	h=To:Subject:From:Message-Id:Date; b=Tqo1QKgjcVx6xKMW5I3hor9ZjwKSIraSyPfOHBaJ8gz9IzLL/oogFIijViP6ZTEdEyYhig9cp0IUjtFWQmPvmU91HpbesACkLdU8xgnUsalgngvjqfEVDSG0s4wdxVMbLUbiLwq/eoyq39tNMU8gcCN66VA+FvogSmxjri5uazg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NBmWiuWd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NBmWiuWd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF51EC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735185953;
	bh=75mz0Tx1fc8NbbM8w4WLE3WHMB1gu0xggGjv+nfKOsY=;
	h=To:Subject:From:Date:From;
	b=NBmWiuWdIVSU3eDlbaLGbNU7UYZyfSFihawSwZ7Xw+yg0C0Ypefz9SO7bxZOXU21w
	 IZqeSnawJ5bfOKLW5OTzM+DPp16sRUQC27RWw4H2TomUD8iiFoGU9y6vxtoPDIafzU
	 pTeA2zY2llaGj1fyJ8brihf8OsysO6xe9Yho4IPr6Hk703bipDuCCLYa8JxnHAjIN8
	 MRMApz6MEYvV3VKX+0saEEqQ201uh/WtM75VwycD8XBHcsYCJZ7yCFdQ1i5eBLc2rd
	 La8Pa/vGIsj2ihbnRS49YafwZZQxUJ4sF7w0BlApzzHnU8VlZ0bdyG6C0s96MAg7hz
	 tfr6NaR4ny/pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98842E77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173518595359.21533.5383700770447860795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 302b16f3e163ea5fe7a7a382b7b65e654c79e8d752d91d5f42bc81139318523c
Date: Thu, 26 Dec 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735185953
