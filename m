Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42FE72836A6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788011434; cv=none; b=Q7RnihGHb0/8gzLN73aEJkJ29mmo1ACWwrU++dfboQzXofbwr3CyrTx6Z4oSWZ+w7UiXXm7a0h0aAz8keD3Zz0JdxlnxCkPyjkga0+VJzUcjHAThL3bA1BP2QCrQM8WB0h0AR2KCWjx73X3AE+7nqJtk82uinALsnJvr/zm0H+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788011434; c=relaxed/simple;
	bh=uHDaWQ5GYFr802eN+9nad37T3eqf8r8R0QrrNm7Eu3o=;
	h=To:Subject:From:Message-Id:Date; b=PjH773YQoMq6UgfEVbI0zCKpQrzoahKuHJax7dWEA5/ROM0NSXjS1jHv/KTlocUtu9hCT1xCmbSLK3PVZo9l+SsaHi3AxpnW2ORJ1eru7Ahqk99iY/KiQ0nwNg2zysZJKrFgeVJqP5vM+cQ2MD1fU0TDKbCmPmn1KL9B1PXySU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lTKxvRKE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lTKxvRKE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23E8C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788011433;
	bh=uHDaWQ5GYFr802eN+9nad37T3eqf8r8R0QrrNm7Eu3o=;
	h=To:Subject:From:Date:From;
	b=lTKxvRKEDSDXOjwGFyurN0VraRuMluuOkQfFZrJRFR5QsYLVWMClCS5pYSGEq5EFG
	 hSQQYUj6HKrtkYsrCpIfB29UCyUpIJjYiwa4vPCdUzwXrseeKCTU31P5UZIJwoyP/A
	 yArQ7C+a/asopg+CIKdEipLgm3iWruyWIRRga80qjb2yH5S9wx4mGPO5JYuQBEbFEv
	 8Ifqx4jVT6ti7C0RKYn2wXiO+En6atMKsvEww/9DfAQgjotrf23HmVVQVXOsPvQ9Xk
	 EhttKwOeSG7eP/EtGuq8bqdPt6kcJOwVlK2o7ypsHXKTDnonQkHyi2yuY0Nc8WqxYj
	 l8Y9r/jiap8eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD23DC61DD9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178801143368.26157.13655317287730019869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a102b44b787a746bd5542c571db6a36db9f3dd9c6b5db6ab7c21c14c5ed60fd
Date: Sat, 29 Aug 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788011433
