Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0213B28D
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788775834; cv=none; b=PUUJ1h6d41mWEEup2yN8msV1J1Y74lsc3Nbqj6fcugaAZjqYklLnVGWrTiid8HC3Cs7xngNv8AtajsGU2GU47FvpgZDoT2v4GLT7WNg/WZQwPQHuWsNfuZKwBdn0HkdhOFsTEO4O0iMv4G2uH9kiASSnw6bnOSwjbIG91+4STh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788775834; c=relaxed/simple;
	bh=FCoiN8vqA8e4LvkhTMA/zlHBye/rszAU6N0E2KVRC0w=;
	h=To:Subject:From:Message-Id:Date; b=Jr97EPiGtkgnkHwQFrIQ6bEVlOp7rOqDNvJ/ZPXvwy/RLcJZJHbxr4qs2/3W9csRV9xoVTCreI12zUvMePh/nFC7NPX3UZ4d+HIvZsGwqq0C+P2rtoy+RYyP00QPZ9zgJCsGFX/MeR4fth2UCiQPklmuA3OaLrTzpiuuj4zQ7LI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uY/t6zIk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uY/t6zIk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF33FC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788775833;
	bh=FCoiN8vqA8e4LvkhTMA/zlHBye/rszAU6N0E2KVRC0w=;
	h=To:Subject:From:Date:From;
	b=uY/t6zIkKQVPZqYR4ZAHVRkdu3+F6mLWG0nWRIr5zrLFQYE4rfCfkxq0cnrYFEQFI
	 dprxt/U9HN8vAtTq6GgkhCeYhpmxU0X8H0UFSNSg7IAaIaVFSAvnXm+L8F81+nf+7t
	 4FNolkHChZ5c3VdQCLP2cjI7F7zPqXmf/aLOUyrcUY85zM5M4cLKQAGblW3NMHu+kV
	 tSMdY5hiLMmU2p+ne+T+ax9a4RlSHYO10QdZbK3BX5AAQo5hQjN41zmiUSl9fyECRH
	 irO+u0uqAsxVqsLeXjPYdDHeJSq3ndwWciicRwA38J0nXvqIJfT9QHEQZl/FCTOx9B
	 vx8UEW0Z6cqDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0D6C79F99
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178877583370.6973.7567559159179968838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d7bd382e6d2b762354abb53eefe26c00f24441a4b1953a7983cba9a3436669a
Date: Mon, 07 Sep 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788775833
