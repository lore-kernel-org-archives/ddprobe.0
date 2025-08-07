Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B4F43164
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754548794; cv=none; b=IDgcX39s98K/Y7kGxw8uRD1HqH1NOlmTL5AucWz9dcI1xf93GLFf3aAp/0G2Zecf5GXRZ9ia5fALl2BONV9b5YFbGffgoYpwX4etW/89xmNVLdfIhpKIGuwnzbyRaN2CUUYRjs8Z47N2EV+4J4CpV53o3X3Owe9gPPEtndLKU9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754548794; c=relaxed/simple;
	bh=5/6Ttl9QfWSDUwhKqaiNj1Bbvnu22RhsSBFSs1h5Zns=;
	h=To:Subject:From:Message-Id:Date; b=qoEH/Uo1ASukUNsBYEZmjLlJgPseyH8lMxdH/7Au5PbPxIuxuA+ThIGRyaTMzFekmIfdueH6E/XztUV7dePWgPc4bDVZq9N0reXNVpLEz/OGBOZ03Ou322RtlL1cGMA625P6uSZ6fWSdWfI6PRgoEHP2USwI3HEr36elRelLL9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NCAF0SIZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NCAF0SIZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAA4C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754548793;
	bh=5/6Ttl9QfWSDUwhKqaiNj1Bbvnu22RhsSBFSs1h5Zns=;
	h=To:Subject:From:Date:From;
	b=NCAF0SIZ1z84uAGd5YW9rValhQHxuFQUW4nqAjJpgp6kvKtu8mc9qt0iqm02Qm08f
	 KXupnr2obCHj75/R0y7YZ9KDmT/f8qK4kSt6ZwuXF7quCq4lCvU0rDOarYWdZUh1wA
	 wPOH88bXAdYF01Uxld/tWYP7FaGmNZL6aGARtgplyA2gqcwxJ4B2Ag4c3A9+Ld1wGH
	 uj1S5+TLv/uznjAAFnpNnqeT2wHMEJaXJ7GoBH7bWyABmEAaVZR2kwTG3+es4uY1Ag
	 n38Zj84HKOLFCD8mjfUmse0kAdlpRUkwvlak7xjsg4xBD+6qiAtbnTOpQn3ypbe0vi
	 /i+h2la3bb+pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F101C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175454879357.15884.13134279977144238330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd26a8cedbc92878906e3e3100e8d8e3dfc7849bfacd893afadaa71c47c930d7
Date: Thu, 07 Aug 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754548793
