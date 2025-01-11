Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293351632DF
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736589954; cv=none; b=SL15jaQva0KfEVwqzdbozZu+HAAGU7lF+8wI3GTTMSAR9RAMaTlTpo0FedxKcxDDGST4HCYVoKGt8+dahJBkdXiEWvJUzFPcr2eKfbD2AtlP89F/ei09ur45qTqed6UFLu9hUzUIXD/OoxZkXEadjgJDWrAE1cPL4e2gHErmi94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736589954; c=relaxed/simple;
	bh=IPtuKr5a8czr1FP7sM+iepIiiHKBJX1hiQhkXN/cYN8=;
	h=To:Subject:From:Message-Id:Date; b=LTV+qVKK/76QIqRcDPH+RTE0lKikfZCBVUKI4o+OP/rooXYCT98GUDjvMNBxD4kWRzMgptHWeuf6KO9fuCMsgNzG5U/ni9fiirSkjeY0Jcmg6HFPaX9RMOFmEJ7D4gQecCcYk4z1RvDuuSLI9C7oFMp5kBic1OBx7UDVz/uu/EE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sVqIkmir; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sVqIkmir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75F5C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736589953;
	bh=IPtuKr5a8czr1FP7sM+iepIiiHKBJX1hiQhkXN/cYN8=;
	h=To:Subject:From:Date:From;
	b=sVqIkmir8YIHA7uu/snJVuicUoZsCFa1pfD3Tryb0CHjtEjM2oIeMmw8wEZ8m+DgF
	 /1W3PSnhodUxzzMeTALmWPG6/ktAauDwyPqkDXTfncrfsGpJWy3U9e3kq6hBBT8ujw
	 +wjOJLCq1A6QA9pFSMOiFbuPM0+5EgJ7d1NFBY+mhGnDc55M4tLGK7dWtPQaT4ikT0
	 HuwlABVxaD/79gpcm1irfy2ipPN/XBaafYSHzVZ1wXxoX9zmVRq0g5mVwNLiLCl1m2
	 IBPHgon0JS9LP6KD09F9yeTNAgYX1rtTSJPMRbGnugh+orZwLscNASO1KtPz9AEP2s
	 uLE7ET/Rodpyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EA1E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173658995357.11956.7192614735651208000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ad1b2ec2d95e08102b70895fbed5b182a3aadef6f6be5b6aadaf5e30f5762f8
Date: Sat, 11 Jan 2025 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736589953
