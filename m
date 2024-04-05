Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECD0F16D4D2
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 13:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712325497; cv=none; b=SeirwZYMCyNWeLnbtohH8mHYtAAVGydkhFjAbF1tJ0XCQTYI4UyeD6eLPRdUjcDQRZmcC/fyakYEDMjY9JbE2Qylmq01ybBlcfstcBYHI71SVVMcWFy4ZtV2iUAnqt6IUUPaX5TVy9oVJSwoyZsZsD6xqEWoqlV2NY79MItaO00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712325497; c=relaxed/simple;
	bh=ajoK1T+ircrWsLtxWEw3pw8oYeh8hMqjTAt21m76c4g=;
	h=To:Subject:From:Message-Id:Date; b=Y+e+4ISps15nfPEhQt3IcEw2O7uKdicS2BHaEAEXq2wQwvQzfEYWwOClJtpfemNkWFSTlgorD7nBAcDjLCoHBi+UcW/4BsW4QnextfAk6hy1J/tyDvb1I4GRM1CxWQYaT+1cvvI8tZYts4R5jbI6TL0SNsNzfcARjXMywarWNnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PjteNZa4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PjteNZa4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70EE8C433F1
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712325496;
	bh=ajoK1T+ircrWsLtxWEw3pw8oYeh8hMqjTAt21m76c4g=;
	h=To:Subject:From:Date:From;
	b=PjteNZa454chNEVy7nV+Iyc6zrJFfxOj338qMi23+Ms6uaspYN6xGj9E3FoWihMsz
	 ceyxfMUdNdoXeiHXb0nIu26FyE9pTpN6LSEKeuCibka1c4c7Xs7uoEkWNup7J5mx8c
	 JxVgzsG5jtwhHdHaOhxJOHg8N+qm9uNN1fmf11jZbDkBKydrkBCZaCEQdBTWVMd586
	 PKTM68clV/jW62/K4KHzpf6MUh2Q1/F/4fZ9CQOBAPSqroywzdJ+ByJ0ahW2IrURMJ
	 rA4mVBg4wQuGwcJHBx0BitYOQaw+a1EtjpPGmNv4QqsuGy56mKANV24SksHRJSUjrk
	 o7AZjEym3MTiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 652F2CD11C2
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 13:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171232549640.7175.1002912655202484967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d41624573b8ae84c0dbccdf1b9b07f9098e3ae5ea2ba1365f092e1e041a1200
Date: Fri, 05 Apr 2024 13:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712325496
