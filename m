Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B84578B4E
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 20:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719607463; cv=none; b=TeZPuMhvtfBrtRxd/k//g0EDiDDm265PaHFszt2cBy+vvoTHvxq955EAvR/BC8uEZqsHddF5bbBUyeNq+YKJT91mR+/k5dNLpyFwOQ8QhSEi89JPBrDZF8vRxfO3xHKsRozUjHVHUDq9ziJergG8D3vbu+x84BUu4PmTGORzJlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719607463; c=relaxed/simple;
	bh=/VuhmX6iE4XSl3dwF8OwiZuB4W9v/N7asv5Zc1xxkQI=;
	h=To:Subject:From:Message-Id:Date; b=lNf3lAh1NCpBmj0F5sDGAWxWnZTlnf3sIDQAfLx9IGzUZnZaeOnesFE4bMkR/nwEjxx0KX1rMTZ6bsZlLfqcD1k1mE5AfgAC7poQ6LmXLOuvD7i7/3rTpXUAkBl/AqkY3oXYxRz5LgPQZ5KDn4t7GRqCtaDDexMubPownfn1f2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qf1P6J9G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qf1P6J9G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1E5BC116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 20:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719607462;
	bh=/VuhmX6iE4XSl3dwF8OwiZuB4W9v/N7asv5Zc1xxkQI=;
	h=To:Subject:From:Date:From;
	b=Qf1P6J9Go3dU2FkOu0UEzqU086SrPa5N9voCaH0xZsIN+9dqgtrieonUQjIS/98Ds
	 HCzmaFYbRCEZKSfV9pUFnS8fGtVVRb5zo67OI2We8IDQfqLsx0i+nBwbR6Eg144qtN
	 M1Fht9AAqusQ9LEn3ne0KBRYNMcsdAbHwx4y1ePBZ+9uuUoZJOF7nKBmL1Fbfsuqbd
	 r6TX5X4FW41Boj/CJR1siIO8vrotishSiSCULDErrISS6/yLeoAcBfi8N1Layd1fbx
	 RsbBczk9jeTJmw5eNfunp3RT0m4hGpojphkBqCdv58BCydmFiF44PI6/6J/eVBYEGC
	 jxwEEm1rC0DCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9634C30658
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 20:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171960746281.25338.4704123254694357920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26dc69f659c71b27c66710547ceaf331fe8dcce3a4c0eef96063538f7b1d8105
Date: Fri, 28 Jun 2024 20:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719607462
