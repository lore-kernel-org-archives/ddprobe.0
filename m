Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D0A2E3708
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753742994; cv=none; b=a3VjHNYJibS7NvDDetvDVRRmlEUj8Wwu4Om6g+lMTtHB3lmiCGT9bhKgoT8ZioVTydC4D8/dkFnZT+nDBqB0WAeXRMBZQQAIWWvYYJTBPEMNJAr2CDipvZAtLvBKOiU/z3qIzPG5cA7D2LRerRGfxx9FhkeKB8odC5DuD632ISU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753742994; c=relaxed/simple;
	bh=ccolIQdRymaIaL9+k9jtz6xutmNMYl2ZArq6YABg8Xg=;
	h=To:Subject:From:Message-Id:Date; b=UJADFirxu4+tEqXTB4TeX5MwRrNfjp6nDDkSL162CLScN+ySg/lC9SbqBoXtzj9muW7yFZ2FjRUy+Oood2yDFGHm/3cc8//egGtU6lK0eswJ+jB+ZYrvqxPFJ++QmE+i/eRAY2dPUlBfQL7x/CpVL7ctDW8YunMvuBT2X1BXyT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WY3Vl/lX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WY3Vl/lX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F630C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753742993;
	bh=ccolIQdRymaIaL9+k9jtz6xutmNMYl2ZArq6YABg8Xg=;
	h=To:Subject:From:Date:From;
	b=WY3Vl/lXJlTcqCn9nOHGXnMqlGNXx7MSRQq4ctRG9Mbf/zcj6J45aLN4ikbkih0s3
	 tJG+IhxPPpZs0dXVvFpHmt9fRHKxIexSMIot94HpykXjRea4EbMotKXsn1G2aQoRXK
	 TFK7bch6x9214do0PnLw/f9Z+UOj+ADps+fp+UUB1h2Y7pEai8JhwYfhyT6GZmAFKM
	 j3n6ph0yE8bUxMViTH0hp+L/gMi03QdiAvbRIO7y5fknyEbcMF8+E9uWNjMmEZH8eO
	 zLHHT6VJpReKj+nHi6IkGs/t8PoKjGIesu1hsRDt2B0fceF4VPIADUq8GH5YuGozvr
	 WAZb6AZovfirQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E710C83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175374299357.4878.8221601691903204066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df5e61c64c12f5fa9cac9d11da6463c91daebd5ed189fd6ca3773bbdd3d4a3fd
Date: Mon, 28 Jul 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753742993
