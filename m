Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0313039EF01
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 23:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789428036; cv=none; b=LAk24oYoxPXqWn9SGX11/cTZogcees4IM4JgHlEL1Wj5HfZCrX/IvgiNUbf9vcTwDPQe1MEUfCuSHq0awT6FUpngkd6kMbJMOVk8Vs14gl9PrVrcbAQqCbmbHmbksmNEnLF+4BO/efYEI/827ColXtbOpgcT0t4okSkr1we5TC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789428036; c=relaxed/simple;
	bh=XrpuU4phkmcCHdMxqeVEutcYavMzBZgr1IOWSQJvvbE=;
	h=To:Subject:From:Message-Id:Date; b=Xdjv1YZtGumgOtLFP425qCL3xdfmpUOfqJ3w7PTPoRzu19j2LUuP/ses4Fy1k26WEWER0xRtHAg3dohXv4nBDl8Cxrgv8kyslMtUSV9XcbZ/VHOe9HwgCxwfc6fZ3b7cIDoPV3MUgCfmQOaOZbrzIm9xIcJk40gb7KdVPh9zYHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZBx4KWg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZBx4KWg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9DEBC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789428033;
	bh=XrpuU4phkmcCHdMxqeVEutcYavMzBZgr1IOWSQJvvbE=;
	h=To:Subject:From:Date:From;
	b=NZBx4KWgb+6/YpO1iiK9pUq9PzdtBDggprKyYmkuI2oOuzI+Np0MxKd/zw8L3sO/i
	 3nWSYyBOcedloM4pRRBuea9ilhC5hs8N8GaF/1WTR0SnHzIbi2KrSpEHJiQPd+JbFU
	 5D8/OT0dkhBmS7gwBZ01oihqJL1Htd957L9Mn/xuJHf7wjoprlbkbr5wRT0POc2C8t
	 AJsdIVtJsrPH5ilqXDgI7GF8DF74CTf37txse5rF0zXRReL2rOkpFqm69HkQsjzADu
	 BIDS5d6B4OIcSYJ1fSbBx77vgNy/N8SoSKcnAvSa6NmVXcXTxjkgunmdpyDcQX01RD
	 YXw+nrYgHfNfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5316C88E72
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178942803370.5947.16997075793507812478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a804a4d0700e893304c48802f2f8083acacc8769d839e10a8968a50c69b42e41
Date: Mon, 14 Sep 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789428033
