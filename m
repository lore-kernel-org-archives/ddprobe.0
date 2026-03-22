Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 091BB29E11D
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774206294; cv=none; b=HgZFtdm4rJp+erD86C2774b3PKqgipRUCCR0o5btXK+y/DPVXtEXkF9jutt+akOPdjsHTmnjua7COBN7hNjdUHkrme+3HegbPampKwRgFpTpsqMAXLMGkiXlURFAzhrURhL5K/PQYja9PtS8+ZmABquTZXcFlKKCmIHKWKoDmV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774206294; c=relaxed/simple;
	bh=3oiczIqKh0XTdyx1DkH7CaO/0Xgt0L5skgdLSK4i/T4=;
	h=To:Subject:From:Message-Id:Date; b=REsq9JNGk4Y1Dy95fTFUL+X2Ut9MCd/pVcRWyYqZk6JfKHoQouc3UcJ3WMS2F9PGGBkd4MKeWfG4zma80iFFUUT69YKX66X6rugmUbqD6tM+3zuSwgH5FFBjLQZr52f7zLNRTjL0J1UJPwCkTl+Jm/IXuT09rLOD/8/tz8xqvgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHpoQbXq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHpoQbXq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D6DC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774206293;
	bh=3oiczIqKh0XTdyx1DkH7CaO/0Xgt0L5skgdLSK4i/T4=;
	h=To:Subject:From:Date:From;
	b=sHpoQbXqh8yLib9flzGyIZh1xqzkOcM1fxvw/hmxYojfhzGORqJFwmDMrTiX0Zi55
	 utkz7TtOFAMDF6QR8fuQ9Bo8GgXW3f8WEeD+BICDzSM/TXOwFGHY9T6UhraFK471wz
	 1eO7blImLechPbVlUbbZ2Uwcba3unE+j/CcCLDv75YNOwguKtw7d6ecrdDIc4rgnoQ
	 hBbqbnMuG1/J98C1L1ESTSk103SThHdXI1x7swyDT7/RhSARX4tN8gV8RfAM7pYm+E
	 wyzM1rnvFnVB/nBdVGTow3IY/NuzWcEPVX6qEg8bU/LEVDVixyZh92QiWhaV2fBQNq
	 Hn+9Huzck86hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDBEFC72D6
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177420629358.4359.17895095955469714468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fa4c2991eb0b734a0f262903f8d78a6c4d0171d370a3abf06c313465afd6169
Date: Sun, 22 Mar 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774206293
