Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75ECD44062B
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787265034; cv=none; b=GnD922fmClw8ZkZlOR8cGkllwt5iQo+/lppid3I19qI7QtOiL8Y33QZODUitMVq+36AfBdOFuU5/LTVrqLUWUXuHSgULSIRuTenXU4N/CKHS1CWm8j0/lFPXfICipQT76cfqIHqUChBm3TdxqIWjcl8J9U23wdlUJjQkARn4+GE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787265034; c=relaxed/simple;
	bh=DbKQ/763xeY2SGsizZF2MGJ6Q/Rlks1Pi1KncM+C+FA=;
	h=To:Subject:From:Message-Id:Date; b=k29dtJEraalENI+cF21G/2W9l1RRGsmE087QuMH7tALI+sDuiUs0+CCRD/pPjfbtj+zGwXvk5WRcQYv8vnMO7ZOhG+Xd0fOLTug1MBMS8Bl1vwoBaiHTmuReyusXdZreGFmZ0ynuUZoJQOeszpBIaSyzWtZHuDqMBxe5rSgeQJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IcdypACh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IcdypACh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA8BEC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787265034;
	bh=DbKQ/763xeY2SGsizZF2MGJ6Q/Rlks1Pi1KncM+C+FA=;
	h=To:Subject:From:Date:From;
	b=IcdypAChrBgfkFDnVjp1B0rO2mHIgDczxAer9L2fKiBy5uRVMUnVLpPVvD+am074i
	 EOvFcR5pQY2laMzIpEUGrFFTXTPWkPHzNKfjm3ygPxAPQud4UnmClJAn+QJLMx2Qlw
	 bJPxN9nUrnWQ8LGVEXUT7ieLskxVqRdtQC8QMNHIFmKZf0pYYNf7S+eJ2oUD6HH+kb
	 fQVFuaFd2G8228CCxl3oPxQewVlg1BqtE8Mf4gGKapkhlhafaQdMNrSjNB1I6JPlj1
	 vfP+HeTKIlJw8aQOMKmqjpCqzAvXeKgGsWym1zQyOCYGWtr1wcYHmpokdwSLSEHFWD
	 agNLsC/naFWlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD5E7C5DF87
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178726503376.1930.16326655608329982864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b6ba57e0af0505204c41035c3333aaf5f2695d7d671ddbc6e7fb5f9c86fad24
Date: Thu, 20 Aug 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787265033
