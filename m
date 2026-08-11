Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605011D416C
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786419634; cv=none; b=baKw/keyxOaR1JW9pW+8d7//cXmvA+YRe7Wf5rl68jdEw7FVTztJsS8bGOaZNxn1P7Id/A3YQaVvRArweXKscVWFqDkeujRWMx1A9EAvikXba6u00NwCdj0uy1X1hXFCCEgU0Hpg8wHCJ11CbZCoVDNMDbzW4hPWkZOt8hRtVGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786419634; c=relaxed/simple;
	bh=tA1fAjLuRrsuXdSb66lG3P7owM7HHqRI2TWoTrxtenI=;
	h=To:Subject:From:Message-Id:Date; b=GVbwKGGR8xlxMcJE0uBaLlY7E2M9B9cj5IgKr645NsioU/rmiiNzwy03HQKlrnG5bdL1FY8q33bqXPk7FiG3vcsv0dZ+NZVqhdn+iTftxRbEM85hGZzg9fupheM5M7c5EhShI+CyJEptkFdmxKb3ItjGy9VyUJEZEG2ZG91yrwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b7Jos1gd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b7Jos1gd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE23C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786419633;
	bh=tA1fAjLuRrsuXdSb66lG3P7owM7HHqRI2TWoTrxtenI=;
	h=To:Subject:From:Date:From;
	b=b7Jos1gdzYyiEl19Ftx/ApnqfBvn/L6TDSrGNVtnBmE1INc/Gg4XOhhK1CbFJj3rn
	 AfZhqq+GDraY7QI9UgCvrDe0jbVBwobFTddKa0+WYreCQ5ANtn5OcEk2zRPcRW4nXe
	 Cd3TITb1oPvpdLB/awz4QgDX6M8sDKWOGsfsyf85nQGQLWhoc++M5P0V7d8GoecI2y
	 A2iFMeNh0pkROCYl0tNbmMwNHoHuZWZPVr5Ofz5fDfmRGO4XKtTq1iasLKaN54R3Wg
	 dSCb2vo3fnhZ6BqAMCCZ85QB8cXE5bqaZWPma8xqg421j7F2QESiQc7RBy42XkjVn0
	 GmgBnMoPDRG8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB3AC5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178641963368.24752.3207348181271602898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63c34bd30b6db9101b34daa5011a693eff41e5ddf5bf46e4474671aa34c6e26a
Date: Tue, 11 Aug 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786419633
