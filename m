Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4968C7080A
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732941954; cv=none; b=cwwmWqmVka9gWrKGoEuOi/NOxvtVTuISE0aYXeFO+drx+G+J6eh5R98xBQIyeIP/lgadDZHTiv9ODkwAmDqZeNLX0uHAMsn9idkvWNGCMXJX0Kzsu3BTo2Lq6pAWUys+JQL/DMZi96gxtpdaZY692dnPvjnLSMPJ1XmwANzxUis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732941954; c=relaxed/simple;
	bh=qUfBbAYtVxveKRyjRTinqnUDK0kDDfZPNxZF6HpO4aY=;
	h=To:Subject:From:Message-Id:Date; b=CWyUHIbmKyP5zG0kcqCxfn83IXJIqpSUBJsuIGy9yf/blGIPwUYMm8yyc1I6XKFLPyLe/MdoWKAvN0wLQdXazxUkJmyccUbpFArRXwfr4GH0uIssppZt+soisVtRuDssKmgMGBEVY5Uswg748SrnNkjGLW9FJCiCJyoHMx+1H2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VvviBQp/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VvviBQp/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1596C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732941953;
	bh=qUfBbAYtVxveKRyjRTinqnUDK0kDDfZPNxZF6HpO4aY=;
	h=To:Subject:From:Date:From;
	b=VvviBQp/iRc9EXbsSVj7AgvEODbbc6MzIdfvLucVKYdj/DZW91lrU2x6Ay43rpNKt
	 iplYaTQvX6XUGZwbJAezax/rQFZ7i0cspjtTcgIofq8UIjOOPWEMoSGVM7U9qsZx1g
	 TB0HyiwgjkTLbZ2aWSEU/36j2sVws3FZvlTiJR/HUHFun822sBTI27TxQEH4a0fMow
	 raGe5bpjXp95Z75LAZuFfhGYPaAQmUGYmR7txva8U1kIUm0qwAnhp37moMhFESZJ6s
	 EJqA33iayAEZAaD3hwUb9pin9GPNwz99e/3PlEd3IbadWp94bJ0MFhcfSBE0U9mk9i
	 ka2dDAIqnuYcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997EBD735EE
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173294195360.19938.2106969979389144688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93f6178a28bb5cb05d3f87f704186d2599935f09feb574f3a4914c125473053f
Date: Sat, 30 Nov 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732941953
