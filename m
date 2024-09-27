Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11617A920
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727473554; cv=none; b=B7Y9jbnAUQm1HNHOUeMVw7ojeIingRenPfomFy0n8M+rPffHCFltgt7cLCQ1tq0IqJvYrldkTXVUO0SEnASArs23dOr82k1IQ7CDO1yVPRfu/AJHYINVQQJBVWAQXHPI0nb4nR/qDTVAbwMAv/n2wgcSPedKeFZSD5o8d2Fg48Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727473554; c=relaxed/simple;
	bh=3VY061s4Qdp1+zXhqpV5rgbdwcEtQZNW0H258kkjJys=;
	h=To:Subject:From:Message-Id:Date; b=meBiOJEPp66GYX8JLUqtq5Y5qwH7w1Bzd5f9HVeP2KBuCnJvh3l0wmaeUvo6OeAiHvpyc0M5QTNM2CsazeltjQip0k4KsAI2xPEoagBQdqUPNLpZrAy52B36TIw9+6R7DGh+fpqWRBEKoCYS81Lkw8lYdfWsQu51KQH4392dsF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t54zMKQ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t54zMKQ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD88C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727473553;
	bh=3VY061s4Qdp1+zXhqpV5rgbdwcEtQZNW0H258kkjJys=;
	h=To:Subject:From:Date:From;
	b=t54zMKQ1b4p9/0cZRWSdbAZGNNF87WeTZ5OmEO/cy48cQ5SlammK4GS+XvRtIqq5s
	 F6rVfPx8gFHSupRQ9hfAl23Irw/idbv+RGY0IoVoRy8/o8uTrYc8gm99sQR4m9+QoF
	 aUAwWfYylUF2z0Dlu1mdQ+icwI2kj/YN8niy3Rpfv0LE1HRa54We8oOf+YYMUH9biG
	 YWkhlyE1Aykhucs7dfk/6zddHc4t+ZTklFgPW/pGJLcCe/MEL9wB8OC4y+8NY3e5IF
	 v9Nr0JPZFe3OXXGCTmw5GwFjRGxhK0qseAcmaXilY60IQ5Z9vrfc4JAHrKxV1uvBK5
	 b7r8SyI+oQ8Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BF4CF6482
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172747355360.1276.421263257340482382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0dd8b5f25a57f1638e7223cfebc0c219fc80173615847b91b1f1a3f62f844fc
Date: Fri, 27 Sep 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727473553
