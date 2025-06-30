Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD5E62E5418
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751305193; cv=none; b=BXYR6X3eGqwwPqsVCJGZulU0USCqB6KHauOSmNWZFqMEAclTHBIg2cISPlWyBAx3RNiiEChG6e0KQGTGsWJWGHgh5E+JufPSbHXuHVxNKPPFXF8/Y3H3yzcjFwtMEJmYWqr2s7eF20Mrh2h//XZMx9xOXlsVQgG/NqS1T58nI8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751305193; c=relaxed/simple;
	bh=c56mlKSzrfSmDha0B/yR6CD30Uwba3NEtEEO4Uys2l8=;
	h=To:Subject:From:Message-Id:Date; b=e/NRZKEMdcT6TbynwKvSJbZm78ORTXU/x8vQkyYkhxZzgE4h2hIPGxeRUFx96QeLdhvzRIZ98ipzNUBlNjDEMCMyyB/Oy/ixXtgr0nnI9hdMrlnMl4b2aXO30cgAF2H3nJIN1YoFDhecvW9ZIo29t8GMZmwkcpSr5wT4h/2C+Lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qXbxZy8B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qXbxZy8B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6E3C4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751305193;
	bh=c56mlKSzrfSmDha0B/yR6CD30Uwba3NEtEEO4Uys2l8=;
	h=To:Subject:From:Date:From;
	b=qXbxZy8BrdkGwewrSapMQWQ4nFdIvkS5gcEdlbuKSB7UvBNYmz4/j9QUPfan00SGi
	 RvFxL9rlJJG/npo6KK1gmkkZK6HDMXz158fJz2z8FfeTNo8B+zF7zxCH295FmNyPGU
	 YoeagXxfCWZ5JRKpuJDaCpfRmV+K7P2YZyQ70gFIYL28/nQYH2J2XXTnW+WcHP0oCV
	 XBBbqD2d/aYl/hhB6+l8DKQoUf1TZ7Qr/87EV+Eb3AQs5RJM5TAr212zVXwr+8W+j8
	 idXZP5uovXFgasUOD7msZaBc+1EGF5i9rMSaTs82Kyhyou0SGRyXCQ1NRJWMqOEQvI
	 Nm9Fo6SNM505w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC1CC8302D
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175130519357.32390.5694382590317941045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5637219e3f03728fc2015edc78a41ba95deba234af5e7c6665bf024cd648a416
Date: Mon, 30 Jun 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751305193
