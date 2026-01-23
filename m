Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C69E5376497
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 09:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769162034; cv=none; b=IuGpm6KGh5rJLgjg6oah+zR6TQvHDAOcs4Iq0M2DvoflodgvKXfPMrDAS7hxo8u4SYOa2tk1vHTzqlJu2v0rZSo4oh3mjMCL1gyNrn2V0s32Ys6N3w+1FM40mI9oTiXxIqrsjQovM2qXBL9sfV2BPm763ULJSYmouDQjzpKyqmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769162034; c=relaxed/simple;
	bh=v5MzZNLacv+o8pyKYt7lR6uBLL831jLqeJ0To/UOIOo=;
	h=To:Subject:From:Message-Id:Date; b=Zlk71zm9PVdIKNiEptwud8M/zV54OvZO8p5m3M6l5hptxEhvXwvEu0uzfZNFpK40HgJ+UFXzGpidJyKzY5XF5fL472hq1+LLEvQABLmQrp0VW2XehakWeliMOJ6GO335oyvGKUHwTECrlru9RyYtjosfph0CVMb9kw+yxEz2HPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CqlzhLrq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CqlzhLrq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19BFC19422
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769162033;
	bh=v5MzZNLacv+o8pyKYt7lR6uBLL831jLqeJ0To/UOIOo=;
	h=To:Subject:From:Date:From;
	b=CqlzhLrqPksTv9L7Efp7VvYlcQuXhpHp/3BXkp7jclGIAq5GL3ikSRvQ5quUpCLda
	 GnqqcPMF0KpfPse/9wFxJdNt9x9r0y6HBRB6YhOFkPcBhQMsmB9FRaruIWyySxvQXB
	 Jo5ElNKseFQXmFEJRxQ/3Y5dKvW6COnRzev7aboyRzWp1x7Ba2CqwzLyuSS7ApKM1D
	 O2dKTqwGw5y9VZTGGBaa3YTZW+xzGNLSqRWRR4y2j4Rio5vDjqipHI0sciK+nrOIpU
	 aymm7QVQjDPIpL8LWXNOWrDahn/pdpQjYKhsLHIX4X/powvnpm72Kx3dJsG9X6wC5t
	 K4QUz0DdEIydA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D21D72368
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176916203358.30925.12189816255177254711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c26101d3f30b8f7eb0fa8794d4203b98689c39db1829622f7940cbadbca04628
Date: Fri, 23 Jan 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769162033
