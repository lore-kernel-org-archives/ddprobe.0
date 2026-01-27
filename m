Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1695033B6FD
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769552034; cv=none; b=GBYSqTLX8Hznf0nMvLNwRLM7GxVuzb4XUdQjA/t8iYQiVkR95ubyHY2EyGOXBMvq00k4bgfDaDqBtT3Hywh2qcnOpRl0UVpEdrFl3Z+z1l9FMiPoaY1Qvemnk41OMlZETg0VWzVfqPSbc+HwAi9zmK/yyHAfHqmMCLsp/cLjagE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769552034; c=relaxed/simple;
	bh=Wm3z3I6kT22eDZFgxsSIKnOP78JcsClDExKtwS0pPgg=;
	h=To:Subject:From:Message-Id:Date; b=sdq1scrAqfJLRZ0vhE5b5CnWXg0R5h5eulBO2K8lgyR6pJSrx1bkMzsS/oJ+p45nIsZXyir92gibU/ehIOnXFcOM+Dv0AKy5QHLyqAmskKfa8uO/FOkV0IPs1hFd1jOuK5HhYUSjRKvg3ISK/XCuz0YPrBHbbqP1iMaLm/C76hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OS0owCIE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OS0owCIE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2265C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769552033;
	bh=Wm3z3I6kT22eDZFgxsSIKnOP78JcsClDExKtwS0pPgg=;
	h=To:Subject:From:Date:From;
	b=OS0owCIEGqj0NZcqmEIB5TLtdldIa6KdPPMsMsIxP/E1Soa6+gFvQ//UuDGFltFJV
	 rg0kCD0jpZ0YzSegEKyTSINEbTZJRPvshHybSNV9/EBuBlXuJKshBG8UREwjD6uN9F
	 x6QEaAlzddA+BAdVEz5JPeb2lRSkei8uY0DURQwHbcJxx2KIReImBhrhuiu0y4IYnM
	 g7p+2DzFby5IIHI5g6zUvghV6ltdkQJ+nWwMlneCt4fkZZLIuONLFujd8+BSMEfj5w
	 Ti6C7tlJOZcjDwWNFa9kfFYKIqSmB50d+BJzg5CennVxOl4DuLs+UeR/xVnx8Fq3Qc
	 SGqwXBjTgG2rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D42D2FEF3
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176955203358.9960.7345652226908123482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d859679e787ce4baa70f7581d49f8aacff1642a873582b381bc7aa81b4453ea
Date: Tue, 27 Jan 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769552033
