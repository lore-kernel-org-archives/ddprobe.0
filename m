Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF20219ED
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 19:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715455943; cv=none; b=QKJso+h+A9h3Kf0CM+2buLtmJqWzWSG0jOu1qajBZUSBIkzR4O5GU2ojah2t4e+e6x1povPXK2zdWGHbzhJ2jqvq3fc6DcCU7KMrCudliEK/tusbCaiMMAvXjSz3GAz9WVqp9Or28hJErZsm27Mm0udKZTC8sI+TrsBE45Q3CTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715455943; c=relaxed/simple;
	bh=w3LxwuvvhgblMZ9PZDRCfJpt/7Jd5tcrJJYuI9l4+q0=;
	h=To:Subject:From:Message-Id:Date; b=o+iKt7CEcopu75ZgG+E9SDd8tnDdTaPthCdIz8SzlD+Shf+aXeajO4ew1w5MPa/xYTNx2ptyi2cUvhdDa3lO0SL0cjO3QNrkmRZdW0MaUxf1CKBMcw8mpqpBOO7mZU8+uuGKTgHjUHlRq0h/0DYpiv7D1bOc9qTqClTy6RM19k8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lagVPWB3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lagVPWB3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AFCC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 19:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715455942;
	bh=w3LxwuvvhgblMZ9PZDRCfJpt/7Jd5tcrJJYuI9l4+q0=;
	h=To:Subject:From:Date:From;
	b=lagVPWB32AwovEFyRIOhNq6f/aUbdcOE3ITdTsu5wjnO8fbcdLrAGAcHZ+hx2Xww8
	 xP8nTXIC6FrOKz49Np5ppLgHO0SqXpyIr3oVuhmVHIgYpFwSjldI9bzyWYl6tiEfbe
	 gW4QTCrGA4dKqtYXPPQ/ToRjbnudstjsQhNFPqPvMmC/Ue72Hz5hREbnUTLA4js8iJ
	 63k/HGY+Y9KctjSAtdqm8Mg504X3cho3/EdERIUe0m5EXle/QMkNjPCQWTIaqwx28E
	 6mrujk8glXgwTQXlLNnm2WkYsTmvpJXY20P6sw33XtwshQVlw2G6WFXkdDSA4jl/fE
	 ZtbLjcC3h07iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0F9FC04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 19:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171545594278.580.15610840248749200765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17e332f2fa493d319d92cebf03ea02947a01065d33915d930b69c131cc04ceb0
Date: Sat, 11 May 2024 19:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715455942
