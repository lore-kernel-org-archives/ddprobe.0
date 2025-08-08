Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2499EA945
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754614195; cv=none; b=ZGLn8Vp8/uIvh6HWYLgb5v8TkE+W4yJuYQxg5Eerx7LN2kii6XSUGlDECIL2YDclb9I9CH7I1e1G/Us4SMcK5ElyiS7JV4UheUMMeYyVV+rpP/BnMz685k4XxjV41p6vbAU/Xu+KFEqEMXFZw9nlSvTKaCbfBqKkFXvTYQ4zGHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754614195; c=relaxed/simple;
	bh=t+FoKq7ilbzzcrP0tun7w3MJWUdAv604uqkTq8HAsnw=;
	h=To:Subject:From:Message-Id:Date; b=URfhV4JGUJ7Uh8+AKigLofCCORdWYPLFW8IrDcrpDNU0Cr3Tq66I4FpGmQ7oxm3YLsV7XFiGZhUgnHDoZien4IYvAnEdf4tISLCBaF63b1n4cy8zwAaJ4aw5sQ8DO/ILsE83noMt9A8I9aKfA1ySYABhdGdI+67dyXqSJvDu+WI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nLU8F2Ry; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nLU8F2Ry"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8208C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754614193;
	bh=t+FoKq7ilbzzcrP0tun7w3MJWUdAv604uqkTq8HAsnw=;
	h=To:Subject:From:Date:From;
	b=nLU8F2RylJU+Eu+EkIjCtDoJpl35aNyqgo9eHj1S41H1s6+cjnt2bYA8RExXZ84ii
	 OZCMTkDMsMB8o78JMHxlNgzSqmnSaUjKS1J7sScCHlaPeD6wtg9QCQ8TYcDnbEAMap
	 aNSCyh8Kjvh9gLKlkSZWO342Ff2UMJtnqdeEVKtS8gMqImAYbjhzZGV+B6ujc+miiS
	 1P081QiSzNih5EoQymm+YrdjgWkW5Ubx+nz9EftmSykJbRTiKb1wdxPPFf3Y0VXtYT
	 u+5oJzCC8YZ1Yp4Gzhsc1XS4m6DNcCq1s/TQRA2r02lEQspP5V9QOXIsNB2/ppYxem
	 JsNSeCZDX8azQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EA3C87FCA
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175461419357.31268.12345354911868047218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d40fc58618629754c01d6abd38e8669311526e2857522af59c2b40ee4e9d8cb
Date: Fri, 08 Aug 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754614193
