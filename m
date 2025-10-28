Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142EB4A23
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761669594; cv=none; b=TyoShPthkcAyKtH6HZvLqOxTZnlbewGRY4CzWUPzrk7BX0BDmxa+HpTRV8sjdXZ8GZ3lF1Agm+gXUleVqmsoIqWWNfxWrJ+rZe8LpZ/XKyKwqGIzWY95/1j+eA/u53dqxO9mgRDnj4Rs8NHFx52wJ6YDFXPb3Iu4HxXWcJSg5fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761669594; c=relaxed/simple;
	bh=wtM/Sc6C8Bn5eKL+n3LxAHYZ3xnZj9OFFkRCgtORYNE=;
	h=To:Subject:From:Message-Id:Date; b=ir2EpXp0iqsZtiEKPpGUC+RVv4IoIGcnA1NdVUL65HNqhYw4zNbxUpxE7D6X2o3wgWArTUIywJKHSsKiej+9/kGR/3KK4oAopDJxLLFZIDYwaISP2aKpzdGWJTjRZEokCG02/hqQs9RfG1CsUBpfNqVssfNbGBO2oMVkzdvJANc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PgNLxZLG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PgNLxZLG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AB6C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761669593;
	bh=wtM/Sc6C8Bn5eKL+n3LxAHYZ3xnZj9OFFkRCgtORYNE=;
	h=To:Subject:From:Date:From;
	b=PgNLxZLGrdYha+XtheHdOrsxCvkbuhhdY4cwBwOdCZLaP9Kgjc2R7LLUhkJlcvciH
	 rwU8+G4qlP3LKY0Lgh7S+Y6Sam9/ZK1WL9EGDofoMeFo9R9OKsdtFu+9hG8kbo9zbb
	 XYFecPxiLGVfnNt/S5PXsbHoC4XGIjvaSY2WJUof5FngwIJ+l/Web4+pIwS/vV+zgU
	 9oD/tCyZzpSOk+ejd2zxMjjTLWfFHTmkrwJYCqhXvOIG8Ar+6bQgChJWgFzqvlza+L
	 A39GVPv3HI5Dq3Bo7zAQU9CMRV7SyYaMjtUB8t6lBC0ZFrignG3CDsO4W5ipN2Es+r
	 XxPn0A+V4v7aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922DDCCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176166959359.30702.4541928041875500641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b103e4de2af6aba32b25f6773fd26de5a348956232bae0270a0c0dcd22075867
Date: Tue, 28 Oct 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761669593
