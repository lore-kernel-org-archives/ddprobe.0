Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5838F3515C0
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785867034; cv=none; b=UU4+S1fXXib0Uv/j7+7WkL2FuvbVw/i1pZlpDK+7suVcWBxPq927OzBjQLQSqV68Sk8/c8JpzvapJR9h6XhWUTcYQGHg8zKIqKE4UAqcX+gnZ21JAHEuvRGcuA8fXtgdxaVshVxs9m3DYQ8uIwe2d8hkZDmDvivLuH4ZCQtbf2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785867034; c=relaxed/simple;
	bh=trqp/XMGptVHoE2ELXVqAiKG2F0Pfyg04mcEX/Pm0Lk=;
	h=To:Subject:From:Message-Id:Date; b=f0Pll4RdytvgEGkJlkdhzr4UVuZUzT9lEM5njdJMOnHLXbIX5nhN461Xiwc85g1aGEI4btZzu5sTAgdKbQALLb5kRqBOKqaOotW+G+PtLdWpfXKh5FUjZZdSCjWRqYhn8awkX/UU4K5UVezrG91A99quzSP99gI8uHyB9L+b3NE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=edYK+mkB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="edYK+mkB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA06CC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785867033;
	bh=trqp/XMGptVHoE2ELXVqAiKG2F0Pfyg04mcEX/Pm0Lk=;
	h=To:Subject:From:Date:From;
	b=edYK+mkB6LR4fygqidGkAZypQl6EP7fEQE0Sca/9vmIY4Pavx+IsurO3N3+NX86WX
	 GFr2/EXdvMO89nSgaC4Rf4iy6VSIX5HKCvw+DDnqnfxApBWILSk4WKRgg4mGOTHP57
	 NYjRHGP/HSrpb5e/AVc7wZWjYCXQxM5GOLvHVZoM+y0yL91X+DxBkoYCgyR1l9iFK1
	 dOAfq5Bh/Fek+VOGgx40RkHTkrcdd9MQqaeTTIdkpCE2q7vY5zsaBVNg3KwFJ581QV
	 PP6FeeEjlui44t42/gbOU+y0z119rv8lZxDv+pE2u/Oc7FaRASxWuOv4aTfNKRxySQ
	 s9U7CAW4Roj7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4AD2C55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178586703372.12357.3354777136394827982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bef0af139a336be01652b6eaf609e900a0165d0e3be70a474c30859ac61230e
Date: Tue, 04 Aug 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785867033
