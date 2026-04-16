Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D04392C49
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 08:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776328654; cv=none; b=tEhtybBerl5xOjQaBfSYBFX3zpXmvsOHIFiIqXVoWMuATAYUJMKW2s0dMj4Ih2kdIVCKAD58aISLrGSsaQoaO8hURps9PkDmqa4/lDAN6/pusg4KSJtQYcUPp+M6B0LlJhUzaxwC9IwF+//f3Ysp0ega3v/bLEdLCmWaxIBx2S4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776328654; c=relaxed/simple;
	bh=27YxI9sYAOBfOIW0g5lqrBJAxfeYYVjI1JsXXJdnf1Q=;
	h=To:Subject:From:Message-Id:Date; b=jaZzk7GjH3C7YLf6iQGRjdhHxBe6ujUfFdIw0fogz13gKiF1JV365iq7crjIpELCBZEEq/XkJUa+bBfjbgW3g6WCVvRDWfIDRO/RbeHQKpEDGJRu8HjJFMzfiakOQLaWEfs95LHNt41QGRtnZ3LhkwwNijXc2JtOQZQaNaLItCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=muBc2oLq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="muBc2oLq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF905C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 08:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776328653;
	bh=27YxI9sYAOBfOIW0g5lqrBJAxfeYYVjI1JsXXJdnf1Q=;
	h=To:Subject:From:Date:From;
	b=muBc2oLqSFi4YYGeTrdsaVICnzumJxX202kU0RGNw6vMgUfO40EKfOMo+RatPXp0O
	 rfMSejb1IOYpTC8ctiRAAlChO1Kzk441nft1kFi+WnxAjvxv/gBZgFH7zSbVw2x/PY
	 m1fOCw1/5KHiVaKDxfZ48ybuTh9pjyIFKM014Da7h2qiI9HG6dGUvsYME9gOTYDwuf
	 tu1zU54W0y5mouj1/lUNS5zjIEi/0s3iD8SROjaDOSFgFXEasWv8rAUl+v73IxjqFb
	 HJ2Y0f8uOKEEDePQojRw/nd9CwW2CuyqoSOKfFTSosyOYlb88fft9ndAKv55xYkiwK
	 3dCqdScf7/LXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF58F8A144
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 08:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177632865369.30465.518950661159112086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a417f5de327c48e0c6f14a28d9acc39e8bf8e72b357373d66171c1ae8f36e60
Date: Thu, 16 Apr 2026 08:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776328653
