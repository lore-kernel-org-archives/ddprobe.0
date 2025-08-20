Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398AC2185AA
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755659394; cv=none; b=sgGpqXp8TA9JDsIqDWG0t5N/hO1ehkSY1lsOI7Yj60xpIolzrwnronlJHGSfyp9iEYZQTroSUkYE9PV9J+ItZnU7C9lg5kv3xZJ/WqMRVmsK1u4pSQXouqQEGsPdw6lzvv+sljmdvrb/FU0cyzOPgJpsUNy7xj2RxYvtc5Oc6H4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755659394; c=relaxed/simple;
	bh=KiVniBmd5qjLapvoiHF3ksRvLA/oAx282kZKI3A1pT8=;
	h=To:Subject:From:Message-Id:Date; b=LYWMUi6sm11HLo8YE5MlXQFH3i2vkQ7XIC4FVIVoEGvHJDEC8Um4teUyKv7hGhs6QG9SDgFWuWlHs/rwgmzPLteyBqkMyFfgn0x0QRiM0TfIhcvKrt/Rity8uyB9C4+BPDi9GfJBCVL2/Ul4ql/X4fZwGwG7gj7ZOxQZBvuS7uE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iiezutT1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iiezutT1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E686C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755659393;
	bh=KiVniBmd5qjLapvoiHF3ksRvLA/oAx282kZKI3A1pT8=;
	h=To:Subject:From:Date:From;
	b=iiezutT11rY2B+COIF8lvX1Xz6LE98aZTo8F8GmFiOMIZjaxORdcwsQlOlubtl5/Q
	 9ILi2CQd3njo59vR8pEwpOz1EQkGPMo0m9r8brusgLjGUq3s5Mp1JnmD2l2SqqHQgU
	 d23pnb9KsO6P0RtLU18aTrGxbPI0lSd4MGFA0y9ybWJWcPMyqp5JRwASbl32yTWBrG
	 uEhV4rDcDseG8y9u2kvLOwx/REDnUxhgz4DY1Pl/pRdylkwGJ4RIz/t2puzANLDwNN
	 y8zl64IP0n54l6No7So56xbbT5XnSmsKWCIQ2/gDpxI6CUyCIkBWj0y1McbLdx6HVK
	 zFk+eFoOizXzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F777CA0EEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175565939357.11996.15122959357154986318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bd70862683b0a920f9645a395a99470f2341198228f8caf8b9db8230a5341fc
Date: Wed, 20 Aug 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755659393
