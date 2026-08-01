Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532FC2E6116
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785574834; cv=none; b=kjBnvfOsAoRA4858CrSIlKO5kneIp9iJBTvwlslchv/P2HrFwwz2D9Qjha1d0L0uc/zJw1vsk+K3JdGn5epy1Jhg6PngXU80Va+98L4VFZ9Nke5etv619tG3ZG5AVNjoFsKwaRz0HAgP5s+A9elQMexTaUHYhIgc+wNMfqNVRyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785574834; c=relaxed/simple;
	bh=YGu4WE/opW9ngkuz3lNcHPHYaTbxylUsm/4nu5ObshQ=;
	h=To:Subject:From:Message-Id:Date; b=FbhumH1l0Pye39a/9DoCISLz09ETUZkmYtP83YxdE/Lqunfu4J3kUERBRcrJAlH6/KqQAxIEUrPZMEjvptZFUln0lpdEZgKpexQMZNGdx4hrDqnBr9WBL+iPxiNr0HAsURXSb0XBIK4JYf2JsarLektrEfjNVyyBHFxWPdmPdCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O8mY4pka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O8mY4pka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1A7C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785574833;
	bh=YGu4WE/opW9ngkuz3lNcHPHYaTbxylUsm/4nu5ObshQ=;
	h=To:Subject:From:Date:From;
	b=O8mY4pka8OlA+cHDaP793FDkIgThJaHNwFLeGf4gSsnSTNytWC+57dNA6sLW7efhC
	 qNz6s/9qDHRop1ogGAoyI7YDOkaXCYCb4oNjYAibhZXCyUT4HIMAWb58B2/jeOSRru
	 wNpx0+YrlCJ6eWySCBPYvxjeGAZJUgJmdCEsgAhOkn9rKRVQSz8CrlNQZhsA8OXeNJ
	 lg+OUol8wfxG6VhpGm7XJQ2UMrjHU5/MDuBbDML+aWw46wYuS+L+ryODJLo2lfcgBi
	 yy8tLhc1C3NlceGKhlEUgIXzIjCtg5RxA/OovxldNUtSYw4Kwz7B5ZoN14ZNqCJC5J
	 4OOQ7BavkKAKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC518C54FCD
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178557483368.18063.5267190334728983074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37cb7bb64625059c619b94a8bb6656a8bf5b92c4bd7c7f67377217e9167d6ea5
Date: Sat, 01 Aug 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785574833
