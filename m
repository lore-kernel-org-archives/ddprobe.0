Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F101F95A
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737998154; cv=none; b=ViSElJaREJqNB5OLbrMI7dwiVWqR/2ClOonqi24HPlGOFZcOtcUoFi9Rp+KVwDCf6ZTai2IkKEeT0IbP17GTFL8GMsL6VjrAv+/n7n21mw7w+/x0tg7UeTpJ5aXoPg67VHW3QiWZfNhK3VF8MgVgW2FTAH8D5joKNxYtAnvNNE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737998154; c=relaxed/simple;
	bh=M70e5qHbR70WI6E8SOB7C3v478dac7wrs8EJ49RY52g=;
	h=To:Subject:From:Message-Id:Date; b=JyFwbA0yWxjhoASAvGdt9axP7vLCJxuaRu8jBgc2W5NRc34ptg9SPSUcKrb9Q5l2F/4kLEc44F2dUCZwR/dP7afckIqurqnePcPCm1hbAJMOc61a02QBTMd+m0wuh16wb3c9JuZwXoOzF+CZCsitTBUqoWZKL4kIn3rJG4j7Aqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O6R5mf55; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O6R5mf55"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1BAC4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737998153;
	bh=M70e5qHbR70WI6E8SOB7C3v478dac7wrs8EJ49RY52g=;
	h=To:Subject:From:Date:From;
	b=O6R5mf5546dKz3wK/u/EeKbZalup9Cb3Zc6Imzt4nSL2yfWZQMFV4Udb8vDSRe31E
	 CdKbi2bZ5daqwhWul8Rua2dctknA02mC7LKKOXMTIrbMNfmwneNPnGgsuTZweSglXX
	 9jkaUEMnqZR2cWtvkqTM1pGmTLz4edefdEVrVAdiuqXM8/xYZYha6eyONSU1lDs+FI
	 c5wBiUgsKU3/anlARt/YeRUBLNOnLaHeWYbH1PvZPh8nnBwrDfxvR6GId+ToEdgXIA
	 PDzXZ+/BSN+kI6nADP/A4u3in/JhwhAonguGAr0QaMbCn22kEX1xllsqfsMjlqNIDN
	 NbPhBMMB3W5VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC1AC02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173799815362.31634.4887111247406207785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d5cd4a5c28f49c7af3f1054f4b6a69bfda707faaaff5b98e83f2f62b06f975e
Date: Mon, 27 Jan 2025 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737998153
