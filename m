Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294042D9ED1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 21:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765230774; cv=none; b=Kh3/W38zklilTkVHRpdy+b2nb9v7S5LKT1+kOmnuL1LAazATA+gGkT126OuRr9IGDcVogGjp6ZHk9rYP667/HPg+9syDMJPiR3mcOuN5pCN+1pEtkcyMI/9Jgh+rqFM5gMLvdyhMNcSGfODSloQH/1tIVtu9zM9V/kAFdiEc1Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765230774; c=relaxed/simple;
	bh=juOspKaayrIsL2bAZOW2pFzV/oEajUAj587E2/89aBo=;
	h=To:Subject:From:Message-Id:Date; b=iRspds6+WTg5C85p4rb+JAPPnJbvS9MzK+RUP7eCokrUUheNuPstz6UbukMt9Oi9YnoF0X69BcbgT082Uc55yzQjWp1E9kcIilQ8iSzXbDXAISciseXF1RJ0WhCnCWtHtEAKLjINAJmx6RdLB4Z6Je4RwNvPexOcaimpHyr9eNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E8R4Jtao; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E8R4Jtao"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA23BC113D0
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 21:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765230773;
	bh=juOspKaayrIsL2bAZOW2pFzV/oEajUAj587E2/89aBo=;
	h=To:Subject:From:Date:From;
	b=E8R4Jtao/W7Zr7L/qURbFptKSTx2vMabwph/DHCW5OlXI8nIs6S4y2f1tGdZLD1ov
	 cibXW3x5j6d07VK54LzDX/QnPT3sg+cQ6qMGvQCwXYrWhttciHg1H6WdN0pkqIjjH3
	 hTgs4U4S+x3Wqe5OOhv8Zwz20sm8NZIPVhsSEWnSYuq3UmVPKB7pZ7G4LxX85A4c8v
	 XVKkUm9PoK8VOO3D6PBIkJFw1YoUgI5leG/DG1xYzgJTI3yQrNIJLTEkKXQie+oEOl
	 8Q0IqlO1XEQm1jus0b1nOKeRwV7Gmh21DZTrkmhc7MBccotK/1YT/ANXaSSn8s56EB
	 iqkEy1mdt/p9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E07D3B7F4
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 21:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176523077359.13311.868598766898666463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c90b51fda6d7e0f04dd2638458ee003c3c411b669d184599f00265438a8d848
Date: Mon, 08 Dec 2025 21:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765230773
