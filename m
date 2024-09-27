Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F2216DC3C
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727426754; cv=none; b=oGHhyLuu9xXZK22xqEkivLsmdsmuvUgSTQoWWu8QOUhPkTZ5xnuZhC7y4FgY6ZwwjGGCXE2v0emyb0m5K6yA+1hVUqJT4cVLFtt9wYqgsKz9ngJgnob/4Sxf8O2fjvqzrfK2kbes018wN2sBCqBXLw1EpVje+itlmWrcAV8fIUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727426754; c=relaxed/simple;
	bh=DinnzRZDxQzBRcrrhnTntw7lZdKNatCc7NxWMYj1ak0=;
	h=To:Subject:From:Message-Id:Date; b=corOi25Zs2/tYQLH5bEheVncjaYHrCVDT+P+0VLyaZrgHZGoUOQNO1OTzduyMIRoirif9F28aJzjS/Q5C23UNeOZEmxi0l0UkGZMMVwy/6PspYv+2CMNQ05dT0dRX/qN5j5Dwbji7Zrw5EGP4oezfqkX6pKus1dLczrHDmxdV8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ugqps0F1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ugqps0F1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5D2EC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727426753;
	bh=DinnzRZDxQzBRcrrhnTntw7lZdKNatCc7NxWMYj1ak0=;
	h=To:Subject:From:Date:From;
	b=Ugqps0F1ColJEmunaJkwkePGo/D3mlbPx41yX32ZARxzT0u2UveWMWB7dD85o1XRQ
	 44paBghyJlcO9Z8FD5xPlQbXP/IXWGTeKFti7sS1BxwMhO5/T/PBR6oYJ7nCADkwyL
	 RfRMhCBWaOnRSOQ1WuPuuxigPYyEAZmWgOsOnkdO7ZIcDLli7oLD1B6++PqknPe0qq
	 QnqZdoJdaAlr7gaYBpSRq+fQZgL3Uw3bk/f7stMZRSLnzEuWM90Vuia7pNNMTvCN6X
	 Njd7hhcrhC6EaDi7k8dK7pzAPpAi57E73ZlvCPRX0SJEIIB8FjC3jwZU6EshHPfsZc
	 AfXcd/Ln63lIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9E7CEBF85
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172742675362.20906.5831640363463707297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be9284487d44ead7f610106bcbdc5fee44b78c6e99da15e8a2a64924d9abe433
Date: Fri, 27 Sep 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727426753
