Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7163081A5
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759399794; cv=none; b=bjGwLMUIOkgdBlMbRfv4TKQN7PJdJmS6k9LEtQOYK+nqWvDHhnBGWZlv2fxdOMoeXApNwDfPZX3nfzVAAdgPASAQbshEXd3cLUsw+sEczY1wCpiNaR8K49+zvmtMZzLo/4XW7ShWAvsVtm2ywmr8jss0uOFggcyG/fxPp1tmYgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759399794; c=relaxed/simple;
	bh=S6BqsDrzkj1XhbjwQ1FBefFfp6WWOmWIq1IQBRGKlxQ=;
	h=To:Subject:From:Message-Id:Date; b=FgWRfH9ljNXstvnoLui7s7JIIw6fvM2/bsSUz7BOcNWDFGC9tsW7fZsDaoLBV/oF1q9Ia58SS1Pm69gjxDB2nzUCwEx+/tGk17ZqrmVQI2uWN+T/R3X2L8epkv2u8TfAkCIWIijJzKEE0PcCDsQZzo5PuHU0zZrnmi3Yfwxgb7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oBNKccNy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oBNKccNy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6561C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759399793;
	bh=S6BqsDrzkj1XhbjwQ1FBefFfp6WWOmWIq1IQBRGKlxQ=;
	h=To:Subject:From:Date:From;
	b=oBNKccNy1C8S9AySKwqpt0I+QIt8WY7BgCtS3FrvUG+tqFd0Lp784keZWmvoy4Y/x
	 /jJRle1mvJaiBoYot2Ke8vNjME/g8/EJtjhSEjQ1719Iusgp7Tn0gs8cQlgdCX69L1
	 +3abbBcCRpp5YuvewLGuSQSJ7XQLy/tZEpzm/q44P1eaztnHjuy2zQlEIG9TZjcLLi
	 m03O9k+qLHqV8jtW6rOmfz5tpUZW+0PL+D9p4ohqDJFcSfxVN7KLpavAKtKO1Blc7r
	 elSRcmSivnePiVcSs/N6hto31wRMX5b7oQlxTci6rgx+znY9pLPefY+2ST2WR9cNlw
	 /hOkHFi72bedw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91937CAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175939979358.15839.11423190258418289285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43ad9cff8400721dc1b34a1e7206a33aee1be4916149ee698d6a66441f5781f7
Date: Thu, 02 Oct 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759399793
