Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA8D51170E
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707898097; cv=none; b=fpn1BsfcUOhAcByOTYlTlkJ6RTyMZJRH2X0b1ZFmz1vVryXx3S2iOqS5kj6aO/rE/w1l9GQaxyGiQQ7y1iF6MgwI3wpbNsYvLb+tB5zNZzFDD1Gh5L11D237/mCN3d7Zl/Bj1h/4AGFUUR0RyoPhZAmH7XQZY3wtyo+VJ8m+Pw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707898097; c=relaxed/simple;
	bh=T5VBmNgNLZ0R3OYzjJSjDaQgAmO0Lamxwe9ddDpb0UM=;
	h=To:Subject:From:Message-Id:Date; b=B7nnr4ywoUX9/idJXLOctbkPEPop+ZeazHPXNsbbSrH2CtoOsHh3D0x0EroBIjnwfFRU4ueMwprQjHec9Rka595zT2xVQ1VsL9uvEA5k8VrxHrO7fSZ+g/T83Ao9VnzoK0gi9yc9uC8fkJQAsjBw2fkA7zye8DlRJp0Ez9HsUc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RHGLsQyk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RHGLsQyk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 799EAC433C7
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707898096;
	bh=T5VBmNgNLZ0R3OYzjJSjDaQgAmO0Lamxwe9ddDpb0UM=;
	h=To:Subject:From:Date:From;
	b=RHGLsQykITl4efwEABZ656NgNvK3qah9WPYkzQo34g+MkQGVLx37MUS9DxSDnREma
	 pvq1Rqhl8stiYlwXsm3h8J4gpKVcwsRoyClrRkcxNGSFxuDkLA3JSyYdcavnL7knaR
	 rBxOt7fgn9oMUwSntaPx2xguV9FXOYkfOKPCg7q8rMeeGuX0O4W8yWN1wijCAHFoIS
	 DKMUCVLYLNiIqoi8+gjpEg9jz0Uzl0DbthYNgzTHzKK+xp9nTPRXK422Q8ZsK8x/vP
	 2yJVkg/3r/nhU8Mr9zPu1b2ufiG6JH0J3aEWuxheuuhydSYQcuOnvyNGU9P7ATLeE6
	 JLhdhCYLsaq3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 600ACC48BC4
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 08:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170789809637.13247.3343947570150464322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8b866a4e0f182bfa2f8ee538796fd142c88da9cd3e38e4be01ebc70c06fb1e9
Date: Wed, 14 Feb 2024 08:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707898096
