Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF6B61699
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 10:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713178763; cv=none; b=AIduaCSlnF/3ePGdTYHSAO3Rt7eRRZMsETJuVp3gfACXJLUNa0qXnY+jHxeGOs2IPxjwQHrxevzsc6X38DKsHu9ETOgWvCqcEsuu+UsxWFgScblieZJB+dXS31OP7D54zW5GJokz31f8FkyGliIrHU8GtpAxFlye7lY6U/yuUT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713178763; c=relaxed/simple;
	bh=D08QZRHNW/BdYL1yn4nfu2xfGNwrF89lPfhYkaJm95k=;
	h=To:Subject:From:Message-Id:Date; b=qIkPr3gear++43qiBEjteYtfLVIN1lREeJhw5cTtnKRkHL2kl6GeCmGNcotkmSwA3UzDTLv1R71JrREoXSDO0WX3Djic9xid5LWOwJ7QGZjjGOtgeKW4lTZFfJjN+pUrMeMwEOGjCilY8IRy4gN/LEbOOJu+7RPUWkf5mkxyMS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GsmbiLph; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GsmbiLph"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAAFAC113CC
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 10:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713178762;
	bh=D08QZRHNW/BdYL1yn4nfu2xfGNwrF89lPfhYkaJm95k=;
	h=To:Subject:From:Date:From;
	b=GsmbiLph5J4wl6xqaB8kBCIGQLp01jZXiTR7PeIJQCj3xpjxGgvUs+yBY/Q4Vb61Z
	 blCZOGChoZFiJq6WrHixsCSIN5LIYaI7iIGalF5jxTn7eP4NHEVnhimFEVILWTI67d
	 rWaskJb1e7AjS543vt29XKmSYI1nWV6eS2AimwPE2Ou5cQkr55v4DfhAI/HUORBCTH
	 nv4dzaojvEn4zcGuxKPdiYJ78mXWaVCnT1bv9AqiXpHwTQ+wQHlVFcpB26kWPGLTIt
	 T9CaDkOobpdbJSFMJNlaRZ7hIGoIsyutKcdbMq0ujHMgZ98RleQh41FKdReLYXtBeg
	 yDj6RL+ku1V1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C41EDC4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 10:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171317876279.4363.3541143862265627608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceae0acb99b89cb01921d94fa197dda0263045dc944cbef3c9bb6aa7e2f727eb
Date: Mon, 15 Apr 2024 10:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713178762
