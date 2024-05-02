Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508A216F91F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 20:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714680143; cv=none; b=c/zcS4tTxbtrEuueywJAjmm9Ewx1vyHt0FwaEUlJPXeLCfIbvLwn22QZNSUJw6Hld7CMmUPP05tcuOjw5eqKS46QH4DTOGyw0mP8Zo1hKkZnLpP0ESKIo89eLz7fh8/DdJm6lOAm4w9vhdgtj1mgFikkE7LbEP4bMLj3H3XB1uI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714680143; c=relaxed/simple;
	bh=td+g0Mq10HjzZaimMgpwWv/m8M/ETlb60Bj0tD6UFVk=;
	h=To:Subject:From:Message-Id:Date; b=kBHCk4oSdodEPQKY/NK1CIVPHn0E1+NzYp1jFAhsYoL/e1tHfBrFIfZ/cfXAN7fpABwNShz/KcfOtwMrZq738Qw8KDf0a+Y2zYcAcOrXewAomCT+41MWI0IRjlzKa4r+QMYPcCqOuIzMXa2054GSd+88bux1V3Ww2kR9gVwGTnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GqApimCu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GqApimCu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D53D5C113CC
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 20:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714680142;
	bh=td+g0Mq10HjzZaimMgpwWv/m8M/ETlb60Bj0tD6UFVk=;
	h=To:Subject:From:Date:From;
	b=GqApimCulY8kKOl3khJcgqprzjqjpzbKvCREySFpaABAGA5G7KXcT1FUQtoIxA/Mj
	 /HVNDCixmNl/x7AqCfCriLLFvdfJvRDwSBU8rXXHY5u+hpVumVWe3vuDk2FPGM+hQT
	 fm+cAcxV+ZVeYWTtMc8H4gs/OslEG8tRYDNi1TNqL59kqf6fJPC0VnaLcGWDI/+1L6
	 g9LvynTkOKXEYkd7JK8AjFXNTat0PQXyqhE27y4v0RcEUriUbS8baXwxW9clfb/Ezo
	 jLVHUryUht060y42STNT8I162qxZFxCIRx2eZ3NkkbVtWUfexsfiUqyTQD75MqJ8at
	 MvHq6TPs5LG7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4800C04FFE
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 20:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171468014279.8649.4814170118707243795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 640bc4d223f908c30094382dafd6546399b4a65eed96f4f0d5b7fd070e9f1b7c
Date: Thu, 02 May 2024 20:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714680142
