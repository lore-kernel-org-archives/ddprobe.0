Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF081E8332
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 00:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775953054; cv=none; b=pWa5AH6xHwFnoprzt9o3NgiFUa8sonbt1Dlapj2CIn8/CCHaBOmH9+hRdTWjV5qdYJcTTkW3Q6VfwHUajcpfrsCdVPo8k+Uh5BBNwi6OtEUEnsiCQply1hHzhkTuAhrRcCbmKK27f5ZqvFQIJln2s9yhDFSbRdJErY7OcPYRuWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775953054; c=relaxed/simple;
	bh=2j1eSVh6Idy8TjTeXYTNsHSrIV/fKDn3bruwJpo6acg=;
	h=To:Subject:From:Message-Id:Date; b=c5f0PRT1poICOLYgexiCQ76h/FRgDc54NeYxeNl4vDRYhxFoN9Ua1AeeoCU0qEQO0gharKqv1pPK/Egy9JGHc3oAHwl9jvS7S9X9u/VJh9z7shzW3Y3Sse2MCm18NbbWP/gDxZ1t1rDeNV2ccaunRWdw/vNIuJSYfAVPvIP0fDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k/RNc55g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k/RNc55g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA9DAC116C6
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 00:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775953053;
	bh=2j1eSVh6Idy8TjTeXYTNsHSrIV/fKDn3bruwJpo6acg=;
	h=To:Subject:From:Date:From;
	b=k/RNc55gxWzWuYSe2OBzwZZBydRHjgNe2cM8GPDBDEFBA1sOkkRnZKd7yp/w4K01Y
	 woNNDC1Ba3v8DnrqkIwIXimntLN4mOuC0F0dddiQkMGIGXs3wB9KMAsKwAyhVTt/Li
	 IeQ7+2uYc+e7V2Qy1WKB1joQQUk//rdj8Z+etI3EW29rq8ZweNd/1TI60YRRvxn0iu
	 WBUzoqoL8Id7xrY2MeHZLXOy+zcvikuCxTaxopZ47VlpEnhAtC0qkh+KCvJx8zrslc
	 5A0drTsIcK7QZBF5mlByybrwdnrouWrd7rpbZlAFZYU2iAPftNCZWxBN7/94phxuHI
	 /kJUjki/ohJgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9765F3ED6B
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 00:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177595305368.2325.11484492645551934000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab3b0b333828383011a917ffbb99aaf64765c938f4855e616162d1dd32646a10
Date: Sun, 12 Apr 2026 00:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775953053
