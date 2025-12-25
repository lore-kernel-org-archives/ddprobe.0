Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19703A937
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766649234; cv=none; b=h0JfhhhXxH7Axh824Rbwo0unrpE3qReKgdtxUWxbDFI2/Ebw4udGBTc9eozM4+6paEa4+BKgRxzkbKfaqLh8KSF94cT+Xc5PhNlb9I9mx2TTMuIskSS0r5STB4+67eMlY9j9gk0fu/xY8aN3ZzMTipllHnqlgRAIrC/wyPCjT1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766649234; c=relaxed/simple;
	bh=0R/9gUq6b61F+OWy+/nv1Gsdmax84vdPeaJ0QPNCvJE=;
	h=To:Subject:From:Message-Id:Date; b=nT5wZdmHKgiRZHbO/gf/8pgCqkXkNcmznswa30NUYEhAVbm/KFY10SnjbTFJZhb1XQg8XFGmZ4KsHjhrL+r9pTfIfEeGaJc2trKKCK7hIlMfaJL2I/JzsW+ojkLIZ2PKnlXkL43z9YqWnGmSYWKofg0VRVVEG6O21ZFfIVJ5HhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XjQ/uFyy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XjQ/uFyy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD47C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766649233;
	bh=0R/9gUq6b61F+OWy+/nv1Gsdmax84vdPeaJ0QPNCvJE=;
	h=To:Subject:From:Date:From;
	b=XjQ/uFyy4m4vDfe0rXe0sOZScs52MjE/43hNxAXCeM6R5bQF4b7f1keqzq/MT5nGe
	 uPGRUTu19CYgDULhQQz5q55FNCDvwAGSPfmQvnPGke1Htxd0/TXeyLbJFgTku03yA+
	 cvdFAXUN4wcaij7pR6XYJva8E4FHaFlCsmf35o+hTO7pFabnPxMCt9fwMPBlXWpFq5
	 Xkjp5AYsuNPFVm3J9gjS8PRWkVOsJGMgPOYLRdDCb+LBo/6K9/i9rMC3d5W/+fDMSP
	 Usi8QvShbMnUjiVR+/SE3NdwEhWRjop4GdkCoLEXlSTDdMd6fQ1NVZmt2SCW6T7PGP
	 Q1waVXumg6hGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4A9E7AD40
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176664923357.7823.18119963464333722632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a572a6be55b274ca5ddef3b9c069ec4e2ae82cb9d288af0ddf5bf5fb42a8ce3
Date: Thu, 25 Dec 2025 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766649233
