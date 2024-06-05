Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4C0DF78
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 18:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717612643; cv=none; b=WZ620AKLcEOe8IIRxwokFejaURFfFGySHpYmNBBMRX6afoO8fufB5J3XNsfHpEoDD70Ur8AcjIrX5sH7SiG8ReKSwDTQAX2UQq2iXA0juBIl69qghUi5yDvAbl4+HxOC3AT7YNn+z6hRsqdVwGPFaiuwUi8tJ+yK4tw6pmU4uZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717612643; c=relaxed/simple;
	bh=Vac3omAOmU1jxWyE7TMdX3pRntC1cMtb/uyaFDD7KwQ=;
	h=To:Subject:From:Message-Id:Date; b=efEgtYPN5lw+B23fW3jjvgfRHZRky/RtG4UWMznzLCkPH2azDY6DqCDYJ7QRrVvVi4y0pKKokeFMUdqz81VMlUbAsccvmwGOBc1lfgAVsp8CAlfAQ6nAK8E7Ss2wyewHDOc4bEnDAC/oOUjopZFsAanRTnGWVuYRR3uTDIAS+cE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KGImSSQB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KGImSSQB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8CD1C2BD11
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 18:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717612642;
	bh=Vac3omAOmU1jxWyE7TMdX3pRntC1cMtb/uyaFDD7KwQ=;
	h=To:Subject:From:Date:From;
	b=KGImSSQB7XADDSIujlzUXD5LQHSNS7e7/IvMeQ6VPtIZ9FhuR+p04lORusOX6G6m1
	 RhA0SZUNyqssSbXTXKQFyhozG6MglNR248lP64qlWmMEl2ZOSIMRZ1P3k0gBhR1AiU
	 18cGOIvrBUgy+D/srDHUBj1x4kTsEVVEFHkgp0pa66Q+W8i2yTt6vVTnik7c4LLON7
	 z4IEDdEd9fYKs5PqOvb593QfGTKQHXJfHuTvcGxDtltIPnWy0jHr+9YiOcPaUHm0hP
	 pZazKzUsmqHKElpvXF1fYDtDCnNMCf64vP9Hrv1hcOW2sJ3mvuCGKOzf69gGdy7On3
	 MrcmlKZMR2g9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4EB6C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 18:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171761264279.4813.10159597694927214561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef60654a1ef9a703291d0f2a4b345074b165bf46c6f73defe7d29e17a658002d
Date: Wed, 05 Jun 2024 18:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717612642
