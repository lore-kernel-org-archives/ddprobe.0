Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382F033F6
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751008794; cv=none; b=YuZgmywLA7KdduoxtqnA9jOeXerxCQMrolqYQ0HwVJ2FP5rfeByOpukVf1iKEHfad0J/IkTVHMuPd2C3cC20GhUPWgezgo2Sp5IoeOSvMyN3SfMbMaJ0Kx57Rf0Hn7UMn1mMJLnpJ/O8Cn6rDnrM+wcOtp7WN+cSu80/kuY2Xbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751008794; c=relaxed/simple;
	bh=2ZYg5deZDuB3bUPh2EupRMp+bEIq8+/Os4UUCQLwuzU=;
	h=To:Subject:From:Message-Id:Date; b=C4/2cNYEZRpPDYixINFw0VZLeRH6uBmJ1fYHhjZS/++siB7kn1YbfRhrRnYF949ZrcJvfRHd55U+8Uh89LANYuIqLeVJ34739VIjiGLszCCgqIZnPaHcneQmXsxi6996NbVCekDMPAQT6dOlrYyTSNjSVMm3iZLg1G4SODObHY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e5+RrLm4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e5+RrLm4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5236C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751008793;
	bh=2ZYg5deZDuB3bUPh2EupRMp+bEIq8+/Os4UUCQLwuzU=;
	h=To:Subject:From:Date:From;
	b=e5+RrLm4+WeuCA/rQLuvIfBmQehx8UA6VmBXgiBoBP/qUwn0VjAOngiRL+BfZIhtt
	 2ST2273HYG4Ao/zs/bUwakKiu2mj8iGkII/SXR21TAEZE1Az7I0Er04cNm6Kf8XWOz
	 5nDp8DBsLtoRBKVosb4krRdH7npdpmsckSMBdMr9w0n2iT+z8Zckm6Be/xg4/SmEBe
	 9y7tEVkjJ9wvCJL/sYPkrXOFllJ0u7zBxAAKWIlYbUnVFGaj/ozWv5l+2tu7sTKxHh
	 k9ovE88/D4h/1JCMHcKe3DcoGK7JxXgVbIEuj6lq5Gge0QYi3Fw31DPaGm/CcSgUfV
	 6OaKoSV3nFSWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC6FC77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175100879358.25231.15841374215518870221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a35914fb30bb2ae937476cdbd061ef9c89c02e6e865756703ebc45d7974268d
Date: Fri, 27 Jun 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751008793
