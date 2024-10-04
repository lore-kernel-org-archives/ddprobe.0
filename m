Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D241AA7BB
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728073554; cv=none; b=XLk02AWlIXhDXewIW7aeir8T9oQ+BYBc1NqsHE7S76odYjHOP5ZwuofwPGGAszh5vQJKzdCHYIR5rsea1IhGJC08dJPeAKgbvqC8Z8xoi4m73/1V3UkAsnIGclao2ALrD10Ub20GPzG7qxtJzd3UP5fdBb04l3NDANNsGllpVUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728073554; c=relaxed/simple;
	bh=O01UP2VBgUWCQDY+8gA6IFVk0vmbViwJRPTw3qB4Cq8=;
	h=To:Subject:From:Message-Id:Date; b=aBR/93Ex8lHQLhXtH1Kuw7IsEov8C196JmaLEb/CeyQd3fEqHSb2XNsUkS2D012rVFxv2yL2Ti1alm3UUOno43q1fe19cxq6fIIDCz4uj5dAdOKIUkGLan/JjepPJaB23m34uCdG8vo+sWD0fzaecDtnoEEhX2x8ThpQetF9d9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GqKy7jk1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GqKy7jk1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB124C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728073553;
	bh=O01UP2VBgUWCQDY+8gA6IFVk0vmbViwJRPTw3qB4Cq8=;
	h=To:Subject:From:Date:From;
	b=GqKy7jk1GUCSwW8tC3t/1//0jy2APXI9Xxqjx4ygsUnhERfeDLiTMxIcs1BRlA3Nc
	 Kl4ReOsjVPQfq3YgYppjMK6lkEq70vsw2Op5VjNywTAIDYJYgwNV0hNRCoSNCJaOpZ
	 0MZIwmKEXHdxs8NBVGBsG6P8+jU++a0Jt0Hm495kk7qgT4sDktKDy5GhnN/7YLikt0
	 RNsATlOqu4030isB7sKi+H0aS5c+IdHahd7FBckI7fcnlnn7Y8umymVzzXAXnBv0yL
	 mR/4VHWMSwex7Hjlhi+Gs/GCOVbdmmcWGFUAwyBzvAwm1cJlCOF7vTvSBVjfwxY1b4
	 K8Kx6pO4RD7nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98652CF8857
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172807355358.8278.8260358385974661779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a0f66328b7777c8a7848ab0b78c6b651da40127a492f01591c198b750f74b60
Date: Fri, 04 Oct 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728073553
