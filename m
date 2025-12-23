Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DC92737E3
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766533434; cv=none; b=Y8irwRgccmaKykOAT58i0g/NJ4+udmi4e5IcCLONu4wFGYCARPufAEFka1+3eujghPvmSHhHCVsTooOPWMx2OgTCvNQmErImnRnsl8GdHyV6YbyXYMlBSFaM31jXCe1qyfOm0Bw3TLnw0EsdnjIJl75+A1UqNg1Mcz8Z4ksMOoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766533434; c=relaxed/simple;
	bh=sd5yJnN8vrOFAcj/jDyOJksWeG2IPIelYrEmasgSWX8=;
	h=To:Subject:From:Message-Id:Date; b=Ig6wxjTu4vXd1IRgOwRrFDyRdjczoEELmMEXDkjVkFUtsD6ZKApoZYpr2TbLQaKaWzHropubr3wqFMyQCLRUZUMI2K1XARl8/il3WTOoMmBzxfDtXm+4osDKwl+GcxhEnr+JXlge07Cj4/jmUgSvFMTOAUTKj/ALNoiUYBslUxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QTNgAQed; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QTNgAQed"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A108AC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766533433;
	bh=sd5yJnN8vrOFAcj/jDyOJksWeG2IPIelYrEmasgSWX8=;
	h=To:Subject:From:Date:From;
	b=QTNgAQedGOa4DrD+fpvR3MjkqhsV+9OzUbkJfxZBL4bQiNkQOg0C0ZdvpViIJKSgo
	 wtLsUBtFYnlrfRLIPDY6EPlBL9VVVbIstcxR3NDA6KnFq2fdrlGWI+WxGz3pXHbL3v
	 ng+KmMNHmpYjJDT5SUCsIx2pELwSZgo/SQuySdxfgORmUxBxIT1cGDuMAWHazyXcbT
	 edHy59Q/FN/RnHsP2k7IUAeCv5YA1RAX5BrkywPLJnqUkpe1hnUsaPvkoqss6pxQS7
	 1nJO52Icp0+D4sVt0E+qe5GlYWRaGrmXKOT1fKU8fahu3z9MJ8AGjTECxwVWWFU+Iv
	 1MhdrxEG0vUhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE36E6FE26
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176653343358.19872.13283611174184956427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00ae89b3464242d448444b52be4c3bfe716a9bafcf62677d5efffd9385992888
Date: Tue, 23 Dec 2025 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766533433
