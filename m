Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184EF383C7D
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 08:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777277254; cv=none; b=mU5d2eWuGAG5U9cNNpiTlkLnGUpNAJDbV/NiTGz9Vm+iqsR/LUN3Wya85W5UCvJd1jECsiGYJE5EPoL3wbCXoZnqAVk8CIqcmNWnRfofpf23mtkihli/yNR3qlKVq6BmcFleInrrbXAFmtHHU8GZ5YYZFoO/suv1ShNTNemFMYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777277254; c=relaxed/simple;
	bh=FREmAZAtXHnTLNKrcejf8mFi3egNN1fkaTqNUD1U1ks=;
	h=To:Subject:From:Message-Id:Date; b=q4FX2gJqGLJ/r/vDHAdkEI8OPxziw6tGKXjXyxt6nh9VernMqOEo7O5lsSLM0AXaGIky/n2uUoEOOnD3T0I61frB0cVSTlpDlk62riyrTrWaHNsJNJMxcR8ZHUR+5CmTWvkHwMnNG1QrSU/Y0wP0K42wyRxgbwGcAyx+OfqOwls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Of0OHm4o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Of0OHm4o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8D5FC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 08:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777277253;
	bh=FREmAZAtXHnTLNKrcejf8mFi3egNN1fkaTqNUD1U1ks=;
	h=To:Subject:From:Date:From;
	b=Of0OHm4oTQqPeZVKcbHs69vldeeg27CW6zJQnV64zv26gHAhzvIehm5MSRRNin2mR
	 GAx8xuXXX+InSDGgXYkM/TOwl7HwlvzNUx68wFarBjDNCrOQ6/2DJa8QOaarknzkjw
	 FGcXlbcLwfFelAFjxc6qwkyJt9FGCc+zCiY0Tj4bFdyQ636u1oO88uBOyxY0OxdrlW
	 lmbb5d1uFBaqFXMaL7wqUukCpPI2gqXfR6riZ2wZwAIiRdtdU+M0MKJLz4bCJK3hYm
	 kzY1o6BrXJGi1fLArFGlgV8XsxEjEWJSH5CxeK0lN5P+ArqGW6V3zWJHpjmB/tE2Ip
	 OR6Bl+juk0fRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F57FF8861
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 08:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177727725368.1645.7967894012822800641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da654589ecc1045fddb7356e39c9a2053827a4889d6aafa6e07cad830bc1e3f9
Date: Mon, 27 Apr 2026 08:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777277253
