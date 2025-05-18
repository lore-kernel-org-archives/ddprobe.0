Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE6018DB03
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747564195; cv=none; b=UZ1HMLJWjMKwA+HV86GOSQ5Q3qN72ldD1zQSz+99a/AJC+Oli9v510qquqGyEz4o9/t/QluZ59Un0/OinoWaUqTcLkGW3t8nTBfvMkzj2cCfE+gWtHYcFfUveJaJN/zVb72TYz6Li889WsHqpbnT6vsTNs1GaddotneS5DpXR2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747564195; c=relaxed/simple;
	bh=nD+CcyHhNXJ8rgJaSl2zY4AXSHWpIArHXKgtGcxUORE=;
	h=To:Subject:From:Message-Id:Date; b=I1FeYg64rYuFXmYt6WVEsPS9rzXPZhniPbtzeJAfcMz5mzICjXUfk+ncwzO2E0siT1xYL9eqCsHDr8qRecB8/4Nh6W8nsF+ZYZutw+sIg90we/HYDxuqvJ/peAKVR6MC/9rN33sndubUnqErG29Jq4DVXxWKBua54lwRPHCf0Nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BEkAZePj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BEkAZePj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57ECC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747564193;
	bh=nD+CcyHhNXJ8rgJaSl2zY4AXSHWpIArHXKgtGcxUORE=;
	h=To:Subject:From:Date:From;
	b=BEkAZePjZXVIu6h6VH2gCMQ3Z3gTlnAdtnclNUPQ+mdbvh9S4RwvA3lgcBtqYu+5D
	 TDb5Ttm+Cff+MJyJQqUgTJfwTg5GCh6P2GjUn05K31YIQCoxzqTcI2yn+uZNPH1BMa
	 0mXpzgdil4maIvC2V5v5seQDRzHlXhnR32F9UNOFH+iy04PlrF2T+3c4R7LVOKe9qf
	 Z32+s0HBdJ5vwig9Un5xxe29Jz57IRv0Y+xkmvA5zwTDXVGEPJ5O9fB6f5NTHvP7P0
	 WPlObt6Yfv+wcumDAMgNZu1U+bgNaiodGjMA8cwZOwFNMCM8XRm8y45TijlFzg/IQR
	 fTiImizsFQFMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DCFC3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174756419357.10028.11074883664208386925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a2e48a21564feacb7c41638f760245df9709538e24fa5b2f5c150dc3dd29689
Date: Sun, 18 May 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747564193
