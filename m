Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5451032FA3D
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774112694; cv=none; b=KBvqR23oDCJtUKSu5nGLWp+RAiKAVpIMtT/zx5CagOV4z9dP/HtOSrhzuy54DyiUiYsXjwdWj68FVdIhioi64BonzbGVRT8YYndrMxU7ePHKZgQaUZbDXMh75Z6N/I8uorWEXzSaXNx6bOt/FDCdDZ0ApjJSPS+3pc2V/JcoOLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774112694; c=relaxed/simple;
	bh=RIii+DthUMMOaIZE4lrO5URkID0ZVf+ex6InPS+WRUQ=;
	h=To:Subject:From:Message-Id:Date; b=t0f9t8yQX5HumtLK4AJXE6dwJs+fYWJozLJ5PmEwtPXSO3MFJFCjzLS5NWR3I9HHGZJLZgH1vJ61OxxkVtBrS7rNj0M7bs0EedGtm7fFuKmiRyIY5FBcT16905VAZarKT0zcZwqNeSZKHmdkI/Xk3BjT200/SamSbkcPWCheQF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kh1hB+PG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kh1hB+PG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30D9C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774112693;
	bh=RIii+DthUMMOaIZE4lrO5URkID0ZVf+ex6InPS+WRUQ=;
	h=To:Subject:From:Date:From;
	b=kh1hB+PGCIBryvjw7Ncd9MOmoSMFarb2Zu+H0X+/lZoi2hEnyyE6LYINxxal8xYIl
	 /eGHY4OHgsKiTp72KjsDnOLTtBNEJiBIt0Fa87mYcFT/9BCDcvq+rDwho+DEZf+642
	 xwTyaOAuqfh33JftyL7B4PrSqfoBGi28iCm+PZkr2mO8y8ypxt9qW+UGayHbb7tly3
	 D9r8r2fj8ZcfYaE0SyqVyh5aKTkJq3YqT5V0sa2Q3X8VM0gKe9urDkpvGJw83ytsQm
	 kChqsnHZNhHesiXPvfi282vSOG+P0zVHRuDnAEuu4wThToSlH2pmfuiAp1WfBrubkn
	 FfpWDhBlf3vVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9420A1094489
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177411269357.9927.15079969217331885211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e3e9ac1b0db58af7d0f80f4afb76eb7a1482055c27ed30063a0fc8aaa2d635b
Date: Sat, 21 Mar 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774112693
