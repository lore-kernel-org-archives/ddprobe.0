Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1D7D242D83
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766265233; cv=none; b=lynyh7D+2JLu7IRZzOuip3Tn3FhdIuBxJItNXK43E0aFOt16MWOIWrfwVSLdkEqmrGEnf1VUc6NA50LkJ2R4QIeIX+xYSmhkwnIC8nxpg2/iG7DnwxYDl7+nzOzz4W19vAZHdcWbNsSSzHQ44VaQKEmjEEeQyTnY/8F0WlWR1Rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766265233; c=relaxed/simple;
	bh=J61wx4KIZLmyxL7+DdNHnk0WiCZj/WZd3OYxoU5zOKA=;
	h=To:Subject:From:Message-Id:Date; b=Lt9k/x8Wmf+L7phq6X9bZX8rl9vLTmSQuo/sFn66X2iwrnXnzH8Zyj19JtB1X0TzYAC3jPvb6vYb35ziyVWIHMhO4KziX0H/WWZJod9Pr9mEIpZiF38xqdhGSprIrKNAZVosIGb6UBG5vdAQxbuM31diW558593SyiVRRVCh/l4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZDm2YP0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZDm2YP0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3ABAC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766265233;
	bh=J61wx4KIZLmyxL7+DdNHnk0WiCZj/WZd3OYxoU5zOKA=;
	h=To:Subject:From:Date:From;
	b=MZDm2YP0UXlbOJOuBTOkLSnHrAFMJeRxWY5n4plWDaWRt6cshczpkOz2KKbNskdf+
	 pMzZXIKKSxw895/WDlP2TtNbXgndsccNjbflAHMBlXDC9VJFNK5RlE4FZ3NDgNABdM
	 jY69EZfIQJpE7TcJr8YwslLRpDzyOrlwZFyhDuxFR4nh611Y91x9bWDMuHfRTgxHky
	 UQUaeKu0mCM0wSancFYzaGd6c5NaDU5DjwF7AZr1jPqUZOSicAiYb7Trlyq7pCaXXq
	 ZE8Vm7yL2LebPimSUalT2VwdkdRp7Fhh1MTW/kNXTdex19/CDowhpFRwb5g3UI5pCx
	 kD70MNRYzOydg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B13E668BC
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176626523358.2793.7915206404235551944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b08a489e7b8e520534b2ab75d0c1d1eb319e01ed2e5a972539b416d46ecd7aa
Date: Sat, 20 Dec 2025 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766265233
