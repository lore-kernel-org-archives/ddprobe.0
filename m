Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D361EA84
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727638554; cv=none; b=I2EsAquTJDQarPOMDM4OU3+vruCw6wyWCE86Dyx4yabWEPXi81+y6stXnpVXTILN0ypCATo+QGpuRiFuNeh710fuNVId1+wpMEiVyi2ixe97nrvpukWVRn2gL926JhSDhq9eQHUBeW74pQE8cFcxZ0vixvwYMJQwQ640F0quvs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727638554; c=relaxed/simple;
	bh=Aqjmvwy4TOgukQkjtAS9jMPiUTnKpb7gQuQ6ilQ5wGc=;
	h=To:Subject:From:Message-Id:Date; b=mjXTriay6Fbr8vQHR+yZRliacQT49GaCNjuh188HceqHyMGYzSvdClsHv45NnI+OvyKKcMkvmLq2BGLraJZ4YoMyBtgDatGhSBnCrFQIm72d+EOwpSB/2wBLEAc0Kwg7uoyWO15VaMsH4lJGyqPeE2D72aHBAAjbGWsNmvMosgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r5Jri3du; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r5Jri3du"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A563FC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727638553;
	bh=Aqjmvwy4TOgukQkjtAS9jMPiUTnKpb7gQuQ6ilQ5wGc=;
	h=To:Subject:From:Date:From;
	b=r5Jri3duY3n1vPD7YhOq5CHM1QMaXYlH8exa/JkrdZge1ZJE5CbWb9OWzl8ftFoBV
	 h9LHBpMosGO9dz1ZC0475qVrnMbJkgGrkRhT0ViBKAQ8m00851xugCkYndHmAXJCQJ
	 XRbeelO9Rz8D0mFR5PDLqzSQTjGOLXsEPHxelMNOa7BTNgE6oo6ElwpsGd1w7qCia0
	 oVYDD4yBgeawK0z5lCSx4U3OS0vY5aSwH7AgJjgON+of52k10pfiIRY55Dp55Ain4/
	 knF9Cuv+t+KuH5sx7Gl746goVDtOgO5VHvUt8QGAY3kijV8+bXFWt+I6YIkxMNuDS+
	 Qb6Hj2zD1cAEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951DECF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172763855357.17140.14117573149170890819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f3f0f877477f1fbe508785f80de304e47386ff1f24bfa4903f9a4e6aabb8bc7
Date: Sun, 29 Sep 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727638553
