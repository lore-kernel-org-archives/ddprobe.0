Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C1A3C10BD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787896234; cv=none; b=rcAw4qDjD5LrzOi8DRb1Pwi2gXt4faLyEaXJpAjszYR2ZW5BFOZnPwl97e/mWd+uk9Hb3VMhdw8+NPl5qtnOcRrVT0l+y+ZeHwwH4RsH/XBeJw16zWN+AEK03iynaHZgFZDiKNfScNChRkSKwNc/bRReZgsak6qDdy3IVMfoN5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787896234; c=relaxed/simple;
	bh=lIfLj5O9sGyCDN5DUNeAixlV+HSXv7XmqHe8jJQLIlY=;
	h=To:Subject:From:Message-Id:Date; b=kV8/pOLTrPmGyqXY5br24JXHfh66dyFL36ago4TB0/I2S9iT8v5AvtF2sZiqvZnJP1zhs6OCxYjeUyV+Px8GrYWsF8QuTfXNNsAm0Ej+tXCD87y++g3QS8IpXZZeuEWeOZAhzGcRVGMI3hXduSIPAsvabMc+Xv9CcDnbzJWABNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h6neDI35; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h6neDI35"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4E8BC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787896233;
	bh=lIfLj5O9sGyCDN5DUNeAixlV+HSXv7XmqHe8jJQLIlY=;
	h=To:Subject:From:Date:From;
	b=h6neDI35X0dKoPFffAcia/ghiL0AE9Wrnm8E7wUJHFilf54ygA4JC8NKKHHLy68bL
	 c9iA4ueeLAhx5et2rNIHzd5+7p/3mdzNC9eOkmmLhWkLWoX6mzeGjpV+iIKNgnzpq2
	 KqYjPpURrrqr5YZ1XhJSdw613hxW8G2mVGFOqvgFyKq4E3Mt/OQqL9sa5bF1LrP5G+
	 NaxmP9q4/wsb3FlZ8ZrbGqKkqu2baPbIysPrEShKliODJSAtri/FJ+P6AFG1A5MPqr
	 PZX29erF3/H5wbiY8+x1zr2MvXPArVGvv/EFLsbg0WzvfoTk/hWou217svZh7KMTSt
	 qPyki51e0PXcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA719C61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178789623369.4070.965021970117896519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24a692001d92e3a1ab84d7220072672762b7696ede6a865aad32da8b992806ee
Date: Fri, 28 Aug 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787896233
