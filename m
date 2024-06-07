Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6776619924F
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 17:47:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717782443; cv=none; b=ABeKgCZUxrybWP534nLdso0cPjtccKXr72BHSYGOAoiLXsnRK1NHNrFGOuZxVo/IfHJx2G8uWn1Cij9nlTNWOWgE700XhR/kBrmlE+zKscs2HU4zQ6+joZqLdzAVN9LwQy93YnTTL2mc6UfMvBBh1II4+JA465P3nU0GV/wlObQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717782443; c=relaxed/simple;
	bh=iTDe1CyW36VzLJfIsWwrRVV0WJwrT9/x1Qj1gCkPFng=;
	h=To:Subject:From:Message-Id:Date; b=gTS3EmTCSG/vyaMNAExZBRwQPGk4jIltTDDuqtNPF9nN4uACh4lDTJMgLpFdgAVg93fUvm7tU59UC8N0RqXIhkAuJTSTZaYl6ZrYLZl0tza2K3Dzz7KE9kkB+NFU483ByBOL7rZEic4UqnxDrSyAag8ulcUYuin9Zj7UuXohnPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XeTDemoL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XeTDemoL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7605C4AF07
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 17:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717782442;
	bh=iTDe1CyW36VzLJfIsWwrRVV0WJwrT9/x1Qj1gCkPFng=;
	h=To:Subject:From:Date:From;
	b=XeTDemoLb+IHKIVGpC/onHU9rCZ8Wgs3b8QpKod2dU9DpRIHgPnyM0yNRRARHWAyl
	 a6Q5BCS2lf3nLPIt1sL6gIIHp3Whkqc8NxAzfxapPEakAAlNunoA99iywfnN4xCBwV
	 AMPL7Mi33DiPsDB4BPe8JCB6rNqVd1Ygl8FZlBUutX6kPFLrTEWdhOj8AP/UzOtq+3
	 0mjz2+DsNftgELOl4TQrBCUG9ar7Mw+k1nOr3KOAsXlfvnrM29/4trPluRKP09SWAo
	 5ZF5j8RutMlALYcPz+e+DoPScM9dny5WgeOmeakuEcYYekjtmR9fjGL/IPx1uL4Q1L
	 2Zc8GnhwvY4VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3C52C27C5F
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 17:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171778244279.8897.3815581451935016637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b777f15b3561663565e77ff29b42632fd78c2dc01ddba1a9dd3ed68c61c79a2
Date: Fri, 07 Jun 2024 17:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717782442
