Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7EA011187
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727848553; cv=none; b=GtwaPsivbVNcQxCAYIy/TluZUBJB5DqfO96N8aObfBBikPUAFrI9rBTZPXwKBFCI66AW4sXtTHTM8jBYGkvm/RGbzl82RTKR/oh46di3J8+sWNTZkIaiPu2o4ySsbNhhgJpmDRLcN8UEhE5vA+nXsBdha2SAPtbfUP++culZKhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727848553; c=relaxed/simple;
	bh=vc4AOLHOjsy53f0si6tmmkMDZN/p1wIxRAZaZyxVdws=;
	h=To:Subject:From:Message-Id:Date; b=Lwl05Vmtx0nlkD2pwEt9cPxX/JWFRo4YslTloZhBpHuZP35EOAxuCHN+Ch/Q33zoLNvuIVARF1fS5DPsTKkWFiQHFNjpWQ5nb3TmY/iEWOya7HW66tcM4/G8sqF86MAnB73P0RFLu70ewLHk2lJSSUEL/cnBf3We8uixrMfKBGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i7Z4lvqP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i7Z4lvqP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2421C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727848553;
	bh=vc4AOLHOjsy53f0si6tmmkMDZN/p1wIxRAZaZyxVdws=;
	h=To:Subject:From:Date:From;
	b=i7Z4lvqPpGA8pe1lUWWFPCNlXKFA3wQb5pqHjNOI0VQnoakwFJUdrq/tt9Q8suGet
	 h8fuycFLLd6tTacg13Lp0iRiP2lYLvum0TaAos+bc19Ogb38kH0jXKUv9KLVxpRhjp
	 d62ad8O80NJDTtxQGubi2YgNstVpXetrpwHTgD4csaVXfnzDqRVUIA8P01qUhdI2bS
	 Op09oBPqFM83nmqIzv+ZVNgHIH3KCgMwDfGt8xNudXMT9YbLE62Jm2I5i2A+HylQOu
	 ARL4s09Kb1/BYl9dEZvaGiZZSiV392kT00mkGEKVbZZ6AV4uHuetEMCLBUhdBn4+oc
	 E1cZPvE9pyUgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2266CF3196
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172784855365.2142.12692772273606204839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1de4e1af2c10f08c73555dea64ed20e0ca98ad30be2c77d4780d3f4c636698ae
Date: Wed, 02 Oct 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727848553
