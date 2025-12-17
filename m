Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2670321B185
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765948434; cv=none; b=C2NkSfc7anmDl3rbcDNkR9qkaRIDaThE8lxtcRAHyoBpx8k/m82z5bbF9rhxf3/sSCFos1KNlBOWrVcEYlWhWGskmcHLQljPZBZgtY8W4VrSr37iYpqtYutuPe4EZC36ofPy5ajAQPaCA2uk1c/pzs9T0sgUwZfWjpu+FYIMXTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765948434; c=relaxed/simple;
	bh=moKCcVqp2J6kFqCs5CVAOJcTcbd2SzpGGQwrFQ/c/t0=;
	h=To:Subject:From:Message-Id:Date; b=NgxFvjLAXYBio7GEK9EGWsjPuF3MwSp2EmzdCgU4wZ1FcitFFr/NVXLYRaGOKd7P0LjfsbFz8E+GqRl28hhE/CFtidJUDsgGuD8JBdfvXhaMU7VDFrM78ovrJQb9lMukFEgIUxT6zk2szpt0q9QWozgForEnCOVnwo8k8OhdoF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rRMLrFbX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rRMLrFbX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE60FC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765948433;
	bh=moKCcVqp2J6kFqCs5CVAOJcTcbd2SzpGGQwrFQ/c/t0=;
	h=To:Subject:From:Date:From;
	b=rRMLrFbXz5FS2rBSlWN8zdnp+e1HpdJD0wnyag7G6XGRq6XLMx1oMauvlkStagzkl
	 K1q/XLEfBHIKr4laEg0BUMB8idrWA2oD3gQ0RuJthkQ2LVFQ3NQ476B6CzF7ZPXOBU
	 eoUQtrbfOw0RywnBshrj8yjaDGl8ynwHrYUOeoA9sm6kZuP3tMRemjCNFVcMhwDcYY
	 EHZN7nUItwwrvb6wq47pQH+OHm0JEiGMbvY3GZTNbOtfzut7rGp0bDA8aeLfz5EAsa
	 EggR26JdaBEUB9bqjDQd3Yhz9QiELdLwSHQ7dzkjIsQ8v+fjsmAR0BZrt5pd7n3Awu
	 6EknY0rHmqwhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CD94D64072
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176594843363.15978.5557046660542588135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff89b65f613e2bd95ba9f78cc3590791242ab703af407aa2cad7e3b5c3ce6dcf
Date: Wed, 17 Dec 2025 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765948433
