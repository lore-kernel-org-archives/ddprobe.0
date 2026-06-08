Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418893B38AF
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 09:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780910074; cv=none; b=HvaL/n+sh3xCg/DeMkmcEGqmVqhEkKBR4xx5j60EOm+kTRLz/uggOvw9JmGT+vBm23/UMIyiVWw1g0QFjuFep8RU0dDta2mwLbXzbJKGjvD9kePL+8D2FiEljgNOByajwTc/t2X5wIt2pvsu2FQgajPvb3R8uhOtgGAqYbmwhMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780910074; c=relaxed/simple;
	bh=7az5gzujNsf0rxtRbj1m6zZqhgI5ywwZi930xN84t7U=;
	h=To:Subject:From:Message-Id:Date; b=beM1D65prmJsl4F++YNU0F/Ue/hEmMVrFyN2hsNBlM9sqEMhH92a4fxDDwUN8vbRpOlr7LRigtb0pyKPOsRfnftBdz+9zpdA9JzIi2uOMVgxBE+8p+DKX/irg1LQJ/niRVJGaF6T+adOrivYzZ1L/JsDUvwBfP0OooSc0qkZTlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q5nMdu/I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q5nMdu/I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7729C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 09:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780910073;
	bh=7az5gzujNsf0rxtRbj1m6zZqhgI5ywwZi930xN84t7U=;
	h=To:Subject:From:Date:From;
	b=Q5nMdu/IH1QGJQqshK+/pLFjOPhFtWQ8IDYoAOAYFL2PnzW5bZgYm6IGe9ma/AEm4
	 QYUCZmW/9dXHCsqqndEt4aDoX7edg1blggHeGHHL3X/oq/ksLjLxN+zskAPSmWk2FQ
	 WTZlVvRHzPCwWK+9+a/FiorZanuU1A/IWcM3g8tIaxESMhPrjAD8kJqRewHTybtLe6
	 KeQz5pWd8mFcH2WbtQkRqo0JBBOPOoGTuPYYrqt6OP/ydGsIpYP/r8mQ7vWGfu55VP
	 rKAW0A9EfnxhElL8VrtwpBnOytjiPu+lBkcpM2XD+bw7/rMFSDoNBxt4VFXyU4ggBx
	 yNVZKTqc29S1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDA9CD8C92
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 09:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178091007369.10450.1102915592028210064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17ef947ab6ebc0a516cfece54731ddb01d62165748673a281600b8bb8a94d12f
Date: Mon, 08 Jun 2026 09:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780910073
