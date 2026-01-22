Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E36E32D43F
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769113434; cv=none; b=N5Gf27jSwiBJrSPa1cStn/CRYJ4F1MJgv9on8DC6bnxynb7KLdEOK1xYSgoa7ArCy1kUaqmoXn4pMwEowDAVJXLqlWhzZAOYZzC/sh8XyPEFoHr6e8FPNce4xoKao27s2KYennFdVHylNbzImXigTb6Jv4pdlHq44E/g1OILH0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769113434; c=relaxed/simple;
	bh=MIWOXesV+evreUraukWmPNOgW4QRx2pE0dV8wM/xsqk=;
	h=To:Subject:From:Message-Id:Date; b=gnYMShwAwTvZVmQQnf8LUh0NAIIykK4XYJ60vhJvtCIza3HUs+2N1LrtxNk+w7cOWSItPVAPvNzhf/r8oniUgvUfDETlhP5tPW321bl9txCBkiNdEwmdaIiObDVKNUcPDclwIZGvC/JRenMCXrQNASngnSack01CtoWhWJujsT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rf+VNB6k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rf+VNB6k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6624C19423
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769113433;
	bh=MIWOXesV+evreUraukWmPNOgW4QRx2pE0dV8wM/xsqk=;
	h=To:Subject:From:Date:From;
	b=rf+VNB6kdk6WhKLjh+sykOTBmFhKtDE+3fFnFsMN83tIbFZ3pfMJY7pP86/5DQrCT
	 Ac4awUpmozpl7KLObkAnrZLd/RQ6J9sMNITbSZ1JXWSVecvE09dcnTqgFirGp3WF6X
	 ptH0+DkM0B4APDNlmYyp/NQnff5FglstL5BhMCu0XWsG7AltkUSgQqC2al+hngs5q2
	 OsYlnSmZztQozSIYbgLyaEGpDgKGjIQ/UqRpMKuA17DwKAWkLMD/sVBl0DGYzknqYA
	 +lmgRb1CfserYE5rdAoPQJVMtXvjBAmw+ixbm+R3Z5xMRvtKSW8VIVi8yRW4EWZ9w1
	 T/cBOiPwI97ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924D2D6CFA4
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176911343357.23151.11774225933885649251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a7074f92b26560253873a0a2c0c5cdae59e33e67aff9cd59c480a9ff35b7996
Date: Thu, 22 Jan 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769113433
