Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4664A26AE5
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 22:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780872874; cv=none; b=BMFJggXJE6qZ1BOiJL5SNUJk2LummiJWuuj6DB3pkM2L1+ewkgtPeW4LhPvzEN7gDsNqX2te+uRwHgQ0DG9KBKQEZb7GAFgwbEGACCxcPU9HFWHp39KnV1QW5BpJuEleGoUoMxkX/kH2NSF3kxaCWu7fWb9w5JBzWc/zhSC5Knc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780872874; c=relaxed/simple;
	bh=AMRVnn6TTwwyfchkby95Cj2fh7XRlOyzPj5WEfMm8q4=;
	h=To:Subject:From:Message-Id:Date; b=hUvW8YUrLMRdrYWHCn1RpYqnz1Ikyk/oYY4OnmpeohXX5QYuUufIq+9tMdl6YIga57XsoLmALWazyHUPTGg6wI4/e95nDSFGGrNFh7upO234xcHf5DNhbCUnayV4bzSqV+20W5lZrVvkX8NS4+urt72tXKaAwTBc4efaYaDZahw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T05y/ge5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T05y/ge5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D988FC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 22:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780872873;
	bh=AMRVnn6TTwwyfchkby95Cj2fh7XRlOyzPj5WEfMm8q4=;
	h=To:Subject:From:Date:From;
	b=T05y/ge5+/qv98CUd0CVqgxLPLDNcXb4t7gCEpYHGZGPbTF5yVDli8N5pw22mpXna
	 HD9dJ5ctApyLfnrPcIEzlymOZrYzhFcf0MRynceaQBYun/G7dfiv3ubeLF5IkfwssJ
	 USay8sjo210sOqAmGGzhTATT0vSChASLgFJYNOwqGJh7f0uCpgbO3UPeYzKjLT7x0w
	 9Rt+qBIVdKTrlIu60ro4SQ3BSs4cjk4k+vOTkMQbA+nY1fYIfGhxjoXgwkvDpAyH0e
	 Y46iwxzQUHhWZBUa1svXbKXuX8GVIsCw3KXulfuBwBLov2QU0G8tngLIbZ9GHySODu
	 q/qZmlwfpCrng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDDFCCD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 22:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178087287368.23175.6915294110846474161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caef8d8555986cb25d1f2aef4a751ff98e7323229900eaafd266eb09e0e051c0
Date: Sun, 07 Jun 2026 22:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780872873
