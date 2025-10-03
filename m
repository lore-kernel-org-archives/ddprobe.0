Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B34224AF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759529994; cv=none; b=TRc43aiwUAa76caP5B+KVhcbsioXtOPGMco/vZS98XvuFP3yvlub4/LDfU0+u3RgTKo4r4bykc6CdOcF/34BScpBODRXruEjtcrFN1h/kzC5OnUXMPB9To+vi5y4gBeMCEE70MQZzDJAfAFCIjCZ0jED1TW0uzmYT4M0fPoCDcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759529994; c=relaxed/simple;
	bh=H1dZKUBLRtfdhquu0IKTsy4Went8ECACRJcnQFkwrP0=;
	h=To:Subject:From:Message-Id:Date; b=KUp5uSz9Nivcjy/Gru4U1E1HX+21MJex9ER9gBKTfEIxEnTxW5cdyfOwty7nrZyiKBaz/0rQWDOACcbm6AmfQuFJqqlayZiyY8qEuQ4jwuMmJi783fxEb3aegSm1TENj2uWQPNc90fl65BmVolOSOc4PE4ur3iWNd+Nt14rj4sY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LpzjmBUr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LpzjmBUr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D2FC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759529993;
	bh=H1dZKUBLRtfdhquu0IKTsy4Went8ECACRJcnQFkwrP0=;
	h=To:Subject:From:Date:From;
	b=LpzjmBUrVZ2nsq/yBOM7+k97MWiP3w33cAfRuSAJZr3m7+fe458xPtONDS/WoYk0Y
	 q+e/Sfs7dOp1eBTFO01thH3TqaLlnfVpZ/U564vZty0GbdzulrqBpJnN1HJHBt4kKD
	 B4tQPZuH0J0alfIxKn0jpQJ1UHPLjfA1jJw64y4IdAW7QWEe+ZHRnXJx3rksTeQFmP
	 1Ps95nq73pWHKI6d+e9GfHfwOFke1Owr27MEtAB5ij8u7M/v8YmoSN+kSZyG9nTF7k
	 1W2Hz1IIu4NP2Zc4JKyknd3c0IppaiTswxDaKFmI4ZCbfavyS80xXm7167tvEwCgeR
	 EFLhtZUOF2Qbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B94CCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175952999357.18986.15576191983894063287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 407e028be490b974a612741bc2cff9f4c5b8b84510a63bb4e9e65b0eb785f269
Date: Fri, 03 Oct 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759529993
