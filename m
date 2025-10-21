Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB1AA2E090E
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761050993; cv=none; b=C+NQEsWPDfAMtOpW0Lm+tpZhe9ME2keiUWuxK4BWpmPFaznu5JcVYXQ7hzPTx7PUoVBgYuWKiqFZlBI9sr6Cc5efgOhcnaiQLMsOyyE00YMkDtAcqD8sjEvDW0oqP7jfuht5vSgyHR9rLOzSRnf/txxrul2UCzTTdp5blHAdGxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761050993; c=relaxed/simple;
	bh=sp7HhjOmq7o40enbhAWSSW20XA45h8yx319UYQuBh6Y=;
	h=To:Subject:From:Message-Id:Date; b=tfbrgt+2tsiQmaZfd4SYmCLJvj2r9MR77hZNiRsTYY6hMeIta01WaJhtXLJwzXmB9tiO33M+c566FvSoCslJcoun8HE5RS6k3qoMBwvxYmw9xcQUisqzEgfSsLyhyy61PePzU/OGQeEW+Mm3ttqyjd1901qd42MjUaaTuQb1fog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C875sbG5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C875sbG5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD08C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761050993;
	bh=sp7HhjOmq7o40enbhAWSSW20XA45h8yx319UYQuBh6Y=;
	h=To:Subject:From:Date:From;
	b=C875sbG55C3ByegMRb4/g5pEEO436pK4W/18NgGZu4qncBjOF9wqCoUOIqjXZSiR5
	 +UrK8a73he2sFznX7FRLvO2e15GAx09nnASB8F50dRJpO+mbYjEh1qVOpu+NggBjKR
	 V9kcBWdf0As0ve14OOOCFcUmosA0wZda2nkk+s7Dyke47vEMetjXfWCIakqLwzjNfI
	 AKn+7ANyyoPqa2OXPJv6VeA9/lEfLjBwaHBIb8ye5pF2/m9QXvw5b2BPJXKt4C1W5g
	 Dj89s5sTd2JHqOKZxyYRg/O+lxz57tfTy+paRhbEQINPOm3VXVyL78e0xJbJUC27X7
	 FsK0mEQuqVRoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904F4CCD184
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176105099358.1770.1872481510771656183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b908402da0bc7aecd523f7288d74b54fe052a5d34b8ac7e3492c1637ea2263e
Date: Tue, 21 Oct 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761050993
