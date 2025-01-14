Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9A91D5145
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736879754; cv=none; b=Xni1xaI91HUy5rrIvA0xyHaX1L2h6cl0wdeLzSa6cWABY1rv50ebPiV6T05Pf19LAllQ/LBpr7sZjxi1C3b03F+iBqhogiCl4TU3NnVLPafOCJxNuNTeo2xSDvY2cuE5P01PjpMs6qRa49Q4JleFPgXBOf9ZvuSqBvOytOUkD90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736879754; c=relaxed/simple;
	bh=6NDnB4Xq3DZl686YLumU5mnejfL9wLG5SCG1B7Oh/KA=;
	h=To:Subject:From:Message-Id:Date; b=EvfnOEAVuLlOE0L2vr+xWXqAAbybM3zbh/86wuIGnx6O/nbq+mwEAu7KouOcxORZpoPseXdFqAAm4x0cKk2mUPQQynbLooSMItjLy376oPJP/fBIac9ColVJzghYJp+bUx33GDOmU89L56oAOVrJfHo6yGM2z54VSo1bQWLeswI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=USCguaO8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="USCguaO8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC850C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736879753;
	bh=6NDnB4Xq3DZl686YLumU5mnejfL9wLG5SCG1B7Oh/KA=;
	h=To:Subject:From:Date:From;
	b=USCguaO84nS/0QWJMmcyRZxod7h74TBYdU8xLOjx6oC2YCrhRkuKKHqqv7nlUBARE
	 35Eyz4gEZyg+R8xcfx6LKnJku6JcjSso52BPy/eyJFk1Oj+WmNm9ZwyojfiMLUUSLs
	 OxIYwgfq+aPaEZKZXqDKI6Fsntww9dW9WKfOO4AaBk3o6PtAYZX0ihB7D3dJI5UV4g
	 x/nz7rE/tG22Y2lmtaLwy0uQaRR/SEjQAWqJA/bh0clqltTNc45ttZE7/c1urnZlH0
	 dqEISwgneIzWxlrgaexAV8X/0RpcaiCsnDZCh9Ssufj8kJdlkO5tIUegFLL7IG60pu
	 iXCGLd8w2gpXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9801CE77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173687975361.4984.11229132030937341210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45d608d9beff239153712bc7ae1cb851eb45df9f1de765cc649f3606cbb2104c
Date: Tue, 14 Jan 2025 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736879753
