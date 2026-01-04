Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E02247280
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767569034; cv=none; b=LVVroZBVyvfjRQY6bR0qrD9PA+WedG+6DqMhn51ntSixdC7s7iwfUfGEYbP+U/xVJTHFHWp1nrdxHF1xtxrqXWEGi41/DRoSejdW/yM56ERHAJQnlwGXh0ccUP7pvLZyK2n7fTKi3v3pphJyJx9PR9yjeQJbjZj0tZ/eK4GbFbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767569034; c=relaxed/simple;
	bh=PkaE4R7+ubBCIEh7OWGaFypZnO4HRUVHVZsFO2GyoI4=;
	h=To:Subject:From:Message-Id:Date; b=mWSbu0q0een2+jOMA8Q5+ooeGJ3MgCrZsnACAX7ELMyUC1TdPLuVmyB0uDiffUzc4/XJBfA0DB4k7GV/1A2jWvxe/mJjyKkmfULGyZgR2xEm1w1Pc7XkRNFKdZDSIJkHEu1PfC7SmSvLMGsQz10Lzzl7Xnt5gIaqr0yfuHX4CmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m6p835+J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m6p835+J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68B0C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767569033;
	bh=PkaE4R7+ubBCIEh7OWGaFypZnO4HRUVHVZsFO2GyoI4=;
	h=To:Subject:From:Date:From;
	b=m6p835+JfG2OfgGeCKKkqJSLkZRySkizXokYrRCm/r0kduKAqlYw0NhkISbG2gyu2
	 kodfC88E00svyHcHzV5Kc/+vnVNoJtLr/72ebEXR98rFkzZ5TciL3Ar2Xic2oq5NLX
	 yvyboPOCeToJKe9CC/49zULeqN0s4Ofh0sc/+q3zqBevgWMI0ZIog7UJ+I/pohNHNF
	 a5ptxmNuwdaOFzzbbezuwGqRkholLaOSgb1RUh5JhyNipchSzWYK1OKHnRF6cyMRdB
	 8fm1+EDNa+w5QUGVbM3Q8R487z/ZvNLu74hD41AZZpkBsC9oCrfWKhRkcoOZ4TAH4m
	 21N2vdXLxJ6kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961DBC2A070
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176756903358.14063.4552429050522065924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9f2a0e53773379e420f450ebd9b2dfb7d0b6a0d7f26fd06e55e192134d71561
Date: Sun, 04 Jan 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767569033
