Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0B610E0
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751726394; cv=none; b=MmxwgApG8SRlK2U9PkI9iufLaLLAfXzZIjr6Al5TflKRLt4Fh3Vb39D+19dJ+zPNukJUcEGBVTNMqnmzdJAq6LiZrKUzYxwpm6427eUKmOSi9fU6OYMLDPen8d1Uh68shVRionrbHARPFA/gHdNl+HRqoD8KDr2FbPc3/imt7tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751726394; c=relaxed/simple;
	bh=fUFVU7rwin6dmySKY8qVzcEt5Ph0hhkjNNktsfrPHc4=;
	h=To:Subject:From:Message-Id:Date; b=iHW6pGkMxbq+xrMKiS5+Mp5oDJIO3p6Y1H+8JzLFRFFtyQ9n1dhPGzcPdaJPdWc5yFOjlgV5C715r+Di3iVjfeLWzpFCGv98iFoFjtAgaILBhm5tehlM4gAGxzAz7+iuSEdzAwHBrjo0RFwnEwmuJ8cE+lbWcx5AHSScJWOsAvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o85v7Mpz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o85v7Mpz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FA3C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751726393;
	bh=fUFVU7rwin6dmySKY8qVzcEt5Ph0hhkjNNktsfrPHc4=;
	h=To:Subject:From:Date:From;
	b=o85v7MpzUSYiupzpiTYGu1nZN3itP99STZishFvYDAphrCbUAGRyqLcnv5gb9YZtz
	 zw/KIkVE9N9lNb3GYNcmSbCalNs0EOr2Z9b6FYILG/ZC4wWsHTlu6W9rIdwlgPCv/L
	 W1UaGGWHjgd2JUr9dgcq6DiqwCu+dFeIuhqjScGPxFzU34/zGeoqzkSXUbjagIFx0H
	 RjI8BD2jJXidIzsZ/GQlmguluul63F2zAfiZ/TpZptsJRXFXGlDM5CBD8xQBOpTDuW
	 KnpUhFpk20axShwZjJD/hCWhdPdTLa1cTeVhtapKG+Pi7uJp3nMVdHM04WVbFK2sCH
	 UyqVTBfqRR3+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93172C8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175172639357.26577.17111682094656300249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2db9c899f2e6d348e3b02495308988e3543acb90c1e0cc6d6705f1a828d5fa95
Date: Sat, 05 Jul 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751726393
