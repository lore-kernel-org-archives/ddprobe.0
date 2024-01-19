Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B9894C61E
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 11:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705663097; cv=none; b=jgpNl0k9YPIaV9mg/P5LCgT1dUIzo/EsF98CCrluvYVGGsbIhy1vgUB1ij7EHJ4HtG+4mvPJq51Syw84//CYVyKmL7w1ClQwOthAo7AvnKCtscmOwdBDYzEHsF8xQh6Zn2fWllRiE9FL56NXjmtkTloS2tQGUGqqC1pC9o1odG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705663097; c=relaxed/simple;
	bh=dx7x7Cq189ZN4wIAAMhQsv0GRaxgcAoIwtZxwPIsXmM=;
	h=To:Subject:From:Message-Id:Date; b=TKarbnpHaQVVtmv8fo4ep4bfmFyVA0o01ndBHMdID+OaJCULnQscii3Zvh4WmEu2KH2dyzaycv++3WiAvOqMDhywOR0Ul1s/CyOzUIrmHHEqTzjZIdTOwEdOuILaaaS6kSsEGFYDQcVrsSuzDS/gdgj3erDZpzq4k/QaqI5dAV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nXpHEPVU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nXpHEPVU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 780FBC433C7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705663096;
	bh=dx7x7Cq189ZN4wIAAMhQsv0GRaxgcAoIwtZxwPIsXmM=;
	h=To:Subject:From:Date:From;
	b=nXpHEPVUAWecv2j8+6y8pWJZNAuzCkcitWWMyQc4GQxFcCgbn8/jzq33/LBQ8biQr
	 JhZYaU9GOGIcuRiiSJaF2F1Vp3i0b51Z5FDjVIMRGkI2Pu+g4QhdYYIIWZExJ6C3Vo
	 Yyl+yCC5u4lHwZQVBoB2J9Vh3529Kq8Bj+nIoxC6aAutRIXtnuV04LHtOcYONAOO4L
	 RBHfi+tPdwEco1lES7i9Xj/jgnZM3IvoDHfBgz/XlPewjG0KjxLgiFNYYSy8qx30oX
	 lqHg3sAloQKo6MRj8vXYmnbeCzAPaRHa01zvh/+xHL0GZovY6uMzonWHNvGZmHZ0Ne
	 /cd92DMv56yDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 622FFC4725D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 11:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170566309638.13450.2823816420023614362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b94106b55df43739b5d34ec96442201f9f10cb1b5c6aaa1918279e1813485d4
Date: Fri, 19 Jan 2024 11:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705663096
