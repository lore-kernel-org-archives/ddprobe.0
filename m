Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 665AB2DECA3
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752852594; cv=none; b=TDl21wd7UUGfRNo0Ud/82FAhMQnQWBVGQO2I1PPpqB2QfDCLhpN2QfPJYOZL1Lj3YUk6lmDuMIOR1qV8OD0UQhDXnRk6mWxPxE8bYcnOHnqQvq3ms3N2mxz4N5RqTrk6UyoRSPNfR0BD1Wg2N8VMN0fo/arEibJItXHs4K1LfFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752852594; c=relaxed/simple;
	bh=o6KE766SQljiOhTTJd+rfHBdOQZjFnRJqUPr2tmqgBs=;
	h=To:Subject:From:Message-Id:Date; b=JW5AjMbyOHTwSB3zS3G3LG4/Z4ZVMPfx/nv4a7zq7EGL0syAfAd3ksER/Pckzr5FmZNU4fowD4czhV1H0n6rcO0+3xKMMd8tKhXXsxn5D06MzQ0G+9M6/RKxDrXTEWvixDeux/xzyoJvuPZTvQpiMxvZi0ihkhRIYHlGsjHxDTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=efLs1wsd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="efLs1wsd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1721C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752852593;
	bh=o6KE766SQljiOhTTJd+rfHBdOQZjFnRJqUPr2tmqgBs=;
	h=To:Subject:From:Date:From;
	b=efLs1wsd4oT0YICOvVQzgDS5lIGfhqGoUJziuLfpvmCqPhao/21SBUM19+EtzAafI
	 5iRXjwGhkBXDs63UMipHvU+C94oh9m+29mObFfTnrXl90/8H82PV4/xtV+UXggQcnO
	 dL3lJClHAEQdIHySxdm46BNUGow6JOItlMl2+yPhdXOs6wpls01vnw2P7rXsFT4UdU
	 ehwmOf63+h03D0FDn3biFRH7atqyGrxbxXItqw/mxDjzhIc8X9ynPcOPVnEbkcnOnR
	 CAfBm00gUtIVTwjB1Mwa34l/BOZidoHIUJ4MVWcBP9oQ7R0cPPxDOxfmg/L/WhLZqf
	 KMjyV2YARlqBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABAFC83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175285259362.24899.2760977961244652568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce2c1f463624566031319ec22d0c0e4d97c9a20e428639321a1836f0f722763e
Date: Fri, 18 Jul 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752852593
