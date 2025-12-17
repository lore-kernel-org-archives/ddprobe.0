Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9B111CA0
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765943034; cv=none; b=m79zriEvW6sURB8cxK95KreBftmTQqVf1DDZHv/Mk1ARkicrMr1fRo2Rga44Tub7UCfWPBoV2xox6/E/7IAoR25Blq+OzrDN1GAmP7qMSsNz1WouQo7pAMC/BwmYHU4Zvcq0o3uYeElaazXfinJGs8Mbr3EFmfUuA7ChW1ulDf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765943034; c=relaxed/simple;
	bh=0F4/fZNz9KHUXjePdmEXuT8mw9R/uisjfrqGf3q6K70=;
	h=To:Subject:From:Message-Id:Date; b=eM7R8BGXlFBQHj84+P7y+1eYUBD1CUi/w27MZFrK2O9ZYd17QlksUMiSH7DuaQoFNFGg93EDUURxPk/7VtFikPQtG25j/FK4qWcemw43ynA55trEfmRbczINpW/y0AP13y1m5NVBnfnCb9W9+YPqR5hrMWl7w5/hg/d7/RJ7jXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HQ0xFnRJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HQ0xFnRJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F42C113D0
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765943033;
	bh=0F4/fZNz9KHUXjePdmEXuT8mw9R/uisjfrqGf3q6K70=;
	h=To:Subject:From:Date:From;
	b=HQ0xFnRJ4fzYF2an8vJlGMkzhPFG2aLkMFILBTdUUDzQ/aD4wc27MMT4O1xCa6Eio
	 0nZW+FwWaf1DYjPmV0AfKN8UWDfKjTtLQH7i/KTqCs6nT9HWRQsHNgSsFyHzZDbrLd
	 knNd5hgqDugz5D8KbxlnpX9bTor/tSgPr7solaRg9BP/juD4FGwmIX7hm8nbodabxG
	 d2HNhxsbXQkC0uCiLczWLZ/FM9YacDjQcd4UkiGckI4jSfVQnchmnzBmtCaxpvTj0X
	 wTGcuGHTfde/oDBNVFr2W3GGFW2Pv4x/P5oJNYmlnk6bIWTbnNDLZvQXLVLQCo1XRY
	 SQRv2Zd7v4lSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A10F8D6406F
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176594303363.12677.2860698955644461340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 027dfbfb5d1a124efb57603e6418d4696a4957fcc29a761e346dcfe106e09a26
Date: Wed, 17 Dec 2025 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765943033
