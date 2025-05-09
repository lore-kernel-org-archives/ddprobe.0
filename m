Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6CC27A93F
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746782994; cv=none; b=fUmDCv/9gCil4n5s5wvOxZBjReV6ceSNoU5NhO3Mvgk/Jx/SUc7mA6ZBM90RMu/fBMsNtRBGKb86t2Cb+AR7j46x5H/+gXheH16SqFSI7wcRWwa0IqaG1RbjukY7bBD5Un3VMm6fFuLF/MMzCZ1dZMZ2mu4sGYP43E2xe1cEETA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746782994; c=relaxed/simple;
	bh=9Y+ueli5jkD+ehSi9wzkfs2k2er+/Eq17kdCII6zMps=;
	h=To:Subject:From:Message-Id:Date; b=XMA56mTJSt7axSvGHtapF83tg/WqfQ6EVuBWpyRth5lCpirWOrmagPo32FcmcntuxjL7Conm9PFVQrY9irrKhlBhJzCsm5U6DohSBvpjiISrJ7Y/06XRnrRp5W6vxMDWpM6F6PcY5QSqdkg1c3vF53xKGcDp7LaKEdK+NHCiIiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VNMrJ45r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VNMrJ45r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E14C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746782993;
	bh=9Y+ueli5jkD+ehSi9wzkfs2k2er+/Eq17kdCII6zMps=;
	h=To:Subject:From:Date:From;
	b=VNMrJ45r2PkEePc9oItHAdO5BYbUasEqAD9IOqtzBSUB8gMNHfUEJTdjFAGSN+Y3P
	 By5Bu90r/OJnPHLrtRvbevUw2bG03gSYSDarbzI9yyBv8AlYJJe8Ph3QqzVm2qEoJ3
	 2gnA/0iQKu9e+NmsU+y03I8qAZ1+oFNy+zrxCLhIXlEznqGfzmoHzDqFF581K06yw5
	 N4p2Hmbh7RYwoFZU9Zs9kA9LMH9P6vEVzm2FpkiH30goi5lSc6azEJxll+Mes5zZpb
	 4HFP1FxbWxt+8BZB9iKBU0Q6ZYIFmnmT6ghMB7y3X6wf0Se/0KpxE1gEbQR+0C0/c6
	 xkIPm1HOiC7AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C2CC3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174678299358.14650.17276604203342656960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 514d8c4c9cb8e00713b5843bede8c01987c82ba49256cc2f70fad4c7f5f373e0
Date: Fri, 09 May 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746782993
