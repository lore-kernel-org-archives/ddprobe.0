Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5A925776
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 21:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783978114; cv=none; b=E/+oebiptQz05laGgmxGIgAZK5YW2h/2FliNI0Q5tEJG+uHjF9TbPplwZpUU95vWn3l32FJN6ANyylq8tdZwhzt1L7GQVpthJDuh0PbnE/6R1dYyiTiJgqhvPfHGJTcTzwImJB4XyCOtNKIAIieAI3Oh9MHXP+253oZgET33iWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783978114; c=relaxed/simple;
	bh=6aqvw12m/OZvjH/uiAZVudowSM4jSyLVN11PemiBZ04=;
	h=To:Subject:From:Message-Id:Date; b=Idetg9mXTgO/QHoSX05NDtidh+VqcwvVRfG1wU6tCV7PSIw1lrOyTgJqODxoXosN+nLpXfjCW3KZWlGWetuzOoAWzbsadHzXNEHY+b0AI2Q2hu9Ig9mAZluoZR2cQxpDgOgcELh7LRJSqOKnag8Ujh59FTHY+7QcaHDt6N2Rkpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EFY974+Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EFY974+Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E06C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 21:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783978113;
	bh=6aqvw12m/OZvjH/uiAZVudowSM4jSyLVN11PemiBZ04=;
	h=To:Subject:From:Date:From;
	b=EFY974+ZRI800RCw5my3ZT+3D8nXhpyVVuZWlsmTLgofFrixIuFHtO6/uRPO7Y+F6
	 s1PIwmbmct9fpqP7lJylvyP4LQ2TJvrAQJjoS0nPCQ9DRcqA/LpQlH45RdZt1JUZ4N
	 FD+62taupmEJyPw2w9aVCDKG76Ml8nl7RFH5sR4qjdnUdrgAoN/ondZk7AjBSFGXsu
	 YIJe8akijQeeYbKraegaY87d99Vv4UIKV+Mplkd6BbzzN73zOWoXYdHwlSdjPw39od
	 +TD5m8q9HgtIRvOMA9dp37ByeTN2M4Q5KnFV6LrBtuoNYlPlWPRc9EFp3S5q9ulEaN
	 tnz8m6+jmn8mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0F4C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 21:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178397811369.4178.11030933972478978868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9e8fde257f5fea59107ef8d23d8375509646c1ac4b3760c54f7fa37fb1c6861
Date: Mon, 13 Jul 2026 21:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783978113
