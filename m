Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E28144BCAE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 11:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782904714; cv=none; b=Tu/6RqLXkgoa5a0AHLnpaZ55nZV69lJICJdV2xV4hJD8FYVBlIQJeXjp25IaOiFajRUH+7YpFcmIaVyGKGD3VzQ0PMfG0ocPVu/1iePwYvx1oZxpyTM984674p2WDPQE6rg+n6EAQV2OGXS1lkLU5b2SDT/T0F8GvPsBdSvgtPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782904714; c=relaxed/simple;
	bh=AnpaijJc5NF+fOh/qDz333m2OwNJVw0v7DjxcgJptXc=;
	h=To:Subject:From:Message-Id:Date; b=KdbpRXexygx88J6ozvtpWVfq04Uz79aX6dPx5/VM5mLlHBOIU92zVEmsPylagv+rQzSpgxrTMOxjyPie/EH7G20cgVkw/PLRySw4magusEnRHIY11mSpqMWSyrSv4JO41r0AcNzhLMhsv9faMaZBOVfPITduU26DU7YGX2O+q3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=quXOQbMq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="quXOQbMq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C792BC2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 11:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782904713;
	bh=AnpaijJc5NF+fOh/qDz333m2OwNJVw0v7DjxcgJptXc=;
	h=To:Subject:From:Date:From;
	b=quXOQbMqVMBuZH5/67qv3ItZtE1wWr2MCbEpQ/6BofMFAYQ9mcNC/5sE+EGDFZzET
	 nBvGhEudPRvJi9GXtjvdIu6u0d4v/eFmPdSYGlsOpibbK92wAFx5EpaCtdnR4IIcqh
	 ljUGmc5pNu6ZqjUWzRLhtUzTgFA2fSod2QaRVe9o94luTuR+0NOPZU3G1PMaNXRTDc
	 vD0wTKpi30Tjm+UMxTz66zwqmLJZU90XFQ/G33WR0k90ZFqNuASdYQzw9mLS03f3E3
	 NDeawkN53LXOfGHjgrY1p3orQSAc182N8xcyaFihra3c+zGLLYm0zWLcXWZU97RDQ8
	 ykFcWKiCB9GSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF67C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 11:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178290471368.22407.355757995165565656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd05ff33964393320d77454f905dbf484ce7741782e7f3cefaeac7e2b0862d5b
Date: Wed, 01 Jul 2026 11:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782904713
