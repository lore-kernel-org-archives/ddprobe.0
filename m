Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588D626AF5
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744162194; cv=none; b=vDM8Gq2jLK2mgoJWXhOWv43ervVtsty1sCqjIKF0QW53NEsJqY3cYgLyLbJoeoW2Pzf3kF4JJ2tUfHjFDP/FEdJ6Ac3RMA7oAqwe8euUPjjFzUGZ5HeqF+g+VmqJnvLACNsOP1PHq0bGBsBgfV4JqRlSQzbMLb2Hn1GQ8yOGt+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744162194; c=relaxed/simple;
	bh=tK5p7HR3bMxNYtSLmiy9mzEfsT2cJxx2trafiPr8Vn8=;
	h=To:Subject:From:Message-Id:Date; b=tsdVJf/q3XO5xLe57gz8S7OG/3O2ubLwDtEO5nEHRl3TFomJjAGJlUOzRWeZ3io1SOourDsdrrX+HRLMHjcUmiXMSRiw34KarRmsgrSjguqfYS2ItC935cK9LNAPz6QGa82f0fhrhAp2FYzV0mjznPWHUZeFg5QqbGS3CuqpTQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rpJpnstS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rpJpnstS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6218C4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744162193;
	bh=tK5p7HR3bMxNYtSLmiy9mzEfsT2cJxx2trafiPr8Vn8=;
	h=To:Subject:From:Date:From;
	b=rpJpnstSJBFso4tdCBpJc/iZ+1wPYfPbKVHpC3Tzo8MFl5imSOPIIFtkjpVf/jmYu
	 yDn8vTgSXgio1c2PFDTyXuhCZVYidVltQupDB2tE9qkapkoJ+PcSUraDL59wdqd3XA
	 7RoJpxU5NkU96oYw5Qs/7fdRw6G+F1bfAjg0WGIxep24X47bMkfpEAYrzGfkBRxest
	 cySlP9tvlBi9v8bv/iQLSFen+aAMXTOJmbY0Rqu/RBMRyWkI2g5rYVqUY1lEyFN+W+
	 DCzAe9TE3nHbeiiW+GD9XJZw8rv0YLu0G8yMnig2v5WxXK5oX0PYNbBzsSqGGVvELv
	 I5Ht/Ot6ykdkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC72C36010
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174416219367.4101.16692323309213623279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21f691324373645f785d0ce2a8e7abad072d86e26941f92be68bbe5ae11e671e
Date: Wed, 09 Apr 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744162193
