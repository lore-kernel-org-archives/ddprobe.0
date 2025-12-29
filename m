Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18FCB1FF7C7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767038034; cv=none; b=D3HC/Z/U9Pw1FajEdIfmt3IfhFSvpTLRGSOlm25LgQhMnzaD+vPdJQk9u71raIMTGKWMPwt9RuyvCfuFxbXX6EW1iPvdKifAGb8la8Ty+QjRfbOzMbrgLH/epMzY0FYbCiagLhEpCoXeBY2uLX/kPoOqLHiggCSrvANIEkafPC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767038034; c=relaxed/simple;
	bh=sC3yUBHAEDtgeMEixivXlSnErF3zMnSptmQa4uFi3IY=;
	h=To:Subject:From:Message-Id:Date; b=e6BjjkJB0PSCV/LjCgngfB70pJJWROxCOOPYp0IulEQ+7BWFqxdp3FJhYnKqSxm8J7lArEoM9I8noHrelOO7Vbf4npLL8Yg3CXBg+XefIuJxEAVhlFoo7Zp34RJBAqbpTrRLM3uknb0xYniWQFPoVsv13na6x3jajQnLrnrZA04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nw1fNkbw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nw1fNkbw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9A4C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767038033;
	bh=sC3yUBHAEDtgeMEixivXlSnErF3zMnSptmQa4uFi3IY=;
	h=To:Subject:From:Date:From;
	b=Nw1fNkbwqOjzqPVb8IZwYArGYcD6wda9W/di53j/gBYn2dybm8+la33V0ff3tQnm0
	 SVR2+Fit3D4W1ER53XGXozWVs7Hc3XsOov2JJbpPJ5ib5MdImUYMuu1xTioQYMOVY9
	 fwK/DIPRm72MxKqkKv/ybaXtKXDzeH0B5hADFkWQN2EThgdod/82LVKteldjFcbqo6
	 msETZid92hO3t4Vw1zhfspnpVk1XH01V7tcJ53QY52fD0t+uTkohe9lHOuztS20z0R
	 xXbHIhaDxAruAHQ6HDnrqsNmu70Q/dxoVPkqbDfv9Xt4JIv70+6aRLlLEsRensbQzH
	 0P0V487PUu9zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF42E92FD0
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176703803358.8382.3442862837589246028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acb436c096dc63bef6d57ad69953f088db4ba515128fba17b6b37083120b38e8
Date: Mon, 29 Dec 2025 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767038033
