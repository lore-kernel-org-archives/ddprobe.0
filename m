Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46ED2370D7B
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792107034; cv=none; b=tMLTd0x0XKFR+Ij122IosxCAcKziF429T04bsKpolGm67NEAGZuyLmjUFZdoi+xEekQRgGsp2HNd29xcBt51owe33SpOjLWNJJ3J9oZ5vJiR3WwkDFr20YizMOAOVfpBGiCE+bpGZSXNjXLtmLdjGKUdw1pJqCu/kMvJSPeJg1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792107034; c=relaxed/simple;
	bh=iAWTtpslt3Oi3LdxFzzGiHbalYIkPeMu8btWUv7NOlM=;
	h=To:Subject:From:Message-Id:Date; b=tONuRfLlmfSLHXAJtc0yNdGIuyE5anXl2UeehEVl6BftTHF63eyIPLGPZPqJd/JI1Sw/FyCI+7sFjMngJtXNspiROGWCUZwTA1mvwVsMZAe7LN46T+ePsXuKwHi/5O+gVz+zPo0U+ekEkGTLMMQmfdZUQaSHdig416X8y5bti4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ugUn40xd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ugUn40xd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F93C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792107033;
	bh=iAWTtpslt3Oi3LdxFzzGiHbalYIkPeMu8btWUv7NOlM=;
	h=To:Subject:From:Date:From;
	b=ugUn40xdDrH/T2AQpxACfBOcr930sTxhMt0ZZPTzirm3wuQlZAt25naihvUNQia5A
	 XCdO53bsrNZgzEz9H5Dd0PUjufN/1A+4jbEZRJkPoGQFZXE9KFbaxmmQ/MvnG1d84o
	 +gb9GR2l9GQjypIk0fjO6uNcDdrLa8DhL83ZG/4mPhEE3bGn38x7PH/oqCliuIBayI
	 OKpg7JIEDnM2ToG6YpwYYfDyg5h3RHlOSvbEDKJbfXTfXOmL3g3LKkUr9Hg5+pl0mk
	 NxTZgktg9MgRB8jCpXSHbMsEPOShRg62V81ZThEiRpK1QBW1k6KHFIZ52LGsCNdu8L
	 u2ydEDRPjOfew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0440CCA462
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179210703368.16185.15679595193070977871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08c3abccc154e972ccb33b7a1950fca29152821af7279e4a9eccb953e94195f4
Date: Thu, 15 Oct 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792107033
