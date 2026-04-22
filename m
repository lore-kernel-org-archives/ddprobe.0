Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FEB31985D
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 06:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776840454; cv=none; b=U2XRTbKSBI3N92e3KiB6/Lc7tXcKU7VMNCr66pWey4d0a5drnyNp44jQzRY9HrBjOKOZcHU6JqeY/RUCkeHArHl3ESCyMPtIzmzb0ofhLEo+wXFaJ+XQlOAXyNuhRc+bh1W3XU/jOESOV0aHw88Y4p7KT3ZeLNe6+XjZ+tZvq9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776840454; c=relaxed/simple;
	bh=QH2PBJ6Nr+NsDWTPVwZ6vxNZVetn0nlPKLJoEeLGRKE=;
	h=To:Subject:From:Message-Id:Date; b=rZMXRs2rMcGvxh4l88mgBpdrFAVIPf9z/ckbBbqrQR/UqavdUr1lQZPTy09Cv/3nqTVqhoqVTRvnufKfxGGt4tqRzhfPsPKY1XpuiRhmY22yUvwzqguv198+yKVoh+ywNlaabVwXUA1QlPcHFGt4ra7ByJ0xR8AqVaMbmrR/68o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZasprUd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZasprUd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC9C7C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 06:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776840453;
	bh=QH2PBJ6Nr+NsDWTPVwZ6vxNZVetn0nlPKLJoEeLGRKE=;
	h=To:Subject:From:Date:From;
	b=pZasprUduUdQQnobgJbVJzKzZrRRGtwoYH3nXEQimcyZC2zLAyzZBR1tLOjsvoBeu
	 hl3ZLYQcVjpkl+j3wgNGLmqnCwBkpIh6fErVf6ZiqbbWPpbuzW9hE6YuCB1NFj1jTp
	 8osSbbWPAYAbfNG63sNV5jmTfyzxTXpxwNFcFqbhELN6GgopMEJnd4nbN9IbAiD/gQ
	 eMikVKEGDxxPKO7OIFQLzI+G8RhStmbXTj/JxCCLFT5xZsMZdygYSGwTZa7SjC4Wpx
	 URoJbiCyCW2/Va8o/SIujGXGlgbYuHklC+2nGTL+8rn9f775u3FAIrrXzR/Q+EoGSj
	 vC2L5++dUUaFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7E3F94CD3
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 06:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177684045368.10201.9580312319864788350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fa640ff5a45f0935d8f086156359804ca5457a5786704e6bb2367a6ade9f801
Date: Wed, 22 Apr 2026 06:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776840453
