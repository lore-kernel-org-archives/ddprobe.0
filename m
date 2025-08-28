Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF9E310628
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756387194; cv=none; b=FJKMjOzHEhVHX2o5hBrUCSYWmP+yFSZgkVV4lSUE5Ro28sF+vkY908wai4ZQ6hFjjzDjywOQ9V0QpGijswrrwu2e6XsyBA87nzabZ8La90T+95Dfq3COBttxNACabXvaHb1+0OtW5eg7GV78SJhf1Nk9iFf5W69A4omHRc/GQGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756387194; c=relaxed/simple;
	bh=/L/cmtlKgZtxZ1IJ2q9orKveD/VM1b/J1aDvoqzYBNY=;
	h=To:Subject:From:Message-Id:Date; b=AzOanP2hhNN8ZbWWbNCUdPQerYXzKxCiM8aoZo/u2giz2LLJEZN/RMU5njTDRM8XEKVSjnTSufwyxNtzSpcaaLhSmjTdiJe1JC2Fah6sRml4bw2ojRMbaum0zlgmLpQeCl/saj+8FxhiyrYicl52DnRo/EZnG+ah/ifHIbqlmkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f8Ohkloy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f8Ohkloy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1C1C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756387193;
	bh=/L/cmtlKgZtxZ1IJ2q9orKveD/VM1b/J1aDvoqzYBNY=;
	h=To:Subject:From:Date:From;
	b=f8OhkloyCJTfunywkMUe8QSPQBrosFhZFWlGtFMmWf+zJfSb6V9EQ19DttdV1QYUx
	 bj0bdeZgf4rcpg7lmpWhBXBCFEYTBH5nQJ9cKbQU3SOiOHAt6Z1bggSEg64N+9Loa7
	 Os27TCkdfmnYblKsds9hDRVGNX0spCE+oiCLk1yhrmI8GoPg2QcE42xciclJwRBydu
	 ymbDCNismUCFKRjeIHA28E+OnHHqF4Scoy2Tww1xUqIFl9WScZfj48HcSqEHYhJgoL
	 5bYTWDfFejap0EVqVcMi45ff6otbrS7oQr4ua8uJqV5OLB1eFtD0CQPIc7DmBjEori
	 ZY8h7Q7TpeDoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E43CCA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175638719357.28627.1202263346799922008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a2c05fe40f642f5ca82497fc3047cd409017bd7f0b3120a3ec5c2982b56f0b7
Date: Thu, 28 Aug 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756387193
