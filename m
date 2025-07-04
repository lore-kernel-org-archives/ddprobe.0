Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321B772634
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751668794; cv=none; b=mWWSX/LvAXAUWHWCmLJ2FOQDtE8XOuVz6nCdjCirq8yXO1xJXHxyl7c4COQeOnnbrrqrF5tVCbPPVa7RvBZwmF+BKHyce/xSXSbWVIvKaLkGq+Isrnf+AzOGb1mA1IVys+jflWH4bIQCXqOhopOUSjU84ldgTMMadIVXxNkOmZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751668794; c=relaxed/simple;
	bh=laq9pgGWltAo5qsP3rngiZMvxWU7/MozPcG6faCZW9Y=;
	h=To:Subject:From:Message-Id:Date; b=c9JqrHL5McTLhIbFKrGsftoRpK7pWMbwdIZNjVrGlc9X4RBRZJNgcVNhgm3w5aABl1Dx1bpxpZJ6A2p9XN642yt1KL4b4FQHA1gczuGWVLdVvDUuvXC54kR4kfCcf+17vvIFIlx5b0mNSUFru3FiS9gkU7uB6f07ANfbBLdiozI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+htl2bF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+htl2bF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBFCC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751668793;
	bh=laq9pgGWltAo5qsP3rngiZMvxWU7/MozPcG6faCZW9Y=;
	h=To:Subject:From:Date:From;
	b=r+htl2bF5nUaVK3XTd370JDKSiCVr17wANXAHvcp2eYcb/luxtB4hmuuUBd/V6agl
	 IphG+1qJTW+nFvsb5Q/Xh2IDMr6N9TZBcAG0U51LZVtR9BB1oxMNaF8FfW67at09rF
	 Qphb2uN4TYSizqALqynNs1CN3EtZDiXXe5hpx002foTkBCVLGQayNXw4KgMzqhYRV6
	 Q7MrCJGnJ28SRqjaaHHjmB4Ct8GdsCHRHHbXYuGric+8LyHFYQ/jLDSYGkFdI9oeJ6
	 22NHm8Tfysbba1mK1sNZWMTXYX7GhxJcwkwVFEd6V1IOO4JCd5qCVukuhEL3BXbhvZ
	 h0nVAFTBljROg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E868C83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175166879357.11591.12376225182801408280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3a37e79462f960924041cbbe108bff161c83059366955f56e14effc3c4ab4d2
Date: Fri, 04 Jul 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751668793
