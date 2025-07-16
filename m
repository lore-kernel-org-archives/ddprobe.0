Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4800E1DE2AD
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752626995; cv=none; b=NOpZ9Ia7CvbH7uBNfl/mUr+aVOSvoRoIsZQXTsB/dz4Joduuiv1WD1dXRDUFCcVd4t+3QUh03fU8ey+sqccyvqjiuDGgf7VpTfT/4FPlaTuWTKnALqak4zk6X9hJTx31gT+eC9Rv9xRr0VzbI16BTG6gPdYx69VyEHIAFeCGOv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752626995; c=relaxed/simple;
	bh=DjYPLfFHcgqmg5/gGuL+VQsmlzqmdYVA700x+yh6/aU=;
	h=To:Subject:From:Message-Id:Date; b=P5DNgdf81XodrP1lG5gROnsiIJrHDUZGnMfrkN75gWsMq9lOxxwkJgQZppXP7vvjorI3tABU71qcYgklIE0zAE4oXjxRs1LubBIGDxti7Xanmt0tNld3nFpoIwLHH5uMTlfvFCPJM2EvJl9KNMDzU4vkcZ+hqVLcGVsHLtKMhrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+sllgb9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+sllgb9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB570C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752626993;
	bh=DjYPLfFHcgqmg5/gGuL+VQsmlzqmdYVA700x+yh6/aU=;
	h=To:Subject:From:Date:From;
	b=r+sllgb97T/ubHNqbjFMNuTzTWtbZ/nP1UzWGHu1L+ygNIvjksKW3AOs1wZT5gL/q
	 jbADJl6VfA4KYKRDkkP43Qh3ejKcSibLiBIm6JoG4pnsyZYpNlp6IjoX3tEcZX7gB7
	 LX72uewgdpOq7VTuQ/rMmx1qEeirNzFuyEb1zEzld65BHYkvmuY3iKs0VwPPeO7PS1
	 pRbo4i/RIWmgcP0Js+uVOJ32cDPuWt7FTkGaeYpmC+N/XMLRPQWy0AO/8PgBN+xJFx
	 LWU8itSmb3hUM2Ruw2ZrHmc0koSKgmBMIv39c8pgLL7Q3fP7NyscyBesMnu7XyiQrr
	 UmJbCHE8o+UFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94252C83F27
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175262699358.15603.8223678023668582178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f58cad8e1745aa2027056b8f01ddf47f986f1458f7d49991a2c7273ec56b413
Date: Wed, 16 Jul 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752626993
