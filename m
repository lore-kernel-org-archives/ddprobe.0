Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B4D1A76C9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722361554; cv=none; b=pdW8p3iJukx5s0TWmzJuuA6rELJxj83Y4NlACrRg6a4ogUfyFCvWcdIHpw4i9ppARi26koC47BGcQJOLoIx1E+C9ambVDT5kTpQxWL0kGTo1GC0egpH0aZEoR1OWNNGGObBcH22sbHPJozs/wvQcBI154GFW5e0eT1Wv8vnB738=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722361554; c=relaxed/simple;
	bh=BA73MswEGfdCtPCLMcxsKvz8MXrt4XnF7vyU32ZeypQ=;
	h=To:Subject:From:Message-Id:Date; b=cXGV//mmaQ8oHeLZ2dGoKY/xUVqDLffW9UTHEit97kGNxp/6q/2l1ncatThYqXXbdFnGuRd3gdM4+HYFNCcnTuCSrTrZXYYzd+CJ2hvCTB0OMNpogMDzoP5A3VOU0+G24Pyw8WV+Znp6Kn+i3ORei8wXcFl5pAPPiJtR3eydjhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QWYFh0Rg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QWYFh0Rg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AD6C32782
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722361553;
	bh=BA73MswEGfdCtPCLMcxsKvz8MXrt4XnF7vyU32ZeypQ=;
	h=To:Subject:From:Date:From;
	b=QWYFh0RgM6lkcmO1jBtCFK969UYDTBRyglSOVtWjT72h/pdBf1zgVabMrVxQJx8wB
	 CR6NR+I6Q9ntKksUX5PMncBps1nFelFrS46yjAUtBvx8ggoBq/WwodIKXUW4vu2mkg
	 Fue3OEGl/j0NSktE0PngOOSSuHpu+MFgUyUq5Rorp70S7LmKIemyCz+oGfCGlwV8fd
	 czni5gkE7uJiWOPg3jhXn1dq5zC+R2iteDRoPxdgqo14BgaMclnaMvIc5hRyPTQnTb
	 oxuUx9OaAuIzx8OKu0kqwAaYFcytCEqeFr3/JaMxmiNMKtJrXuVgS9RihW0T+frpwK
	 LTnCfb7srq8vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93909C3DA70
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172236155359.20533.2813886564970367288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42414b09cd0f7a6b60c7aa0b5715331ca85fea67a310e403997773109109b9b5
Date: Tue, 30 Jul 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722361553
