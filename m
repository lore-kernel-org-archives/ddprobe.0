Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43AA216DEBD
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 19:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717011863; cv=none; b=UoDRzYNvWB5YA6jZfCPqao8poHpZzutSxUw4694w+HlBOiFsvV1bJ3e48MJXAtJj25x5jZwl1L+HgcrpKlWKOr6onBaMxHc2n+VPFvLlPQ9pbsuo7YsCj7FZIEDkOxSosr5b65a7CgizWlfShxEFkKQ/ZC4toKsqGUs6nKNyJqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717011863; c=relaxed/simple;
	bh=pnQRVYzqU+Et8mGriG2ogGYszPh2L1wDM001ixYYyPc=;
	h=To:Subject:From:Message-Id:Date; b=dF9v1QjabvavIWI594+EwIGrPinxmsOCz8JrMbd7cKo/lG5JWcRHco+1iTTAji8aZFc5RKqZyE3+boB/m0sukYBbq4o6XGcfr3LoC0XAm+wU+5uCrPw25AwslSGY2altJnKkfNaD7/Pt611US9ugJTD3ORwYrJSAZ6Mmv30NyyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpp4BUla; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpp4BUla"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA812C113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 19:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717011862;
	bh=pnQRVYzqU+Et8mGriG2ogGYszPh2L1wDM001ixYYyPc=;
	h=To:Subject:From:Date:From;
	b=lpp4BUlaEWyD+oT6rCG3ajBVaCdDXs8hbKeFCXYrRSSp0qCmXKJYqkWAK+cI6/iMk
	 Vn6zqCL2c34Ncki+XtKcFwF5kQDOrW8QKL42AZRk8mvDOSKc29s34fv2fuMrJU9ABH
	 E6zsvHQcxc3kv05ZfANmBgVT1fRMz2QDBVx6lAcZiPN03BxI+3RV5Hoigavf0grlZQ
	 brSQy916uwZVQBwnwY8gNoOzmknic+8SUAnGD3rDXb8mWk9uswsl5Qwks5UxvBXlo6
	 Is0OWD9UswY8d1uNdGGhrRumUiMRCdqPAcUEui+f6vnNFAITirnZZ+sFVxDqPMXOMr
	 fxcfOIXsGIJag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6FEEC25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 19:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171701186279.2335.17887355451038621048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3edf953b40d7bec389e47f4b0c2fb67af9186615ad8949ebd133a9777d245d36
Date: Wed, 29 May 2024 19:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717011862
