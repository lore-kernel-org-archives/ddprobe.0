Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74DE5628
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 01:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717983443; cv=none; b=iwmmXB04vDqK1ZCZAAPZrYzhcipPm2yaXg+S8Qzv5MHNCAxOPX0P6+4cP0UM6Wpj76e7NyHx3jmTRO+RwjadqaKMAO0VvNyPSubGxTXmvyRXsp2Z4D+iQ4VxYfcdmkHf1keiJ2ypaFXm3Gd8pHnpwCxwk0kZD8e/amPisJB2fRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717983443; c=relaxed/simple;
	bh=zOWHfSQhfbB6NTQSPtLmDoD+YWKEQVqW4/y4fc9XpKQ=;
	h=To:Subject:From:Message-Id:Date; b=VfNntAVCgS9++KishjrZhk+MeFtdn2oOCGsXErvT3w9/YWTiUIvQdk/iWmWapvLu4QV7fIuuU25ZHCravdV8N1GGfklX1PcDWzHPyynKzOarNcDl3C+bFx24mzK0uj0thwJrtaFnD7KJaA81OP3say68yOFB24Yn96PAgCy+lhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LDV104Es; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LDV104Es"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E46C6C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 01:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717983442;
	bh=zOWHfSQhfbB6NTQSPtLmDoD+YWKEQVqW4/y4fc9XpKQ=;
	h=To:Subject:From:Date:From;
	b=LDV104EsLQQEskgglJj7YxNilXwfPSaYb3mzxmLtCU0QkV7lacUIsgA/3RQXsX8ye
	 E/qbnr7MgIIxKnqcka3DULjFax5liGxmhIJM4+uK2mcO/LnLcwgje0wFyiywCtXcwL
	 cuJknmDUdQQ8uHoUrJmKvTEqt5VMN8haiwFlVIQHepf0MOXME3akaLSelSIphXSAIi
	 hh2PPotKGrv3bbjmve+7NChaD8WMxyT6sRD4S3QODK256ITaU7IvkDGEsRI6gjggse
	 dz1VPhTA6iYj27sPnwD+ITrq0t8HWArCyd2S9xrpjiFWKM7fQ0SbiP0/xR2GjuVIzt
	 2OyUIw8tKOEVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8FC6C27C53
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 01:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171798344277.2104.6970594583003356652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bac3462293e8258db3fdf99096856379ea31fa517008b5f22f9add56213b734
Date: Mon, 10 Jun 2024 01:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717983442
