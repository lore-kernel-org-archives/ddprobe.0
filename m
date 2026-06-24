Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCB2037EFE3
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 20:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782332854; cv=none; b=l6rtdBSEx0ZecwOq/tM5Vbfry1uWlARDIwd3iweaNnyolfTxB8Px+KcPNmQqSj5P0/YpHrFQP4S722QTx+tMu+6XzYfWEjsoj0Y3OPK22D7uxWueaAmNQlfAtonpQoq9mQR6r+hSIfjoQJ2mXmNwh+rck+icMybDpaQQmqPCZEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782332854; c=relaxed/simple;
	bh=NutPHm96mMKzgnkveOtTsv+rmCwNeA3elWUwasQVdxU=;
	h=To:Subject:From:Message-Id:Date; b=Zq/u3kg3Q6KgGZPEiUS2muBjETiBLFMVvAZpG6LKMCglBozxuMf5Ezyq6lQ81izDEUzBSwJVsSJR6GRYVRut0Dj9gJ0shzvzDPwerhTtTaan001kyYTMJ905Qv+wJRBhvebfhQafQvM7h8Nw0+TtKAZJDggP1L17MAJI9bMM20Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjzTuCKZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjzTuCKZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 18E19C19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 20:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782332854;
	bh=NutPHm96mMKzgnkveOtTsv+rmCwNeA3elWUwasQVdxU=;
	h=To:Subject:From:Date:From;
	b=jjzTuCKZYI7ejrvfRF4jvqDTYemdcx8X2xW6vzd+IiiYb7VUgbJb/vm8k345AH4+r
	 a9lF3+/8cqaaOCos4K94QXO29TCjwbisxQDlSH/KZyCF2UOQ3QN5oUp6munJLeMpUB
	 wiXRVtT2uNqPd1nbUI+LsSKkl0cfcf1io9oIzIN41gQMjh/Xls+6Rs0AaMXXEf65ng
	 htFNhb4HozqvtUTq/rcyw81UiZbTL00apaSPMbASs51TzO7seZyq9YIZ3o9gU8AL5O
	 fm5SkIo5A9+nvP9Ty6ViUNJYonjagJZ0C1E9kqGsvICmYzyqIDR0vcda71RCLWDyjA
	 534V3SA+dlK2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E46F6CDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 20:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178233285380.13993.12086171368292622143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48681fbd46ba9980c397191d1a809d89ca9857a4046cc945f23e7a9ca6114392
Date: Wed, 24 Jun 2026 20:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782332853
