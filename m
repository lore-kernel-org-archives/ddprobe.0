Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F6B4207A
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756732194; cv=none; b=YcYBTYSQ5noCbeCrimOXC54dmbupUopps88KsSinLUjfnjfuVIx7i9m3onliBwUEorSm5dpFEpV526r0o/eiAWiMq13YQborOo7MJMBUog/jAPQXn4pG+VXAkJfZNsPdD9bkY4j4P/cZ6F57qT6yGnR2P1fg2h2aLYiKePsVjVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756732194; c=relaxed/simple;
	bh=Kkb5S+pLGjYfX2tBL97OlLfXXAsACgyW2K6JeOlE5OU=;
	h=To:Subject:From:Message-Id:Date; b=Q93mp/4dkUCGy3hMPNh90is4Dev0yZREgIWEbPKNngR8lRy09KAIEXKO+N7aktK/KLEbXpQrILnHuqs39YkdnW6AAPhb55KToSCd5cRcCUuLPK6+FZQ9Fqpjx6nmFZktEVfSyoDJ5bbm8C0CsIKVPqS7D3xeDCufa9gixtco8Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7jQlWL9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7jQlWL9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A7AC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756732193;
	bh=Kkb5S+pLGjYfX2tBL97OlLfXXAsACgyW2K6JeOlE5OU=;
	h=To:Subject:From:Date:From;
	b=s7jQlWL9sjLBgaVpipUqpRDHzmLfwjthXxiwfRsJqV5DSpMz31+u9QAVFVel2g/sq
	 galfYTFFfWNgtDUXeEeggzSvyvLkgZELsyEELSN/wy7CJzjXjpnmLhq/dA6Wd37E+Y
	 gzXEXUZO8bBdfHsDftRvC4gKpWcoTZTNvOWTAIWh5EbSx5CT6Ha9AqHtGaQ5qXz3cE
	 HRILwPPUKiH9a1Du8XXkvhxrCJBRgtbF0UoY/KkV3SJcqsUvgOQVtpSfeZfrIeoDv2
	 mJbZ2AprDaLd/7hVXT8chOgqFDWkfr5PLoUQS0qrjrPifwqRP28xuKBYAgEGhR1dHW
	 IE874lPs+Qbww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903C3CA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175673219358.18922.9813393897002942764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7064e46975659ae6328ba5e656789e54642764f18695347111dd462c7178d67b
Date: Mon, 01 Sep 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756732193
