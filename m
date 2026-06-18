Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F5E40D57D
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 01:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781747194; cv=none; b=gFwgxEP8YsiDCpgnQwL76D+d5foeEsn4iKNENeFlqPjjVH6ShQYYsAakO3RN02lzi35qZsnFzbIYpI6Ypsgrjdo1ACqJ34esAGqjO1QMnBkwdDjSyL7eLXfTsAVsFvodkkRiG/Tam0J6jF9XzDZeG5E1HbVwrVQxJNboJCbWhWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781747194; c=relaxed/simple;
	bh=2oqPUcghAJ9qb0/245WMnjAwBPL8FkYjyKuvMiReLjA=;
	h=To:Subject:From:Message-Id:Date; b=LyzdvB/iWe5AU5MtzeQjj39NBtToDbq/Wx20oz1B3Ndkh35grifmeE7FTdeF39wbTnsJRSs5peR87ck36vW5Zpw+VxpkoZ18x/jJBxhh7e04c/oj4Hv3pl6wAqZkjz7dNZIrwsebiKHtnVY350tTVI4rD6DsyNGwxhvAUYl958A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Izg6LNVa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Izg6LNVa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF73C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 01:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781747193;
	bh=2oqPUcghAJ9qb0/245WMnjAwBPL8FkYjyKuvMiReLjA=;
	h=To:Subject:From:Date:From;
	b=Izg6LNVa3vSPDvUFJCfluA+6OjC+yPPcGgPrjfIHyL4b8usLCsK6UDhzKkesE6BdD
	 MsmfrjfA9TTGtjPyJirujrLM7F2kbRhIk32ib2HogOl/P0nzXluZrg5u6/1xuHZTq7
	 WjCu1QWyovIAR1BmTcQHKsf2c5UFWjcOSAJU9MgGVBNU3b9dor6CfzswPlXnEKIZSN
	 nPZecyMsTN4kke3BR/mkeeOM7stB5BlLLzc9hjhGb/oPqxaIC8QNlH3iY9VXJ7Jj8h
	 Vfrp7taJWG9ZOyAcLAwDLkysC/cYPcKFPDwwVR1tcwN4e32Uen9LCWrfnzcVIeDuyR
	 KMGImsGX4xkqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9AE0CD98E4
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 01:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178174719374.9013.1505431895355743071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb28c3df1dfd7f42a32361889ce74fe150febc9cd6a40e5974b2cbca0ce22377
Date: Thu, 18 Jun 2026 01:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781747193
