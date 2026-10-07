Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 566373ED5BB
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791401434; cv=none; b=WbbNUmiNeoU2kaTJEiFgVqI+864LPGwYqsG6llDYL5hrWejN8hXT57nT16KQgHTpaf+dtiYNuN6iWYez3Qp6rBngIR2MZXaakIW5kAuBGDGc+cu24iFk6Rf71zgrue9cQlMpqpon60tyej4dFJMjrxCmuX1cf7mTf4WqM0b+aSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791401434; c=relaxed/simple;
	bh=7vxN4sN1ypi9eBtcnVgt+eUC+tXjLqZiIN4IeKpqkuw=;
	h=To:Subject:From:Message-Id:Date; b=uP4/WFHOqAOC3DKd8LVfJRKx/zKLj2QZkBObggJgrUuIk7LhISP9GEasJN0+0T+0iPsjnpWDhJVyc17jI3Gpurmg8PSFCXv25PBQ2B0+on9fH/q9SPBjiPWVSPpDRA/JXpoVLA2KWQD4W9RoGq8Pggi/Ekqzw3aLlHdqezmhOq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JiG2gSpo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JiG2gSpo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D72D7C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791401433;
	bh=7vxN4sN1ypi9eBtcnVgt+eUC+tXjLqZiIN4IeKpqkuw=;
	h=To:Subject:From:Date:From;
	b=JiG2gSpoAJja6RwHpEQlppPLL+W9/JnW/AJSt3HGUVj1XBZfvAqzo8sNaONNphcGw
	 8izgnjnLHd3aIRLqgoHmpzpPaucjBI0sOk5E293TLbVJcpD8/Phi5zcPqEwFA+g4BY
	 4/joKKKu5KFDKsgp1RA4wN31DDgxpNkq8xgi4SfDyxENC7/0RjTP+OjXuYuIDCdlOP
	 zg7Kg5QIWMEjfDfOk1S+z/up3hmsN+64fuDHOeSggKvg5FWcPwF/crt+PyUXCWFESm
	 ANrGEqn2p05z+qIPBL6JDuBot6IXTit7J30Oc7LelVVPAPociiqH1ohWQ5nXRieCQ0
	 M+/B3jjQPzA+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC91CA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179140143369.26852.9216714616473606012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18fb91f3ab12915c92a738f18b59c89c03e5827b3f2a17e759ffdd90939db4a7
Date: Wed, 07 Oct 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791401433
