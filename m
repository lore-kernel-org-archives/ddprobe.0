Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B251B425C
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752741594; cv=none; b=o9CTel24pmYQqP5WPLU6r2Devknor8WIIGByXxNT1428RlvpF6CMF3il6/glTlyxOOW+Of8mj361isGiCCgLrhegzFsLov5seNg+FqQUFislKEGcup0LA0iogqPqqGuumc69gfujFL1+OsECc9ewGCyjaTFrvoacg45yRifnclY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752741594; c=relaxed/simple;
	bh=pjTRZVUmaX3bB6h9Bm/lAvD8tUWdHpT8VNiMM2kz7l4=;
	h=To:Subject:From:Message-Id:Date; b=iRktet4AuhmSNmwewYDFdliUB4fa8KaX6yauX73IsJ48tzw1PoiNQi6ZkAHsyCokSbOyvxsMkbuYGP+SDyBdtTMsvdFMbL8WdZ4ozqTvnZSx4m0oKs7ZysFyh8b7A4U8zSj3d41esFcqgE0YqcLC+cS1N0rTTUg9DBGo3BHR42k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+Dr5LSr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+Dr5LSr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F4CC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752741593;
	bh=pjTRZVUmaX3bB6h9Bm/lAvD8tUWdHpT8VNiMM2kz7l4=;
	h=To:Subject:From:Date:From;
	b=P+Dr5LSrKGtq+nwBEpLMj/lFMh/NrQksEHyd/Irxe6ZWx0FvJ8+Boi9VggEUEFQIN
	 Eo2XCVDnEuSpQqBPnhjzENrhzcuBq5OcMbrbiH2Jri/OUeWUzMJo5gPqQACR9dkEHV
	 YzdB7mJIUYKqrwfj7Cw2/U+lkfs2K69pdRGDsBzOwCCbRpSp/fEhY4Pv39si/c7hIU
	 XXlAohB6/qYycroDkV6yz+pH4lVdPluE2BuLafNV36WBMuDLmBZS1fWWo3f6BCCoib
	 BSUUaeCfsvp9OQGmMHTlVF4iorBln6fTN2Hos5Rk89/wB2y8V6s9i/CxJcbG8DylV4
	 hBvq3NIMlBnhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AE5C83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175274159359.13665.1959953134238616088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a65729ad481a7ecf9dea2d7a5d5a9fa34a4543daff15ff94e5293c918a200652
Date: Thu, 17 Jul 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752741593
