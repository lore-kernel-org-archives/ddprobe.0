Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207FC200127
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745841595; cv=none; b=JxOkD6Pb++onxFciZbJGtz4/MHPneIzul1Wn/7z6j+YtCx4KJVz+sPUCUGR6g7m2imi4HejhfxtgXfTR0yom/Vr9SDiskfkCypYoT467JyNFTswp9kU5Hx85aCL8iT/H7m3Ck/MMe/nBgexPKOsEQnkIK61XP0CbXJ3b3a1BiGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745841595; c=relaxed/simple;
	bh=cE3PjefAnsHBbU90BfV5qvKNlaK3WByg5B2+m4bbPc0=;
	h=To:Subject:From:Message-Id:Date; b=moCOdlwfLe622iMK3TebYv98WonxhNf3qR1XU9sAabbUPptKeZLLd8756NI4gqLTC9dhETnLKLQbNorSxLBq1b8sQexeDn5cKtTHm8UHPMexDtTu8pX3LUHkNTmeNN+Ov1rkbs2LYtWKC9GybTo/GGGOKfnuXds+OQoXv+GpP5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HB5nweXV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HB5nweXV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEEBC4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745841593;
	bh=cE3PjefAnsHBbU90BfV5qvKNlaK3WByg5B2+m4bbPc0=;
	h=To:Subject:From:Date:From;
	b=HB5nweXVdcLdYpXxxt6+Jz3XEDnAqQ4lj7l+2VxyXV63mvqd17xnWh+B4aDO6kpeY
	 GeBa7BZB9W8IXhT13diIM+mQRYvV1CuTHpRN3X5HvG3m5bgrJcg4LGMcktMmdV3rqW
	 u7pjnJI8MWL1pBh1kOKRUpxhxF8IfEFzIYmPAKBRhL+O/UcDdEJ6AO+4LlWBuXRjoz
	 bPI2E96APijiXNmdQtp9eUh/FYuiv37UJG9uiwsrIHUD3jsbRCleEioren6C+MCulQ
	 ag0PQbbE4r78tInp6LvkSfq69NFBjeuzRyKRa6aprtPCAyRDhd0Fl5A6jj06X3lQuU
	 Foizx0FgDf2pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E50CC369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174584159357.15393.3803216669460503410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e60d874d3c4abfe0fedfaeda7099a9ded5c627470ae91757d8c3777df38359f
Date: Mon, 28 Apr 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745841593
