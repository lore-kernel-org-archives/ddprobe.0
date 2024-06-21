Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E84316EB6D
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 10:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718964143; cv=none; b=MaRJNcGeDSwBV0k6anwYcArKAPRcTx5doDzU4SiwnbJmvaG1p0ecYuBq3+ubuAF19Duy9LgFzCPO77jvkzFXQuqIXUTlRlGHyLjHHJczzLutYfpemmZYvuKiJP4p1Iz4waRlk8JzOrc/yoMMKyNYl3a3QeKwsQEeKZdNEYa1dls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718964143; c=relaxed/simple;
	bh=hwZAhsYpdi/Dm9qzQz6zNBOpg0s8hHEz6J3YtqMrgdE=;
	h=To:Subject:From:Message-Id:Date; b=J1FvAIMX0U22EA7mzKY7x1P+XnTRiBgmResXz27YSRBcLwKSR7BENGWMAb7QB9FhhTIisLz4ljoRiqMIEEyFDJ4rmPUCPGnfMJn9tBM82d+v/Vw0jFIxtOqDmpN6cOYchYkVx+pAuN7BTxZ076Olxw8zCwlUBlE9Tb4DJZteI20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5MmMeWz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5MmMeWz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF521C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 10:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718964142;
	bh=hwZAhsYpdi/Dm9qzQz6zNBOpg0s8hHEz6J3YtqMrgdE=;
	h=To:Subject:From:Date:From;
	b=W5MmMeWzxsPXDH2vfDcjM+5jbbWWKkRSfGkGmziWZMvKuue4vyi8WziIv0w4p1MjR
	 UPEGJLOElNi8xaP+imTC17WZQ6WQRvotcpLCJijyygdhL/AD2QESJP5p++NpvarDhJ
	 y6KYemzB69i6n5pwlXXBP092GUKBpMxrBjWY3EWM719L10X3zgd3G4iL1Xf3wmmYIV
	 kIDyrvWHsXYPLZyr5sKc6odnXFsga6O+lZd6y2hQEPbiKjQCxE+Sl/zfEuYqRZKbfW
	 bCkheDtPfyry0qBYGQUgws/CZ08232opUStuec/9RtxcRYIRmC21dExZQ8sfVKLgEk
	 cXTcnTFjleWHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCAA6C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 10:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171896414276.1083.10065810766202224849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bd0257f174def6f06f28712dad1effc54fd33d54c28a603fccf0272ce9f9cac
Date: Fri, 21 Jun 2024 10:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718964142
