Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84AB11BC57
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 07:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720854623; cv=none; b=tULiercq+WFjQJi338hJHR8zqPiuWyGWdkHAsAmg+tiTr7v4LFPE5I8t6c2YLAIcklJVyYor0IJW68ZtkAZcSRF1fs6Fp+ikcmuQX3S3ngI8a+O/GWj7mNWwcwxRAOrbBsRCSrHSHsFP9703UnPAs5UQZiwM11at/Ge6GHMAxQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720854623; c=relaxed/simple;
	bh=MEUBJWL7/t3Ih3k9KpWCmcvbYRBKc1Lh5UZYvsmuMU8=;
	h=To:Subject:From:Message-Id:Date; b=ahB8SODHY/Prc0Qd/I5o1xTCcUNDvZrZXS+9p+/URr2E0PfcAwhuYLK2QWRRAn8rG2E4QE8y7tZrL4Tqyc+auCDYgG2ZjFx2+YxzRN5ElS4yqoWOR8CiUPrKUGqO6bF8NJxZz4pWlBbAyDEtd85DsmyXoWf5IajYWiJ26TmABvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9IHJ/pG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H9IHJ/pG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEA5EC32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 07:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720854623;
	bh=MEUBJWL7/t3Ih3k9KpWCmcvbYRBKc1Lh5UZYvsmuMU8=;
	h=To:Subject:From:Date:From;
	b=H9IHJ/pGw7w8jpjO5gTNBYmCys5r9MUoU9h2buMoxGe17UdIuT4kftHhgHDeiuyYp
	 vXssHFQeCjIyhO/p83ZBHXhVgGomndCdkCzZmhuBYBKY7Jc4Y+gJGv/wVbtDffcrNk
	 P4ENUbiXS0rpx9Y5cvdpgyKa2W3fXJvvys8nYfEbhpnvM5a2Bfzrhb86v9knhV09Vq
	 FMnReZM8hnzUkV5oCgC0FfPOAhg5/Ta/erKZzvqYtrp8CblgJgwdgFdX+6izs43j7U
	 26scby6EsnbNrKp33wQh5O3xQKjPxoZefGdWz1dyYcUPrCXpkh11ZM7SUsn8QxBENT
	 Z96xG45M1wQhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D791DC3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 07:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172085462287.3929.4602616294691736723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87ab7b6447945e8ea92a562fc9ff4628d39849cdb8b5cbc6240c884ea5f4be97
Date: Sat, 13 Jul 2024 07:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720854622
