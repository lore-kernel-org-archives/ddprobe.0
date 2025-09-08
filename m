Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04FC11D63F0
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757303394; cv=none; b=SbOuv44O29Yd89qeyza59qU6PN0vCTx8isDPAU5Kmocz5uQz1cePgeTDCyD3QNr23t84dM2euCRB+EWYpsqwoLjI2tPiNKk8PtHcFDwQGcWxEd9UX2ggUK0aqTtxV1l66nOBO6E/uA5PrqtSgT+i2C50T4qqwcIrb2Ve/nKovYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757303394; c=relaxed/simple;
	bh=HQiAkqgmixwziXye/nSxnDSg845xZhU5tju+Uy3Pwng=;
	h=To:Subject:From:Message-Id:Date; b=sT7jBQoiYulticKEjCQecpf+XbVM64gMiUZv2K/nfn3/gR2c5lb1yE4+or4kcDRcEF305rn3tQXlWijXId7ovhtouGlGjPCwNvOmu8ci6PHVFm+lxWbhWotz8fUOLmFVteapjfqXxLYbO1UROrB/44C9GLertlPjGoVlf/0gHSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YnEblZVU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YnEblZVU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEFEC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757303393;
	bh=HQiAkqgmixwziXye/nSxnDSg845xZhU5tju+Uy3Pwng=;
	h=To:Subject:From:Date:From;
	b=YnEblZVUiFTeIclf2coRjha2nNyqv7A2nwYJsx4fEtoAo2C+Oe7x87j9xOxjRykmT
	 XLyqD1fa37hKTfbwoJMtW5DG+7ADLA8ACZhhL5ye/cFNK5b7X5wmLfMnBkfym0HDT5
	 DqDsiwkq/PzKBbsNt/DUzUQHKawZvniLw9pxY5kStoP6lB+8NhW7ZgE9vdJ6GlXCJr
	 mEvTXRHmDgr60y3Ez42xAhajrFa9HEmlzrIaYNnaUczKac8jGV7CQ3V0UQgVo9FV8f
	 r4XBnFDq/1jbonU/znh/Hp+GS/fylxNeS+LJi146ioscKIE0mZ4eFZBQhPjY+2yhGl
	 loW4jNZz5Ys2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E70DCA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175730339357.2618.8079306238468329495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f0635401dd7dc3860cc1190c9dfe7632633427273ed94d89d2ad0398ed22574
Date: Mon, 08 Sep 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757303393
