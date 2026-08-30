Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490763AFB14
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788110434; cv=none; b=cBTMhse4yknsRfwk84CD+toPaKPPWdiquFPZiqHy+HJZEw5hIafsOf3UiXzlF25oibOvwflMQgCnnj3F49EiLO84aqS/lw8NeQTDBHZ/JMNGbR4/m/SL2JWAgkP0qXYQTLGez3F57LqyRXCSTuAGLgZxdvZM/G8o+rHaY/lzuHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788110434; c=relaxed/simple;
	bh=Q55kER+qeElnvvtERyW6nFl3QVJ9iMUzNKLX9UqzNqo=;
	h=To:Subject:From:Message-Id:Date; b=k9u0mJYsrBE8qmnUTcnPnPNTKmzFA7KXQMtWyeS7RcHxe4ncJbi7PRfWKrdybgxAGC2RERQ3JSfHCyvxWNz9Jux4W8PfoK/ptod7kxhbF8S9AmHQZh+nrY2IlRUWHjVsa3f/+cl22rRmOcqYHVYLSnRCBrzF29/jPpTqXUEcDV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aBiyDugn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aBiyDugn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE93DC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788110433;
	bh=Q55kER+qeElnvvtERyW6nFl3QVJ9iMUzNKLX9UqzNqo=;
	h=To:Subject:From:Date:From;
	b=aBiyDugn30rW1Ik8Z0ByCs0Pc104SX35qOusRbGHcpTcatK78L7Y2goOWoNCvoZ75
	 l8/hyC6loh0qp/v+AGPXFQ2At1Ho95IXthkY3YbE3M3f3eucvxkJzRlsHaWy7N7RVL
	 KF9rZVNdP+mpHuR0VYqU7lDtleEN+1zzWTMozC+WNbB45luh0OJ4r1icbh/4hetPeT
	 NXigHZl9s6PYcZcfoxCnPAMPfekmup4LCZpmw5NuLau3D6foG9uYLshGHPmMx9dfHA
	 B5xZziOZy2ophS5BZ4FUW7m8rqsAjTc71WT+kQQfXcR0W8nMnYrwWTNPhHTxzLGhUJ
	 qZIGTBtCDsxFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB845C61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178811043369.28568.8479883337712443540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 646c95e221c864d3ce520f20415b21330e348b136da298d9ed22ecfb08c4978b
Date: Sun, 30 Aug 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788110433
